using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Configuration;

namespace ToolTag
{
    /// <summary>
    /// Summary description for LoadExcel_ToolTagChageStatus
    /// </summary>
    public class LoadExcel_ToolTagChageStatus : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try
            {

                /////////////////////////////////////////////////////////////////////////////////////////////////////////


                string webRootPath = context.Server.MapPath("~");
                string filePath = "\\\\PORTALAPP01\\ITPortal\\ITPortalFiles";
                //string filePath = Path.GetFullPath(Path.Combine(webRootPath, "../ToolTag_Attach/Excel"));
                if (!Directory.Exists(filePath))
                {
                    Directory.CreateDirectory(filePath);
                }
                
                HttpPostedFile file = context.Request.Files["file"];
                string fileName = file.FileName;
                string str_excel = filePath + "\\" + fileName;


                context.Response.Write(str_excel);

                file.SaveAs(str_excel);
                
                

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////

                string pathconnect = context.Request.Form["name"];
                string siteRef = context.Request.Form["site_ref"];
                string table = "TB_ToolTag_ChangeStatus_Temp";

                //string excelConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/Users/Zach/Documents/test1.xls;Extended Properties=Excel 12.0,HDR=Yes;IMEX=1";
                string excelConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + str_excel + ";Extended Properties='Excel 8.0;HDR={1}'";
                context.Response.Write(excelConnectionString);
                // Create Connection to Excel Workbook
                using (OleDbConnection connection = new OleDbConnection(excelConnectionString))
                {
                    OleDbCommand command = new OleDbCommand("Select * FROM [Sheet1$]", connection);
                    connection.Open(); //HERE IS WHERE THE ERROR IS

                    // Create DbDataReader to Data Worksheet
                    //using (DbDataReader dr = command.ExecuteReader())
                    //{
                    //    // SQL Server Connection String-----------

                    //    string sqlConnectionString = "Data Source=SLDB1\\SYTELINEDBC1;Initial Catalog=SC_Portal;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
                    //    // Bulk Copy to SQL Server
                    //    //using (SqlBulkCopy bulkCopy = new SqlBulkCopy(sqlConnectionString))
                    //    //{
                    //    //    bulkCopy.DestinationTableName = table;

                    //    //    // Set up the column mappings by name.
                    //    //    SqlBulkCopyColumnMapping ToolTag_code = new SqlBulkCopyColumnMapping("ToolTag_code", "[TagTool_Code]");
                    //    //    bulkCopy.ColumnMappings.Add(ToolTag_code);

                    //    //    SqlBulkCopyColumnMapping status = new SqlBulkCopyColumnMapping("status", "[Status]");
                    //    //    bulkCopy.ColumnMappings.Add(status);

                    //    //    SqlBulkCopyColumnMapping reason = new SqlBulkCopyColumnMapping("reason", "[Reason]");
                    //    //    bulkCopy.ColumnMappings.Add(reason);

                    //    //    SqlBulkCopyColumnMapping Reference = new SqlBulkCopyColumnMapping("Reference", "[Reference]");
                    //    //    bulkCopy.ColumnMappings.Add(Reference);

                    //    //    //SqlBulkCopyColumnMapping CreateDate = new SqlBulkCopyColumnMapping("CreateDate", "[CreateDate]");
                    //    //    //bulkCopy.ColumnMappings.Add(CreateDate);

                    //    //    //SqlBulkCopyColumnMapping CreateBy = new SqlBulkCopyColumnMapping("CreateBy", "[CreateBy]");
                    //    //    //bulkCopy.ColumnMappings.Add(CreateBy);

                    //    //    bulkCopy.WriteToServer(dr);
                    //    //}
                    //}
                }

                //if (System.IO.File.Exists(str_excel))
                //{
                //    try
                //    {
                //        System.IO.File.Delete(str_excel);
                //    }
                //    catch (IOException ex)
                //    {
                //        context.Response.Write(ex);
                //    }
                //}
                
            }
            catch (Exception ex)
            {
                context.Response.Write(ex.ToString());
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}