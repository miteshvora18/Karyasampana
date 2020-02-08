using System;
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

public partial class _Default : System.Web.UI.Page 
{
    karyasampannaEntities ke = new karyasampannaEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Check valid login..if incorrect send to login page..
        string user = (string)Session["username"];

        var checkUser = (from u in ke.Users
                         where u.username == user && u.roles.rid == 2
                         select u).FirstOrDefault();
        if (checkUser == null)
            Response.Redirect("Login.aspx?error=logout");

        if (!IsPostBack)
        {

            if (checkUser != null)
            {
                Carts c = new Carts();
                c.UsersReference.EntityKey=new EntityKey("karyasampannaEntities.Users","uid",checkUser.uid);
                ke.AddToCarts(c);
                ke.SaveChanges();
            }
        }
    }
}
