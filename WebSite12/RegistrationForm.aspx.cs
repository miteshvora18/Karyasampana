using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using karyasampannaModel;


public partial class Registration_Form : System.Web.UI.Page
{
    karyasampannaEntities ke = new karyasampannaEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtUsername.Text = "";
        txtPassword.Text = "";
        txtname.Text = "";
        txtaddress.Text = "";
        txtcountry.Text = "";
        txtstate.Text = "";
        txtcity.Text = "";
        txtcontact.Text = ""; 
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        var username = (from u in ke.Users
                        where u.username == txtUsername.Text
                        select u).FirstOrDefault();


        if (username == null)
        {
            if (txtcontact.Text.Length == 10)
            {
                Users u = new Users();
                u.uName = txtname.Text;
                u.username = txtUsername.Text;
                u.upassword = txtPassword.Text;
                u.uAddress = txtaddress.Text;
                u.uCity = txtcity.Text;
                u.uCountry = txtcountry.Text;
                u.uState = txtstate.Text;
                u.uContact = txtcontact.Text;
                u.rolesReference.EntityKey = new EntityKey("karyasampannaEntities.roles", "rid", 2);
                ke.AddToUsers(u);
                ke.SaveChanges();
               
        
                lblMsg.Text = "Success!!!Your account has been created";
        
                txtaddress.Text = txtcity.Text = txtcountry.Text = txtcontact.Text = txtname.Text = txtPassword.Text = txtstate.Text = txtUsername.Text = "";
        
            }
            else
                lblMsg.Text = "Contact Number should be 10 digit..";
        
        }
        else
            lblMsg.Text = "Username already exists.Try another one.";
    }
}
