using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using karyasampannaModel;

public partial class Payment : System.Web.UI.Page
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
            var selectCart = (from c in ke.Carts
                              select c.cid).Max();

            var package = (from c in ke.Carts
                           where c.cid == selectCart
                           select c).FirstOrDefault();

            txtAmount.Text = package.amount.ToString();
        }
    }
    /// <summary>
    /// Payment for selected list of packages..
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string user = (string)Session["username"];
        bool validcard = false;

        var checkUser = (from u in ke.Users
                         where u.username == user && u.roles.rid == 2
                         select u).FirstOrDefault();

        if (txtAmount.Text != "")
        {
            if (Convert.ToInt32(txtAmount.Text) != 0)
            {
                if (txtCreditCard.Text.Length == 16)
                {
                    if (txtCvv.Text.Length == 3)
                    {
                        var checkCards = (from cc in ke.creditcard
                                          select cc).ToList();

                        foreach (var data in checkCards)
                        {
                            if (data.cardnumber == txtCreditCard.Text && data.cvvcode == txtCvv.Text)
                            {
                                validcard = true;
                                var selectCart = (from c in ke.Carts
                                                  select c.cid).Max();

                                var package = (from c in ke.Carts
                                               where c.cid == selectCart
                                               select c).FirstOrDefault();

                                package.creditcardno = Convert.ToInt64(txtCreditCard.Text);
                                package.cvvcode = Convert.ToInt32(txtCvv.Text);
                                package.paid = true;
                                package.pdate = DateTime.Now;
                                ke.SaveChanges();

                                Carts c1 = new Carts();
                                c1.UsersReference.EntityKey = new System.Data.EntityKey("karyasampannaEntities.Users", "uid", checkUser.uid);
                                ke.AddToCarts(c1);
                                ke.SaveChanges();

                                lblMsg.Text = "Transaction Successful..";
                                txtAmount.Text = txtCreditCard.Text = txtCvv.Text = "";
                            }
                        }
                        if (validcard == false)
                        { 
                            lblMsg.Text = "Invalid combination of Credit Card Number and CVV code..Try Again";
                        }    

                    }
                    else
                        lblMsg.Text = "Invalid Cvv Code..";
                }
                else
                    lblMsg.Text = "Invalid credit card number..";
            }
            else
                lblMsg.Text = "There are no items available..Select items to pay..";
        }
        else
            lblMsg.Text = "Please choose items before payment..";
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }
}
