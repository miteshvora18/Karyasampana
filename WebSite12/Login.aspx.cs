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
using karyasampannaModel;

public partial class Login : System.Web.UI.Page
{   
    karyasampannaEntities ke = new karyasampannaEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["type"] == "logout")
            {
                Session.Remove("username");
                lblError.Text = "You are logged out..";
            }
            if (Request.QueryString["error"] == "logout")
            {
                lblError.Text = "You are not authorised to view this page!!";
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        var user = (from u in ke.Users
                    join r in ke.roles
                    on u.roles.rid equals r.rid
                    where u.username == txtUsername.Text && u.upassword == txtPassword.Text
                    select r).FirstOrDefault();

        if (user != null)
        {
            Session["username"] = txtUsername.Text;
            if (user.rid == 1)
                Response.Redirect("Admin.aspx");
            if (user.rid == 2)
                Response.Redirect("Home.aspx");
        }
        else
            lblMsg.Text = "Invalid Username and/or Password";
    }
}
