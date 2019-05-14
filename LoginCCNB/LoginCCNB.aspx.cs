/*
    Programmeur : Briand Ininahazwe
    Date        : Mai 2019
    But         : Projet 02

    Solution    : LoginCCNB.sln
    Classe      : Login.aspx.cs
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginCCNB
{
    public partial class LoginCCNB : System.Web.UI.Page
    {
        #region Initialisation de la page

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["User"] != null)
                {
                    numEmployeTextBox.Text = Request.Cookies["User"]["numEmp"];
                    departementTextBox.Text = Request.Cookies["User"]["dept"];
                }
            }
        }

        #endregion

        #region Login

        protected void loginButton_Click(object sender, EventArgs e)
        {
            HttpCookie oCookie = new HttpCookie("User");

            oCookie.Values["numEmp"] = numEmployeTextBox.Text;
            oCookie.Values["dept"] = departementTextBox.Text;
            oCookie.Expires = DateTime.Now.AddMinutes(30);
            Response.SetCookie(oCookie);
        }

        #endregion
    }
}