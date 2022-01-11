using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
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
    public partial class Monitoring : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Export_Transaction_Excel_Click(object sender, EventArgs e)
        {


            IWorkbook workbook;
            DataTable dt = new DataTable();
            String Emp_Num = snsTrans_EmpNum.Text;
            String Costcenter = snsTrans_Costcenter.Text;
            String BU = snsTrans_BU.Text;
            String ToolTag_Code = snsTrans_ToolTagCode.Text;
            String Type = snsTrans_Type.Text;
            String Start_Date = snsTrans_sDate.Text;
            String End_Date = snsTrans_eDate.Text;
            String site_ref = snssite_ref.Text;
            dt = new ClassBrowseNew().Export_VW_ToolTag_Transaction(Emp_Num, Costcenter
                 , BU, ToolTag_Code, Type, Start_Date, End_Date, site_ref);
            //SQL

            workbook = new XSSFWorkbook();//for xslx
            //workbook = new HSSFWorkbook();//for xls
            //Set File Type

            ISheet sheet1 = workbook.CreateSheet("Sheet 1");
                //Set Sheet
                IRow row1 = sheet1.CreateRow(0);
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    ICell cell = row1.CreateCell(j);
                    String columnName = dt.Columns[j].ToString();
                    cell.SetCellValue(columnName);
                }
                //make a header row
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    IRow row = sheet1.CreateRow(i + 1);
                    for (int j = 0; j < dt.Columns.Count; j++)
                    {
                        ICell cell = row.CreateCell(j);
                        String columnName = dt.Columns[j].ToString();
                        cell.SetCellValue(dt.Rows[i][columnName].ToString());
                    }
                }
                //loops through data

                using (var exportData = new MemoryStream())
                {
                    Response.Clear();
                    workbook.Write(exportData);
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", "Report_ToolTag_Transaction.xlsx"));
                    Response.BinaryWrite(exportData.ToArray());
                    //xlsx file format
                    //Response.ContentType = "application/vnd.ms-excel";
                    //Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", "export_excel.xls"));
                    //Response.BinaryWrite(exportData.GetBuffer());
                    ////xls file format
                    Response.End();
                }
        }
        


        //protected void Export_Chart_Excel(object sender, EventArgs e)
        //{
        //    //String IDXXXX = snsIDXXXX.Text;
        //    DataTable dt = new DataTable();
        //    String Reportdate = "";
        //    String sReturnDate = snssReturnDate.Text;
        //    String eReturnDate = snseReturnDate.Text;
        //    String Company = snsCompany.Text;
        //    String TagGroup = snsTagGroup.Text;
        //    String textRate = snsRate.Text;
        //    double Rate = double.Parse(textRate, CultureInfo.InvariantCulture);
        //    dt = new ClassBrowseNew().SP_Rpt_ITCharge(Reportdate, sReturnDate, eReturnDate, Company, TagGroup, Rate);
        //    //Get Query

        //    GridView GV = new GridView();
        //    GV.AllowPaging = false;
        //    GV.DataSource = dt;
        //    GV.DataBind();
        //    if (GV.Rows.Count > 0)
        //    {
        //        Response.Clear();
        //        Response.Buffer = true;

        //        Response.AddHeader("content-disposition", "attachment; filename=Chart " + textRate + "(" + sReturnDate + " to " + eReturnDate + ").xls");
        //        Response.Charset = "";
        //        Response.ContentType = "application/vnd.ms-excel";
        //        StringWriter sw = new StringWriter();
        //        HtmlTextWriter hw = new HtmlTextWriter(sw);

        //        for (int i = 0; i > GV.Rows.Count; i++)
        //        {
        //            GV.Rows[i].Attributes.Add("class", "textmode");
        //        }
        //        GV.RenderControl(hw);
        //        String style = @"<style> .textmode{mso-number-format:\@;}</style>";
        //        Response.Write(style);
        //        Response.Output.Write("<html><head><META http-equiv=Content-Type content=text/html; charset=utf-8></head><body><FONT face=Tahoma>" + sw.ToString() + "</FONT></Body></Html>");
        //        Response.Flush();
        //        Response.End();
        //    }
        //    else
        //    {
        //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No Data')", true);
        //    }
        //}
    }
}