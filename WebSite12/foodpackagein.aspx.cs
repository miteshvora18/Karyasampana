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

public partial class foodpackagein : System.Web.UI.Page
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
            ddlPeople.Items.Clear();
            ddlPeople.Items.Add("--Select--");
            ddlPeople.Items.Add("100");
            ddlPeople.Items.Add("150");
            ddlPeople.Items.Add("200");
            ddlPeople.Items.Add("300");
            ddlPeople.Items.Add("400");
            ddlPeople.Items.Add("500");
            ddlPeople.Items.Add("600");
            ddlPeople.Items.Add("800");
            ddlPeople.Items.Add("1000");
            ddlPeople.Items.Add("1500");
            ddlPeople.Items.Add("2000");
            ddlPeople.Items.Add("3000");
            ddlPeople.Items.Add("5000");
        }
    }
    protected void btnaddtocart5_Click(object sender, EventArgs e)
    {
        if (ddlPeople.SelectedIndex != 0)
        {
            var selectCart = (from c in ke.Carts
                              select c.cid).Max();

            var package = (from c in ke.Carts
                           where c.cid == selectCart
                           select c).FirstOrDefault();

            var food = (from f in ke.foodpackage
                        where f.fid == 6
                        select f.fprice).FirstOrDefault();
            if (package.pack18 != true)
            {
                package.pack18 = true;
                if (package.amount == null)
                    package.amount = 0;
                ke.SaveChanges();
                package.amount += food * Convert.ToInt32(ddlPeople.Text);
                ke.SaveChanges();
                Response.Redirect("Cart.aspx");
            }
            else
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('No. of people is required');", true);
    }
    protected void btnaddtocart_Click(object sender, EventArgs e)
    {
         if (ddlPeople.SelectedIndex != 0)
        {
        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var food = (from f in ke.foodpackage
                     where f.fid == 1
                     select f.fprice).FirstOrDefault();
            if (package.pack13 != true)
            {
                package.pack13 = true;
                if (package.amount == null)
                    package.amount = 0;
                ke.SaveChanges();
                package.amount += food * Convert.ToInt32(ddlPeople.Text);
                ke.SaveChanges();
                Response.Redirect("Cart.aspx");
            }
            else
               ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
        }
        else
           ClientScript.RegisterStartupScript(GetType(), "alert", "alert('No. of people is required');", true);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         if (ddlPeople.SelectedIndex != 0)
        {
        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var food = (from f in ke.foodpackage
                    where f.fid == 2
                    select f.fprice).FirstOrDefault();
        if (package.pack14 != true)
        {
            package.pack14 = true;
            if (package.amount == null)
                package.amount = 0;
            ke.SaveChanges();
            package.amount += food * Convert.ToInt32(ddlPeople.Text);
            ke.SaveChanges();
            Response.Redirect("Cart.aspx");
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
        }
         else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('No. of people is required');", true);

    }
    protected void btnaddtocart3_Click(object sender, EventArgs e)
    {
         if (ddlPeople.SelectedIndex != 0)
         {
        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var food = (from f in ke.foodpackage
                    where f.fid == 4
                    select f.fprice).FirstOrDefault();
             if(package.pack15!=true)
             {
        package.pack15 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += food * Convert.ToInt32(ddlPeople.Text);
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
             }
             else
                 ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
         }
         else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('No. of people is required');", true);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         if (ddlPeople.SelectedIndex != 0)
        {
        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var food = (from f in ke.foodpackage
                    where f.fid == 3
                    select f.fprice).FirstOrDefault();
             if(package.pack16!=true)
             {
        package.pack16 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += food * Convert.ToInt32(ddlPeople.Text);
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
             }
             else
                 ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
         }
         else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('No. of people is required');", true);
    }
    protected void btnaddtocart4_Click(object sender, EventArgs e)
    {
         if (ddlPeople.SelectedIndex != 0)
        {
        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        var food = (from f in ke.foodpackage
                    where f.fid == 5
                    select f.fprice).FirstOrDefault();
             if(package.pack17!=true)
             {
        package.pack17 = true;
        if (package.amount == null)
            package.amount = 0;
        ke.SaveChanges();
        package.amount += food * Convert.ToInt32(ddlPeople.Text);
        ke.SaveChanges();
        Response.Redirect("Cart.aspx");
             }
             else
                 ClientScript.RegisterStartupScript(GetType(), "alert", "alert('This package is already added to cart..');", true);
        }
         else
             ClientScript.RegisterStartupScript(GetType(), "alert", "alert('No. of people is required');", true);
    }
}
