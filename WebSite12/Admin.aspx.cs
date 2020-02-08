using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using karyasampannaModel;

public partial class Admin : System.Web.UI.Page
{
    karyasampannaEntities ke = new karyasampannaEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        gvPaymentDirectory.DataSource = "";
        gvPaymentDirectory.DataBind();
        
        //Check valid login..if incorrect send to login page..
        string user = (string)Session["username"];

        var checkUser = (from u in ke.Users
                         where u.username == user && u.roles.rid == 1
                         select u).FirstOrDefault();
        if (checkUser == null)
            Response.Redirect("Login.aspx?error=logout");

        if (!IsPostBack)
        {
            //Binds data to grid view whose payments are made..
            var paymentList = (from c in ke.Carts
                               join u in ke.Users
                               on c.Users.uid equals u.uid
                               where c.paid == true
                               orderby c.pdate descending
                               select new { TransactionId=c.cid,Name=u.uName,Address=u.uAddress,State=u.uState,Contact=u.uContact, Amount=c.amount,Date=c.pdate }).ToList();
            
            if (paymentList.Count != 0)
            {
                gvPaymentDirectory.DataSource = paymentList;
                gvPaymentDirectory.DataBind();
            }
        }
    }
}
