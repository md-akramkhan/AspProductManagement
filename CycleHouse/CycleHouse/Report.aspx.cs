using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CycleHouse
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=CycleHouse;Integrated Security=True");
            ReportDocument rpt = new ReportDocument();
            con.Open();

            rpt.Load(Server.MapPath("~/crCycleHouse.rpt"));

            SqlCommand cmd = new SqlCommand("select * from tblProduct where CompanyName=@companyname", con);
            cmd.Parameters.AddWithValue("@companyname", ddlCompanyName.SelectedValue);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            dsCycleHouse ds = new dsCycleHouse();
            sda.Fill(ds, "tblProduct");

            rpt.SetDataSource(ds.Tables["tblProduct"]);

            crvCycleType.ReportSource = rpt;
            crvCycleType.DataBind();

            con.Close();
        }
    }
}