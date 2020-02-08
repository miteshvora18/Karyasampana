using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using karyasampannaModel;

public partial class Cart : System.Web.UI.Page
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
            GetData();
        }

    }
    //Function to display selected packages in label..
    public void GetData()
    {
        lblData.Text = "Name of Package\t\tPrice";

        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();
        //Display selected packages in label...
        if (package.pack1 == true)
        {
            var pandit = (from pa in ke.pandit
                          where pa.paid == 1
                          select pa).FirstOrDefault();
          
            lblData.Text +="<div style='cart'>"+ pandit.paname + "\t\t" + pandit.paprice+"</div>";
        }

        if (package.pack2 == true)
        {
            var pandit = (from pa in ke.pandit
                          where pa.paid == 2
                          select pa).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pandit.paname + "\t\t" + pandit.paprice + "</div>";
        }

        if (package.pack3 == true)
        {
            var pandit = (from pa in ke.pandit
                          where pa.paid == 3
                          select pa).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pandit.paname + "\t\t" + pandit.paprice + "</div>";
        }

        if (package.pack4 == true)
        {
            var pandit = (from pa in ke.pandit
                          where pa.paid == 4
                          select pa).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pandit.paname + "\t\t" + pandit.paprice + "</div>";
        }

        if (package.pack5 == true)
        {
            var pandit = (from pa in ke.pandit
                          where pa.paid == 5
                          select pa).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pandit.paname + "\t\t" + pandit.paprice + "</div>";
        }

        if (package.pack6 == true)
        {
            var pandit = (from pa in ke.pandit
                          where pa.paid == 6
                          select pa).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pandit.paname + "\t\t" + pandit.paprice + "</div>";
        }

        if (package.pack7 == true)
        {
            var pooja = (from p in ke.poojasamagri
                          where p.pid == 1
                          select p).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pooja.pname + "\t\t" + pooja.price + "</div>";
        }

        if (package.pack8 == true)
        {
            var pooja = (from p in ke.poojasamagri
                         where p.pid == 2
                         select p).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pooja.pname + "\t\t" + pooja.price + "</div>";
        }

        if (package.pack9 == true)
        {
            var pooja = (from p in ke.poojasamagri
                         where p.pid == 3
                         select p).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pooja.pname + "\t\t" + pooja.price + "</div>";
        }

        if (package.pack10 == true)
        {
            var pooja = (from p in ke.poojasamagri
                         where p.pid == 4
                         select p).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pooja.pname + "\t\t" + pooja.price + "</div>";
        }

        if (package.pack11 == true)
        {
            var pooja = (from p in ke.poojasamagri
                         where p.pid == 5
                         select p).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pooja.pname + "\t\t" + pooja.price + "</div>";
        }

        if (package.pack12 == true)
        {
            var pooja = (from p in ke.poojasamagri
                         where p.pid == 6
                         select p).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + pooja.pname + "\t\t" + pooja.price + "</div>";
        }

        if (package.pack13 == true)
        {
            var food = (from f in ke.foodpackage
                         where f.fid == 1
                         select f).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + food.fname + "\t\t" + food.fprice + "</div>";
        }

        if (package.pack14 == true)
        {
            var food = (from f in ke.foodpackage
                        where f.fid == 2
                        select f).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + food.fname + "\t\t" + food.fprice + "</div>";
        }

        if (package.pack15 == true)
        {
            var food = (from f in ke.foodpackage
                        where f.fid == 3
                        select f).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + food.fname + "\t\t" + food.fprice + "</div>";
        }

        if (package.pack16 == true)
        {
            var food = (from f in ke.foodpackage
                        where f.fid == 4
                        select f).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + food.fname + "\t\t" + food.fprice + "</div>";
        }

        if (package.pack17 == true)
        {
            var food = (from f in ke.foodpackage
                        where f.fid == 5
                        select f).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + food.fname + "\t\t" + food.fprice + "</div>";
        }

        if (package.pack18 == true)
        {
            var food = (from f in ke.foodpackage
                        where f.fid == 6
                        select f).FirstOrDefault();
            lblData.Text += "<div style='cart'>" + food.fname + "\t\t" + food.fprice + "</div>";
        }
    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();

        if (package.pack1==true || package.pack2==true || package.pack3==true || package.pack4==true || package.pack5==true || package.pack6==true || package.pack7==true || package.pack8==true || package.pack9==true || package.pack10==true || package.pack11==true || package.pack12==true || package.pack13==true || package.pack14==true || package.pack15==true || package.pack16==true || package.pack17==true || package.pack18==true)
        {
            Response.Redirect("Payment.aspx");
        }
        else
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Atleast one of packages must be selected for payment..');", true);
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        var selectCart = (from c in ke.Carts
                          select c.cid).Max();

        var package = (from c in ke.Carts
                       where c.cid == selectCart
                       select c).FirstOrDefault();
        //Make all pack as false..
        package.pack1 = package.pack2 = package.pack3 = package.pack4 = package.pack5 = package.pack6 = package.pack7 = package.pack8 = package.pack9 = package.pack10 = package.pack11 = package.pack12 = package.pack13 = package.pack14 = package.pack15 = package.pack16 = package.pack17 = package.pack18 = false;
        lblData.Text = "";
        package.amount = 0;
        ke.SaveChanges();
        Response.Redirect("Home.aspx");
    }
}