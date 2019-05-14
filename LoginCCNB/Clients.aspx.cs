/*
    Programmeur : Briand Ininahazwe
    Date        : Mai 2019
    But         : Projet 02

    Solution    : LoginCCNB.sln
    Classe      : Clients.aspx.cs
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace LoginCCNB
{
    public partial class Clients : System.Web.UI.Page
    {
        #region Méthodes privées

        /// <summary>
        /// Remplir un gridview d'enregistrements provenant de la BD
        /// </summary>
        /// <param name="customersGridView">Le grid view à remplir</param>
        /// <param name="pays">Le critère de recherche</param>
        private void getCustomers(GridView customersGridView,string pays)
        {
            SqlConnection northWindSqlConnection = null;
            SqlDataReader customerSqlDataReader = null;

            try
            {
                string query = "SELECT CompanyName, ContactName, ContactTitle, Country, Phone FROM dbo.Customers WHERE Country = '" + pays + "'";
                northWindSqlConnection = new SqlConnection(Properties.Settings.Default.NorthwindConnectionString);
                SqlCommand customerSqlCommand = new SqlCommand();
                customerSqlCommand.Connection = northWindSqlConnection;
                customerSqlCommand.CommandText = query;

                northWindSqlConnection.Open();

                customerSqlDataReader = customerSqlCommand.ExecuteReader();
                DataTable customerDataTable = new DataTable();
                customerDataTable.Load(customerSqlDataReader);

                customersGridView.DataSource = customerDataTable;
                customersGridView.DataBind();
            }
            catch(Exception ex)
            {
                this.Response.Write(ex.ToString());
            }
            finally
            {
                if (customerSqlDataReader != null)
                {
                    if (!customerSqlDataReader.IsClosed)
                        customerSqlDataReader.Close();
                }

                if (northWindSqlConnection != null)
                {
                    if (northWindSqlConnection.State == ConnectionState.Open)
                        northWindSqlConnection.Close();
                }

            }
        }

        /// <summary>
        /// Vider un gridview
        /// </summary>
        /// <param name="aGridView">Le gridview à vider</param>
        private void clearGrid(GridView aGridView)
        {
            aGridView.DataSource = null;
            aGridView.DataBind();
        }

        #endregion

        #region Rechercher un client

        protected void rechercherButton_Click(object sender, EventArgs e)
        {
            getCustomers(clientsGridView, paysTextBox.Text);

            int numEnregistrements = clientsGridView.Rows.Count;

            if(numEnregistrements > 1)
            {
                numRowsLabel.Text = "Il y a " + numEnregistrements.ToString() + " clients dans le pays " + paysTextBox.Text;
            }
            else
            {
                if(numEnregistrements > 0)
                {
                    numRowsLabel.Text = "Il y a " + numEnregistrements.ToString() + " client dans le pays " + paysTextBox.Text;
                }
                else
                {
                    numRowsLabel.Text = " Il y a 0 client dans le pays " + paysTextBox.Text;
                }
            }
        }

        #endregion

        #region Annuler la rechercher

        protected void annulerButton_Click(object sender, EventArgs e)
        {
            paysTextBox.Text = string.Empty;
            numRowsLabel.Text = string.Empty;
            clearGrid(clientsGridView);
        }

        #endregion
    }
}