/*
    Programmeur : Briand Ininahazwe
    Date        : Mai 2019
    But         : Projet 02

    Solution    : LoginCCNB.sln
    Classe      : Employes.aspx.cs
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginCCNB
{
    public partial class Employes : System.Web.UI.Page
    {
        #region Afficher le nom et prénom d'un employé spécifique

        protected void employesGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = employesGridView.Rows[index];
            nomTextBox.Text = row.Cells[2].Text;
            prenomTextBox.Text = row.Cells[3].Text;
        }

        #endregion
    }
}