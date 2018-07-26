using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMini
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ProjectEntities pe = new ProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            // int idnum = int.Parse(txtidnum.Text);
            string fname = txtfname.Text;
            string lname = txtlname.Text;
            string cmpy = txtcmpy.Text;
            string visiting = txtvisiting.Text;
            string idtype = txtidtype.Text;
            string vehicle = txtvehicle.Text;
            string contact = txtcontact.Text;
            string purpose = txtpurpose.Text;
            string status = "Signed in";


            VisitorsInfo vi = new VisitorsInfo();

            // vi.IdNum = idnum;
            vi.FirstName = fname;
            vi.LastName = lname;
            vi.Company = cmpy;
            vi.Visiting = visiting;
            vi.VehicleNo = vehicle;
            vi.ContactNo = contact;
            vi.TypeOfID = idtype;
            vi.PurposeOfVisit = purpose;
            vi.Status_ = status;
            vi.CheckIn = DateTime.Now;
            vi.CheckOut = DateTime.MaxValue;


            pe.VisitorsInfoes.Add(vi);
            int res = pe.SaveChanges();
            int id = vi.IdNum;
            if (res > 0)
                Label1.Text = "The visitor’s details has been saved successfully with the visitor id :"+id;
            else
                Label1.Text = "Nothing";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform3.aspx");
        }
    }
}