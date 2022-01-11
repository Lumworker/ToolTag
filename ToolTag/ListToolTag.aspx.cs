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
    public partial class ListToolTag : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Export_LisToolTag_Click(object sender, EventArgs e)
        {
            IWorkbook workbook;
            DataTable dt = new DataTable();
            String ToolTag_Code = snsToolTag_Code.Text;
            String Type = snsType.Text;
            String Group = snsGroup.Text;
            String Size = snsSize.Text;
            String Status = snsStatus.Text;
            String Asset_No = snsAsset_No.Text;
            String site_ref = snssite_ref.Text;

            dt = new ClassBrowseNew().Export_VW_ToolTag_Master_and_Calibration(ToolTag_Code, Type, Group, Size, Status, Asset_No, site_ref);
            
            
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
                Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", "Report_ToolTag_Data.xlsx"));
                Response.BinaryWrite(exportData.ToArray());
                //xlsx file format
                //Response.ContentType = "application/vnd.ms-excel";
                //Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", "export_excel.xls"));
                //Response.BinaryWrite(exportData.GetBuffer());
                ////xls file format
                Response.End();
            }
        }
    }
}