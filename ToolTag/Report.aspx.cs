using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToolTag
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExport_Use_Click(object sender, EventArgs e)
        {
            Warning[] warnings;
            string[] streamIds;
            string mimeType = string.Empty;
            string encoding = string.Empty;
            string extension = string.Empty;
            string deviceInfo = null;

            DataTable dt = new DataTable();
            //String EmpJobTitle = snsEmpJobTitle.Text;
            dt = new ClassBrowseNew().VW_ToolTag_RPT_TagUse();
            //Get Query
            ReportDataSource rds = new ReportDataSource("DataSet1", dt);
            // Setup the report viewer object and get the array of bytes
            ReportViewer viewer = new ReportViewer();
            viewer.Reset();
            viewer.ProcessingMode = ProcessingMode.Local;
            viewer.LocalReport.DataSources.Add(rds);
            viewer.LocalReport.ReportPath = Server.MapPath("./Report/RPT_TagUse.rdl");
            viewer.LocalReport.EnableHyperlinks = false;
            viewer.LocalReport.EnableExternalImages = true;
            byte[] bytes = viewer.LocalReport.Render("EXCEL", deviceInfo, out mimeType, out encoding, out extension, out streamIds, out warnings);

            // Now that you have all the bytes representing the PDF report, buffer it and send it to the client.
            Response.Buffer = true;
            Response.Clear();
            Response.ContentType = mimeType;
            Response.AddHeader("content-disposition", "attachment; filename=Report_ToolTag_Use." + extension);
            Response.BinaryWrite(bytes); // create the file
            Response.Flush(); // send it to the client to download
        }

        protected void btnExport_Count_Click(object sender, EventArgs e)
        {
            Warning[] warnings;
            string[] streamIds;
            string mimeType = string.Empty;
            string encoding = string.Empty;
            string extension = string.Empty;
            string deviceInfo = null;

            DataTable dt = new DataTable();
            //String EmpJobTitle = snsEmpJobTitle.Text;
            dt = new ClassBrowseNew().VW_ToolTag_RPT_TagCount();
            //Get Query
            ReportDataSource rds = new ReportDataSource("DataSet1", dt);
            // Setup the report viewer object and get the array of bytes
            ReportViewer viewer = new ReportViewer();
            viewer.Reset();
            viewer.ProcessingMode = ProcessingMode.Local;
            viewer.LocalReport.DataSources.Add(rds);
            viewer.LocalReport.ReportPath = Server.MapPath("./Report/RPT_TagCount.rdl");
            viewer.LocalReport.EnableHyperlinks = false;
            viewer.LocalReport.EnableExternalImages = true;
            byte[] bytes = viewer.LocalReport.Render("EXCEL", deviceInfo, out mimeType, out encoding, out extension, out streamIds, out warnings);

            // Now that you have all the bytes representing the PDF report, buffer it and send it to the client.
            Response.Buffer = true;
            Response.Clear();
            Response.ContentType = mimeType;
            Response.AddHeader("content-disposition", "attachment; filename=Report_ToolTag_Count." + extension);
            Response.BinaryWrite(bytes); // create the file
            Response.Flush(); // send it to the client to download
        }
        protected void PrintLabel_Click(object sender, EventArgs e)
        {
            Warning[] warnings;
            string[] streamIds;
            string mimeType = string.Empty;
            string encoding = string.Empty;
            string extension = string.Empty;
            string deviceInfo = null;

            DataTable dt = new DataTable();
            String sTagCode = snssTagCode.Text;
            String eTagCode = snseTagCode.Text;
            String sAssetNo = snssAssetNo.Text;
            String eAssetNo = snseAssetNo.Text;
            String PO = snsPO.Text;

            dt = new ClassBrowseNew().SP_RPT_ToolTagLable(sTagCode, eTagCode, sAssetNo, eAssetNo, PO);
            ReportDataSource rds = new ReportDataSource("DataSet1", dt);
            ReportViewer viewer = new ReportViewer();
            viewer.Reset();
            viewer.ProcessingMode = ProcessingMode.Local;
            viewer.LocalReport.DataSources.Add(rds);
            viewer.LocalReport.ReportPath = Server.MapPath("./Report/ToolTag_Label.rdl");
            viewer.LocalReport.EnableHyperlinks = false;
            viewer.LocalReport.EnableExternalImages = true;
            //viewer.LocalReport.ExecuteReportInCurrentAppDomain(System.Reflection.Assembly.GetExecutingAssembly().Evidence);
            ReportParameter[] param = new ReportParameter[5];
            param[0] = new ReportParameter("sTagCode", sTagCode);
            param[1] = new ReportParameter("eTagCode", eTagCode);
            param[2] = new ReportParameter("sAssetNo", sAssetNo);
            param[3] = new ReportParameter("eAssetNo", eAssetNo);
            param[4] = new ReportParameter("PO", PO);
            viewer.LocalReport.SetParameters(param);
            byte[] bytes = viewer.LocalReport.Render("PDF", deviceInfo, out mimeType, out encoding, out extension, out streamIds, out warnings);

            // Now that you have all the bytes representing the PDF report, buffer it and send it to the client.
            Response.Buffer = true;
            Response.Clear();
            Response.ContentType = mimeType;
            Response.AddHeader("content-disposition", "attachment; filename=ToolTag_Label." + extension);
            Response.BinaryWrite(bytes); // create the file
            Response.Flush(); // send it to the client to download
        }
    }
}