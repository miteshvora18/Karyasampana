using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using karyasampannaModel;

public partial class PanditDetail : System.Web.UI.Page
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

        var id = Convert.ToInt32(Request.QueryString["Id"]);
        if (id != null)
        {
            //Put detail of pandit here according to selected pandit
            if (id == 1)
            {
                lblPanditHeader.Text = "Asaram Bapu";
                lblPanditDetail.Text = "Age:54<br>Experience:30yrs<br>Specialization:Satyanarayan Pooja<br>Fees:Rs. 5000<br>";
                imgPandit.ImageUrl = "~/Images/pandit satyanarayan.jpg";
            }

            if (id == 2)
            {
                lblPanditHeader.Text = "Ravishri Maharaj";
                lblPanditDetail.Text = "Age:35<br>Experience:10yrs<br>Specialization:Shanti Havan<br>Fees:Rs. 4000<br>";
                imgPandit.ImageUrl = "~/Images/pandit 3.jpg";
            }

            if (id == 3)
            {
                lblPanditHeader.Text = "Swami Ramdev";
                lblPanditDetail.Text = "Age:65<br>Experience:40yrs<br>Specialization:Navgraha Shanti<br>Fees:Rs. 7000<br>";
                imgPandit.ImageUrl = "~/Images/pandit navgraha.jpg";
            }

            if (id == 4)
            {
                lblPanditHeader.Text = "Nemi Suri Maharaj";
                lblPanditDetail.Text = "Age:44<br>Experience:20yrs<br>Specialization:Marriage Ceremony<br>Fees:Rs. 4000<br>";
                imgPandit.ImageUrl = "~/Images/pandit Marrage.jpg";
            }

            if (id == 5)
            {
                lblPanditHeader.Text = "Namra Maharaj";
                lblPanditDetail.Text = "Age:45<br>Experience:20yrs<br>Specialization:Graha Pravesh<br>Fees:Rs. 5000<br>";
                imgPandit.ImageUrl = "~/Images/pandit Ghar pravesh.jpg";
            }

            if (id == 6)
            {
                lblPanditHeader.Text = "Aditya Maharaj";
                lblPanditDetail.Text = "Age:40<br>Experience:10yrs<br>Specialization:Festival Pooja<br>Fees:Rs. 6000<br>";
                imgPandit.ImageUrl = "~/Images/pandit fest.jpg";
            }
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Panditprofilein.aspx");
    }
}
