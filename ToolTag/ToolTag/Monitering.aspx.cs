using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToolTag
{
    public partial class Monitering_Calibration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Export_Excel_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Test Click C#')", true);
            //String id = snsid.Text;
            //String cust = snscustsite.Text;
            //String month = snsmonth.Text;
            //String year = snsyear.Text;
            //String custname = snscustomer.Text;
            //DataTable dt = new DataTable();
            //dt = new ClassBrowseNew().GetExportCustomerReportv2(cust, id, month, year);
            //string customerJSON = Request.Form["CustomerJSON"];
            //DataTable dt = JsonConvert.DeserializeObject<DataTable>(customerJSON);
            //GridView GV = new GridView();
            //GV.AllowPaging = false;
            //GV.DataSource = dt;
            //GV.DataBind();
            //if (GV.Rows.Count > 0)
            //{
            //    Response.Clear();
            //    Response.Buffer = true;
            //    Response.AddHeader("content-disposition", "attachment;filename=xxxxx.xls");
            //    Response.Charset = "";
            //    Response.ContentType = "application/vnd.ms-excel";
            //    StringWriter sw = new StringWriter();
            //    HtmlTextWriter hw = new HtmlTextWriter(sw);

            //    for (int i = 0; i > GV.Rows.Count; i++)
            //    {
            //        GV.Rows[i].Attributes.Add("class", "textmode");
            //    }
            //    GV.RenderControl(hw);
            //    String style = @"<style> .textmode{mso-number-format:\@;}</style>";
            //    Response.Write(style);
            //    Response.Output.Write("<html><head><META http-equiv=Content-Type content=text/html; charset=utf-8></head><body><FONT face=Tahoma>" + sw.ToString() + "</FONT></Body></Html>");
            //    Response.Flush();
            //    Response.End();
            //}
        }
    }
}