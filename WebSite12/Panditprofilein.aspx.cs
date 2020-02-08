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

public partial class Panditprofilein : System.Web.UI.Page
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

        var pandit = (from pa in ke.pandit
                      where pa.paid == 1
                      select pa.paprice).FirstOrDefault();
        if(package.pack1!=true)
        {
        package.pack1 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pandit;
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

        var pandit = (from pa in ke.pandit
                      where pa.paid == 2
                      select pa.paprice).FirstOrDefault();
        if(package.pack2!=true)
        {
        package.pack2 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pandit;
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

        var pandit = (from pa in ke.pandit
                      where pa.paid == 3
                      select pa.paprice).FirstOrDefault();
        if(package.pack3!=true)
        {
        package.pack3 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pandit;
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

        var pandit = (from pa in ke.pandit
                      where pa.paid == 4
                      select pa.paprice).FirstOrDefault();
        if(package.pack4!=true)
        {
        package.pack4 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pandit;
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

        var pandit = (from pa in ke.pandit
                      where pa.paid == 5
                      select pa.paprice).FirstOrDefault();
        if(package.pack5!=true)
        {
        package.pack5 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pandit;
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

        var pandit = (from pa in ke.pandit
                      where pa.paid == 6
                      select pa.paprice).FirstOrDefault();
        if(package.pack6!=true)
        {
        package.pack6 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += pandit;
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
    }
    protected void imgsatyanarayan_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PanditDetail.aspx?Id=1");
    }
    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PanditDetail.aspx?Id=2");
    }
    protected void imgnavgraha_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PanditDetail.aspx?Id=3");
    }
    protected void imgmarrage_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PanditDetail.aspx?Id=4");
    }
    protected void imggharpravesh_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PanditDetail.aspx?Id=5");
    }
    protected void imgfastival_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PanditDetail.aspx?Id=6");
    }
}
