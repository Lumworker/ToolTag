using NPOI.SS.UserModel;
using NPOI.SS.Util;
using NPOI.XSSF.UserModel;
using NPOI.HSSF.UserModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using Spire.Xls;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NPOI.HSSF.Util;

namespace ToolTag
{
    public partial class ChangeStatustool : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void File_ChangeStatusTool_Click(object sender, EventArgs e)
        {
            IWorkbook workbook;
            DataTable dt = new DataTable();

            workbook = new XSSFWorkbook();//for xslx

            XSSFSheet sheet1 = (XSSFSheet)workbook.CreateSheet("ToolTag_Change_Status");
            //Set Sheet

            IRow row1 = sheet1.CreateRow(0);
            row1.CreateCell(0).SetCellValue("ToolTag_code");
            row1.CreateCell(1).SetCellValue("status");
            row1.CreateCell(2).SetCellValue("reason");
            row1.CreateCell(3).SetCellValue("Reference");
            //make a header row
            IRow row2 = sheet1.CreateRow(1);
            row2.CreateCell(0).SetCellValue("A123456");
            row2.CreateCell(1).SetCellValue("InActive");
            row2.CreateCell(2).SetCellValue("ชำรุด");
            row2.CreateCell(3).SetCellValue("XXXXXXXX");
            //make a example row
            IRow row3 = sheet1.CreateRow(2);
            row3.CreateCell(0).SetCellValue("A123456");
            row3.CreateCell(1).SetCellValue("InActive");
            row3.CreateCell(2).SetCellValue("จำหน่าย");
            row3.CreateCell(3).SetCellValue("XXXXXXXX");
            //make a example row
            IRow row4 = sheet1.CreateRow(3);
            row4.CreateCell(0).SetCellValue("A123456");
            row4.CreateCell(1).SetCellValue("InActive");
            row4.CreateCell(2).SetCellValue("จำหน่ายซาก");
            row4.CreateCell(3).SetCellValue("XXXXXXXX");
            //make a example row

            // Test Set Color 
            ////ICell cell = sheet.CreateRow(1).CreateCell(3);
            ////cell.SetCellValue("Spire");

            //ICellStyle style = workbook.CreateCellStyle();
            ////Create style

            //style.FillBackgroundColor = IndexedColors.LightBlue.Index;
            ////style.FillPattern = FillPattern.SolidForeground;
            ////Set background color

            //row1.CreateCell(0).CellStyle = style;
            ////Apply the style


            IDataValidationHelper dropdown = new XSSFDataValidationHelper(sheet1);
            //Set dropdown list

            CellRangeAddressList Line_Status = new CellRangeAddressList(1, 999, 1, 1);
            IDataValidationConstraint Status = dropdown.CreateExplicitListConstraint(new String[] { "Active", "InActive" });
            IDataValidation dropdown_Status = dropdown.CreateValidation(Status, Line_Status);
            dropdown_Status.SuppressDropDownArrow = true;
            sheet1.AddValidationData(dropdown_Status);
            //Create dropdown list

            CellRangeAddressList Line_reason = new CellRangeAddressList(1, 999, 2, 2);
            IDataValidationConstraint reason = dropdown.CreateExplicitListConstraint(new String[] { "ชำรุด", "จำหน่าย", "จำหน่ายซาก" });
            IDataValidation dropdown_reason = dropdown.CreateValidation(reason, Line_reason);
            dropdown_reason.SuppressDropDownArrow = true;
            sheet1.AddValidationData(dropdown_reason);
            //Create dropdown list



            using (var exportData = new MemoryStream())
            {
                Response.Clear();
                workbook.Write(exportData);
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", "ToolTag_Change_Status.xlsx"));
                Response.BinaryWrite(exportData.ToArray());
                //xlsx file format
                //Response.ContentType = "application/vnd.ms-excel";
                //Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", "export_excel.xls"));
                //Response.BinaryWrite(exportData.GetBuffer());
                //xls file format
                Response.End();
            }
        }
    }
}