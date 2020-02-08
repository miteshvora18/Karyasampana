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

public partial class Pooja_packagesin : System.Web.UI.Page
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
    }
    protected void btnsatyanarayan_Click(object sender, EventArgs e)
    {
        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var pooja = (from p in ke.poojasamagri
                      where p.pid == 1
                      select p.price).FirstOrDefault();
        if(package.pack7!=true)
        {
        package.pack7 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pooja;
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
        }
    protected void btnshanti_Click(object sender, EventArgs e)
    {

        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var pooja = (from p in ke.poojasamagri
                     where p.pid == 2
                     select p.price).FirstOrDefault();
        if(package.pack8!=true)
        {
        package.pack8 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pooja;
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
    }
    protected void btnnavgraha_Click(object sender, EventArgs e)
    {

        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var pooja = (from p in ke.poojasamagri
                     where p.pid == 3
                     select p.price).FirstOrDefault();
        if(package.pack9!=true)
        {
        package.pack9 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pooja;
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
    }
    protected void btnmarrage_Click(object sender, EventArgs e)
    {

        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var pooja = (from p in ke.poojasamagri
                     where p.pid == 4
                     select p.price).FirstOrDefault();
        if(package.pack10!=true)
        {
        package.pack10 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pooja;
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
    }
    protected void btngharparvesh_Click(object sender, EventArgs e)
    {

        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var pooja = (from p in ke.poojasamagri
                     where p.pid == 5
                     select p.price).FirstOrDefault();
        if(package.pack11!=true)
        {
        package.pack11 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pooja;
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
    }
    protected void btnfastival_Click(object sender, EventArgs e)
    {

        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var pooja = (from p in ke.poojasamagri
                     where p.pid == 6
                     select p.price).FirstOrDefault();

        if(package.pack12!=true)
        {
        package.pack12 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pooja;
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
    }
}
