using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMini
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ProjectEntities pe = new ProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var data = (from t in pe.VisitorsInfoes
                            where t.Status_=="Signed in"
                            select new { IDNUMBER = t.IdNum, FIRSTNAME = t.FirstName, LASTNAME = t.LastName, IDTYPE = t.TypeOfID }).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox1.Text);
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                Label1.Text = "Enter a Valid ID";
            }
            else
            {
                var data1 = (from t in pe.VisitorsInfoes
                             where t.IdNum == id
                             select new { IDNUMBER = t.IdNum, FIRSTNAME = t.FirstName, LASTNAME = t.LastName, IDTYPE = t.TypeOfID }).ToList();

                if (data1 == null)
                    Label1.Text = "No such ID";
                else
                {
                    GridView1.DataSource = data1;
                    GridView1.DataBind();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string name=TextBox1.Text;
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                Label1.Text = "Enter a Valid ID";
            }
            else
            {
                var data2 = (from t in pe.VisitorsInfoes
                             where t.FirstName ==name
                             select new { IDNUMBER = t.IdNum ,FIRSTNAME = t.FirstName, LASTNAME = t.LastName, IDTYPE = t.TypeOfID}).ToList();

                if (data2.Count() == 0)
                    Label1.Text = "No Such person has Signed in";
                else
                {
                    GridView1.DataSource = data2;
                    GridView1.DataBind();
                }
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
        }

        protected void b1_Click1(object sender, EventArgs e)
        {

            Button b = (Button)sender;
            GridViewRow r = (GridViewRow)b.NamingContainer;

            int id = int.Parse(r.Cells[1].Text);
            var olddata = (from t in pe.VisitorsInfoes
                           where t.IdNum == id
                           select t).SingleOrDefault();
            olddata.Status_ = "Signed Out";
            olddata.IdNum = id;
           // Button1.Text = "Signed Out";
           // Button1.Enabled=false;
            olddata.CheckOut = DateTime.Now;
            var res = pe.SaveChanges();
            if (res > 0)
                Response.Write("Person Checked out");
            // GridView1.DataSource = olddata;
            var data = (from t in pe.VisitorsInfoes
                        where t.Status_ == "Signed in"
                        select new { IDNUMBER = t.IdNum, FIRSTNAME = t.FirstName, LASTNAME = t.LastName, IDTYPE = t.TypeOfID }).ToList();
            GridView1.DataSource = data;
            GridView1.DataBind();
        }
    }
}