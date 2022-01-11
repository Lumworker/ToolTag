using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Collections.Specialized;
using System.Globalization;
using System.Text;
using System.Collections.Generic;
using System.Collections;
using System.Web.UI;
using System.Configuration;
using System.IO;
using System.Web.UI.WebControls;


namespace ToolTag
{
    public class ClassBrowseNew
    {
        //public static String con = "Data Source=K2DB1\\K2DBC1;Initial Catalog=K2;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public static String con = "Data Source=K2DB1\\K2DBC1;Initial Catalog=K2;Persist Security Info=True;User ID=dv;Password=@Wanlapa; Connect Timeout=0; pooling=true; Max Pool Size=5000";
        public static String conDev = "Data Source=K2DEVDB1\\K2DEVDBC1;Initial Catalog=K2;Persist Security Info=True;User ID=dv;Password=@Wanlapa; Connect Timeout=0; pooling=true; Max Pool Size=5000";
        public static String conK2_5 = "Data Source=K2DB5;Initial Catalog=K2;Persist Security Info=True;User ID=dv;Password=@Wanlapa; Connect Timeout=0; pooling=true; Max Pool Size=5000";
        public static String conK2_Dev5 = "Data Source=K2dev5;Initial Catalog=K2;Persist Security Info=True;User ID=sa;Password=@Patkol.com@123; Connect Timeout=0; pooling=true; Max Pool Size=5000";
        public static String conPatkol = "Data Source=SLDB1\\SYTELINEDBC1;Initial Catalog=PATKOL_K2APP_DATA;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public static String conITPortal = "Data Source=SLDB1\\SYTELINEDBC1;Initial Catalog=IT_Portal;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public static String conSC_Portal = "Data Source=SLDB1\\SYTELINEDBC1;Initial Catalog=SC_Portal;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public static String conHrPotal = "Data Source=SLDB1\\SYTELINEDBC1;Initial Catalog=HRPortal;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public static String conPKS = "Data Source=SLDB1\\SYTELINEDBC1;Initial Catalog=ERP_PKS_App;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";
        public static String conTG = "Data Source=SLDB1\\SYTELINEDBC1;Initial Catalog=ERP_TG_App;Persist Security Info=True;User ID=sa;Password=P@ssw0rd; Connect Timeout=0; pooling=true; Max Pool Size=50000";



        string PK = System.Configuration.ConfigurationManager.AppSettings["PK"];
        string Site = System.Configuration.ConfigurationManager.AppSettings["Site"];
        string PKM = System.Configuration.ConfigurationManager.AppSettings["PKM"];
        string PKT = System.Configuration.ConfigurationManager.AppSettings["PKT"];
        string SPN = System.Configuration.ConfigurationManager.AppSettings["SPN"];
        string PH = System.Configuration.ConfigurationManager.AppSettings["PH"];
        string IND = System.Configuration.ConfigurationManager.AppSettings["IND"];
        string MY = System.Configuration.ConfigurationManager.AppSettings["MY"];
        string TG = System.Configuration.ConfigurationManager.AppSettings["TG"];
        string CTG = System.Configuration.ConfigurationManager.AppSettings["CTG"];
        string HA = System.Configuration.ConfigurationManager.AppSettings["HA"];
        string CHA = System.Configuration.ConfigurationManager.AppSettings["CHA"];

        public string ConnectK2_Version(string version)
        {
            string connect = "";
            if (version == "V4")
            {
                connect = con;
            }
            else if (version == "V5")
            {
                //connect = conK2_5;
                connect = conK2_Dev5;
            }
            return connect;
        }

        public string SeletSite_ref(string site_ref)
        {
            string connn = "";
            if (site_ref == PK)
            {
                connn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSLERP_PK"].ConnectionString;
            }
            else if (site_ref == PKM)
            {
                connn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSLERP_PKM"].ConnectionString;
            }
            else if (site_ref == PKT)
            {
                connn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSLERP_PKT"].ConnectionString;
            }
            else if (site_ref == SPN)
            {
                connn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSLERP_SPN"].ConnectionString;
            }
            else if (site_ref == PH)
            {
                connn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSLOverseaPH"].ConnectionString;
            }
            else if (site_ref == IND)
            {
                connn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSLOverseaID"].ConnectionString;
            }
            else if (site_ref == MY)
            {
                connn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSLOverseaMY"].ConnectionString;
            }
            else if (site_ref == TG)
            {
                connn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSLERP_TG"].ConnectionString;
            }
            else if (site_ref == HA)
            {
                connn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringSLERP_HA"].ConnectionString;
            }

            return connn;
        }



        public String GetUser()
        {
            var UserDomain = HttpContext.Current.Request.LogonUserIdentity.Name;
            UserDomain = UserDomain.Replace("PATKOL\\", "");
            return UserDomain;
        }

        public List<ArrayList> GetSite_ref()
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conHrPotal))
            {
                string sql = "SELECT TOP (1000) [Corp_Name],[Corp_NameEN],[Prefix],[PrefixPR] FROM [dbo].[TB_company]";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> Get_BUGroup(string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conHrPotal))
            {
                string sql = "SELECT DISTINCT [Uf_Group],[GroupDesc] FROM [dbo].[VW_BuGroup_AllSite]";
                if (search != "")
                {
                    sql += "WHERE  ([Uf_Group] like  '%" + search + "%' OR [GroupDesc] like  '%" + search + "%' )";
                }

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> GET_TB_ToolTag_MainGroup(string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT [GroupCode] ,[GroupName] ,[Status] FROM [dbo].[TB_ToolTag_MainGroup]";
                if(search != "")
                {
                    sql += " Where [GroupCode] like '%" + search + "%' OR [GroupName] like '%" + search + "%' ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> GET_TB_ToolTag_MainType(string GroupCode,string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT [TypeCode] ,[TypeName] ,[Status],[Calibration_Master] FROM [SC_Portal].[dbo].[TB_ToolTag_MainType] WHERE [GroupCode] = '" + GroupCode + "'";
                if(search != "")
                {
                    sql += " AND  [TypeCode] like '%" + search + "%' OR [TypeName] like '%" + search + "%' ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> GET_TB_ToolTag_MainSize(string TypeCode,string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT [SizeCode] ,[SizeName] ,[Status] FROM [SC_Portal].[dbo].[TB_ToolTag_MainSize] WHERE [TypeCode] = '"+ TypeCode + "'";
                if (search != "")
                {
                    sql += " AND  [SizeCode] like '%" + search + "%' OR [SizeName] like '%" + search + "%' ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public string SP_ToolTag_MainGroup(string GroupCode, string GroupName, string GroupStatus, string Action)
        {
            SqlConnection con = new SqlConnection(conSC_Portal);
            SqlCommand cmd = new SqlCommand("SP_ToolTag_MainGroup", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("GroupCode", GroupCode);
            cmd.Parameters.AddWithValue("GroupName", GroupName);
            cmd.Parameters.AddWithValue("Status", GroupStatus);
            cmd.Parameters.AddWithValue("UpdateBy", GetUser());
            cmd.Parameters.AddWithValue("Action", Action);
            con.Open();
            //cmd.ExecuteNonQuery();
            SqlDataReader rs = cmd.ExecuteReader();
            string returnData = "";
            if (rs.Read())
            {
                returnData = rs["ID"].ToString();
            }
            con.Close();
            return returnData;
        }

        public string SP_ToolTag_MainType(string TypeCode, string TypeName, string TypeStatus,string GroupCode,int Calibration_Master, string Action)
        {
            SqlConnection con = new SqlConnection(conSC_Portal);
            SqlCommand cmd = new SqlCommand("SP_ToolTag_MainType", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("TypeCode", TypeCode);
            cmd.Parameters.AddWithValue("TypeName", TypeName);
            cmd.Parameters.AddWithValue("Status", TypeStatus);
            cmd.Parameters.AddWithValue("GroupCode", GroupCode);
            cmd.Parameters.AddWithValue("Calibration_Master", Calibration_Master);
            cmd.Parameters.AddWithValue("UpdateBy", GetUser());
            cmd.Parameters.AddWithValue("Action", Action);
            con.Open();
            //cmd.ExecuteNonQuery();
            SqlDataReader rs = cmd.ExecuteReader();
            string returnData = "";
            if (rs.Read())
            {
                returnData = rs["ID"].ToString();
            }
            con.Close();
            return returnData;
        }

        public string SP_ToolTag_MainSize(string SizeCode, string SizeName, string SizeStatus, string TypeCode, string Action)
        {
            SqlConnection con = new SqlConnection(conSC_Portal);
            SqlCommand cmd = new SqlCommand("SP_ToolTag_MainSize", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("SizeCode", SizeCode);
            cmd.Parameters.AddWithValue("SizeName", SizeName);
            cmd.Parameters.AddWithValue("Status", SizeStatus);
            cmd.Parameters.AddWithValue("TypeCode", TypeCode);
            cmd.Parameters.AddWithValue("UpdateBy", GetUser());
            cmd.Parameters.AddWithValue("Action", Action);
            con.Open();
            //cmd.ExecuteNonQuery();
            SqlDataReader rs = cmd.ExecuteReader();
            string returnData = "";
            if (rs.Read())
            {
                returnData = rs["ID"].ToString();
            }
            con.Close();
            return returnData;
        }



        public List<ArrayList> GETBrowse_TB_ToolTag_MainType(string GroupCode, string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT Top(100) [TypeCode] ,[TypeName] ,[Status] FROM [SC_Portal].[dbo].[TB_ToolTag_MainType] ";
               
                if (GroupCode != "" )
                {
                    sql += " Where  [GroupCode] = '" + GroupCode + "' ";
                }
                if (search != "" )
                {
                    if (GroupCode != "")
                    {
                        sql += " AND  [TypeCode] like '%" + search + "%' OR [TypeName] like '%" + search + "%' ";
                    }else if (GroupCode == "")
                    {
                        sql += " Where  [TypeCode] like '%" + search + "%' OR [TypeName] like '%" + search + "%' ";
                    }
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> GETBrowse_VW_ToolTag_MainSize(string GroupCode, string TypeName, string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [SizeCode],[SizeName],[Status],[TypeCode],[TypeName],[GroupCode],[GroupName],[Calibration_Master] FROM [dbo].[VW_ToolTag_MainSize] ";
                if (GroupCode != "")
                {
                    sql += " Where  [GroupCode] = '" + GroupCode + "' ";
                }
                if(TypeName != "")
                {
                    if(GroupCode != "")
                    {
                        sql += " AND [TypeName] ='"+ TypeName + "' ";
                    }else if(GroupCode == "")
                    {
                        sql += " Where  [TypeName] ='" + TypeName + "' ";

                    }
                }
                if(search != "")
                {
                    if(GroupCode != "" || TypeName != "")
                    {
                        sql += " AND [SizeName] like'%" + TypeName + "%' ";
                    }
                    else
                    {
                        sql += " Where  [SizeName] like'%" + TypeName + "%' ";

                    }
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        
        public string SP_ToolTag_Master(string ToolTag_Code, string GroupCode, string TypeCode, string SizeCode, string Description,
            string Brand, string Model, string Vendor_Code, string Purchase_Price, double Market_Price,
            string Status, string Date_Inactive, string Reason, string Location, string Asset_No,
            string Serial_No, string Picture, string BUGroup, string PO_No, string Date_Purchase ,int Calibration,string Calibration_Date,string site_ref, string Action)
        {
            SqlConnection con = new SqlConnection(conSC_Portal);
            SqlCommand cmd = new SqlCommand("SP_ToolTag_Master", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ToolTag_Code", ToolTag_Code);
            cmd.Parameters.AddWithValue("GroupCode", GroupCode);
            cmd.Parameters.AddWithValue("TypeCode", TypeCode);
            cmd.Parameters.AddWithValue("SizeCode", SizeCode);
            cmd.Parameters.AddWithValue("Description", Description);
            cmd.Parameters.AddWithValue("Brand", Brand);
            cmd.Parameters.AddWithValue("Model", Model);
            cmd.Parameters.AddWithValue("Vendor_Code", Vendor_Code);
            cmd.Parameters.AddWithValue("Purchase_Price", Purchase_Price);
            cmd.Parameters.AddWithValue("Market_Price", Market_Price);
            cmd.Parameters.AddWithValue("Status", Status);
            cmd.Parameters.AddWithValue("Date_Inactive", Date_Inactive);
            cmd.Parameters.AddWithValue("Reason", Reason);
            cmd.Parameters.AddWithValue("Location", Location);
            cmd.Parameters.AddWithValue("Asset_No", Asset_No);
            cmd.Parameters.AddWithValue("Serial_No", Serial_No);
            cmd.Parameters.AddWithValue("Picture", Picture);
            cmd.Parameters.AddWithValue("BUGroup", BUGroup);
            cmd.Parameters.AddWithValue("PO_No", PO_No);
            cmd.Parameters.AddWithValue("Date_Purchase", Date_Purchase);
            cmd.Parameters.AddWithValue("Calibration", Calibration);
            cmd.Parameters.AddWithValue("Calibration_Date", Calibration_Date);
            cmd.Parameters.AddWithValue("site_ref", site_ref);
            cmd.Parameters.AddWithValue("UpdateBy", GetUser());
            cmd.Parameters.AddWithValue("Action", Action);
            con.Open();
            //cmd.ExecuteNonQuery();
            SqlDataReader rs = cmd.ExecuteReader();
            string returnData = "";
            if (rs.Read())
            {
                returnData = rs["ToolTag_code"].ToString();
            }
            con.Close();
            return returnData;
        }
        
        public List<ArrayList> VW_ToolTag_Master(string ToolTag_Code)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [ToolTag_Code],[Description],[Brand],[Model],[Vendor_Code],[Vendor_Name],[Purchase_Price],[Market_Price],[Status],[Date_Inactive],[Reason],[Location]" +
                    ",[Asset_No],[Serial_No],[Picture],[BUGroup],[PO_No],[Date_Purchase],[Calibration],[Calibration_Date],[GroupCode],[GroupName],[TypeCode],[TypeName],[SizeCode],[SizeName],[Location_Name] FROM[dbo].[VW_ToolTag_Master] ";
                if (ToolTag_Code != "")
                {
                    sql += " WHERE  [ToolTag_Code] = '" + ToolTag_Code + "' ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> ListToolTag_VW_ToolTag_Master(string ToolTag_Code,string GroupCode, string TypeName, string SizeName,string Status,string site_ref)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [ToolTag_Code],[Description],[Brand],[Model],[Vendor_Code],[Vendor_Name],[Purchase_Price],[Market_Price],[Status],[Date_Inactive],[Reason],[Location]" +
                    ",[Asset_No],[Serial_No],[Picture],[BUGroup],[PO_No],[Date_Purchase],[Calibration],[Calibration_Date],[GroupCode],[GroupName],[TypeCode],[TypeName],[SizeCode],[SizeName],[site_ref] FROM[dbo].[VW_ToolTag_Master]";
                if (site_ref!= "")
                {
                    sql += " WHERE  [site_ref] = '" + site_ref + "' ";
                }
                if (ToolTag_Code != "" || GroupCode != ""|| TypeName != ""|| SizeName != "" || Status !="")
                {
                    sql += " AND (  [ToolTag_Code] like '%" + ToolTag_Code + "%'  AND  [GroupCode] like '%" + GroupCode + "%'  AND  [TypeName] like '%" + TypeName + "%'  AND  [SizeName] like '%" + SizeName + "%'   AND  [Status] like '%" + Status + "%' )  ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> VW_ToolTag_Monitoring_Calibration(string StartDate,string StartEnd)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [ToolTag_Code],[StartCalibrationDate],[EndCalibrationDate],[Detail],[Description],[Brand],[Model],[GroupCode],[GroupName],[TypeCode],[TypeName],[SizeCode],[SizeName]  FROM  [dbo].[VW_ToolTag_Monitoring_Calibration]";
                
                if (StartDate != "" && StartEnd != "")
                {
                    sql += "  WHERE  ( [EndCalibrationDate] >= CONVERT(datetime,'" + StartDate + "')  and [EndCalibrationDate] <= CONVERT(datetime,'" + StartEnd + "') ) ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> BrowseVW_ToolTag_Master(string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [ToolTag_Code],[Description],[Brand],[Model],[Vendor_Code],[Vendor_Name],[Purchase_Price],[Market_Price],[Status],[Date_Inactive],[Reason],[Location]" +
                    ",[Asset_No],[Serial_No],[Picture],[BUGroup],[PO_No],[Date_Purchase],[Calibration],[Calibration_Date],[GroupCode],[GroupName],[TypeCode],[TypeName],[SizeCode],[SizeName] FROM[dbo].[VW_ToolTag_Master]";
                if (search != "")
                {
                    sql += " WHERE  [ToolTag_Code] like '%" + search + "%'  OR  [GroupCode] like '%" + search + "%'   OR  [GroupName] like '%" + search + "%'   OR  [Brand] like '%" + search + "%' OR  [Model] like '%" + search + "%' OR  [Model] like '%" + search + "%'  ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        
        public List<ArrayList> GETBrowse_OnlyActive_TB_ToolTag_MainGroup(string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT [GroupCode] ,[GroupName] ,[Status] FROM [dbo].[TB_ToolTag_MainGroup] WHERE [Status] = 'Active' ";
                if (search != "")
                {
                    sql += " AND ( [GroupCode] like '%" + search + "%' OR [GroupName] like '%" + search + "%' ) ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> GETBrowse_OnlyActive_TB_ToolTag_MainType(string GroupCode, string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT [TypeCode] ,[TypeName] ,[Status],[Calibration_Master] FROM [dbo].[TB_ToolTag_MainType] WHERE [Status] = 'Active'  AND  [GroupCode] = '" + GroupCode + "'";
                if (search != "")
                {
                    sql += " AND ( [TypeCode] like '%" + search + "%' OR [TypeName] like '%" + search + "%' )";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        
        public List<ArrayList> GETBrowse_OnlyActive_VW_ToolTag_MainSize(string GroupCode, string TypeName, string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [SizeCode],[SizeName],[Status],[TypeCode],[TypeName],[GroupCode],[GroupName],[Calibration_Master] FROM [dbo].[VW_ToolTag_MainSize] ";
                sql += " WHERE  [Status] = 'Active' ";
                if (GroupCode != "")
                {
                    sql += " AND  [GroupCode] = '" + GroupCode + "' ";
                }
                if (TypeName != "")
                {
                    if (GroupCode != "")
                    {
                        sql += " AND [TypeName] ='" + TypeName + "' ";
                    }
                    else if (GroupCode == "")
                    {
                        sql += " AND  [TypeName] ='" + TypeName + "' ";

                    }
                }
                if (search != "")
                {
                    if (GroupCode != "" || TypeName != "")
                    {
                        sql += " AND  ( [SizeName] like'%" + search + "%' OR [SizeCode] like'%" + search +"%' ) ";
                    }
                    else
                    {
                        sql += " AND  [SizeName] like'%" + search + "%' ";

                    }
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> TB_ToolTag_MA(string ToolTag_Code)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [ID],[RepairType],[RepairDate],[Supplier],[Cost],[Remark],[PO_No],[ToolTag_Code] FROM [dbo].[TB_ToolTag_MA]";
                if (ToolTag_Code != "")
                {
                    sql += " WHERE  [ToolTag_Code] = '" + ToolTag_Code + "' ";
                }
                sql += "Order by [RepairDate] DESC";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> TB_ToolTag_Calibration(string ToolTag_Code)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (100) [ID],[ToolTag_Code],[StartCalibrationDate],[EndCalibrationDate],[Detail] FROM [dbo].[TB_ToolTag_Calibration]";
                if (ToolTag_Code != "")
                {
                    sql += " WHERE  [ToolTag_Code] = '" + ToolTag_Code + "' ";
                }
                sql += "Order by [ID] DESC";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public void SP_ToolTag_MA(int ID, string RepairType, string RepairDate, string Supplier, double Cost,
            string Remark, string PO_No, string ToolTag_Code, string Action)
        {
            SqlConnection con = new SqlConnection(conSC_Portal);
            SqlCommand cmd = new SqlCommand("SP_ToolTag_MA", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", ID);
            cmd.Parameters.AddWithValue("RepairType", RepairType);
            cmd.Parameters.AddWithValue("RepairDate", RepairDate);
            cmd.Parameters.AddWithValue("Supplier", Supplier);
            cmd.Parameters.AddWithValue("Cost", Cost);
            cmd.Parameters.AddWithValue("Remark", Remark);
            cmd.Parameters.AddWithValue("PO_No", PO_No);
            cmd.Parameters.AddWithValue("ToolTag_Code", ToolTag_Code);
            cmd.Parameters.AddWithValue("UpdateBy", GetUser());
            cmd.Parameters.AddWithValue("Action", Action);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public string SP_ToolTag_Calibration(int ID,string ToolTag_Code, string StartCalibrationDate, string EndCalibrationDate, string Detail, string Action)
        {
            SqlConnection con = new SqlConnection(conSC_Portal);
            SqlCommand cmd = new SqlCommand("SP_ToolTag_Calibration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", ID);
            cmd.Parameters.AddWithValue("ToolTag_Code", ToolTag_Code);
            cmd.Parameters.AddWithValue("StartCalibrationDate", StartCalibrationDate);
            cmd.Parameters.AddWithValue("EndCalibrationDate", EndCalibrationDate);
            cmd.Parameters.AddWithValue("Detail", Detail);
            cmd.Parameters.AddWithValue("UpdateBy", GetUser());
            cmd.Parameters.AddWithValue("Action", Action);
            con.Open();
            //cmd.ExecuteNonQuery();
            SqlDataReader rs = cmd.ExecuteReader();
            string returnData = "";
            if (rs.Read())
            {
                returnData = rs["ID"].ToString();
            }
            con.Close();
            return returnData;
        }

        public void SP_ToolTag_Calibration_Attach(int ID, int Calibration_ID, string Path,string Action)
        {
            SqlConnection con = new SqlConnection(conSC_Portal);
            SqlCommand cmd = new SqlCommand("SP_ToolTag_Calibration_Attach", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ID", ID);
            cmd.Parameters.AddWithValue("Calibration_ID", Calibration_ID);
            cmd.Parameters.AddWithValue("Path", Path);
            cmd.Parameters.AddWithValue("UpdateBy", GetUser());
            cmd.Parameters.AddWithValue("Action", Action);
            //cmd.Parameters.AddWithValue("Msg", "");
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public List<ArrayList> GET_TB_ToolTag_Calibration_Attach(string Calibration_ID)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [ID],[Calibration_ID],[Path] FROM [dbo].[TB_ToolTag_Calibration_Attach] ";
                if (Calibration_ID != "")
                {
                    sql += " WHERE [Calibration_ID] =  '" + Calibration_ID + "' ";
                }

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> VW_PO_AllSite(string Search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conITPortal))
            {
                string sql = "SELECT TOP (30) [site ref],[PO Number],[PO Date],[PO Due Date],[Item Code]" +
                    ",[Item Description],[UOM],[Qty],[Unit Price],[TotalAmount],[Cur],[exchange rate]" +
                    ",[VendorCode],[Vendor],[Destination Type],[Project],[WareHouse],[Warehouse Name]" +
                    ",[Product],[BU],[Buyer],[Special Note],[BU Final Approved Date],[PaymentCondition]" +
                    ",[PaymentConditionDesc],[Month PO],[Location],[PO Type],[Item Group],[Item Type]" +
                    ",[Buyer_],[Business Group],[type],[PR No]  FROM [SC_Portal].[dbo].[VW_Rpt_PurchaseOrder]";

                sql += "WHERE [PO Number] like '%" + Search + "%' OR [VendorCode] like '%" + Search + "%' " +
                    " OR [Vendor] like '%" + Search + "%'  ";

                sql += " order by [PO Number]";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> VW_Location(string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [Location],[Description] FROM  [dbo].[VW_Location]";
                if (search != "")
                {
                    sql += " WHERE [Location] like  '%" + search + "%' OR [Description] like  '%" + search + "%'  ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }

        public List<ArrayList> TabHistory_VW_ToolTag_Transaction(string ToolTag_Code)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP(1000) [site_ref],[ToolNumber Borrow],[Ref_Type],[ToolTag_Code]" +
                    ",[Reference],[BU_Group],[Location],[Borrower],[Borrow for],[CostCenter]" +
                    ",[K2 Borrow],[Borrow Date],[ToolNumber Return],[Returner],[Return for]" +
                    ",[K2 Return],[Return Date],[Status_Tool],[WFID Borrow],[WFID Return] FROM[dbo].[VW_ToolTag_History]";
                if (ToolTag_Code != "")
                {
                    sql += " WHERE [ToolTag_Code] like  '%" + ToolTag_Code + "%' ";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> Moniter_VW_ToolTag_Transaction(string Emp_Num, string Costcenter, string BU, string ToolTag_Code,
            string Type, string Start_Date, string End_Date)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conSC_Portal))
            {
                string sql = "SELECT TOP (1000) [site_ref],[ToolNumber],[Type],[Reason],[ToolTag_Code]" +
                    ",[Reference],[BU_Group],[Location],[Creator],[Requestor],[CostCenter]" +
                    ",[K2ID],[WFID],[RefID],[Status_Tool],[Trans_Date] FROM  [dbo].[VW_ToolTag_Transaction]";
                sql += "Where 1=1 ";
                if (Emp_Num != "")
                {
                    sql += "AND [Requestor] like '%" + Emp_Num + "%' ";
                }
                if (Costcenter != "")
                {
                    sql += "AND [CostCenter] like '%" + Costcenter + "%' ";
                }
                if (BU != "")
                {
                    sql += "AND [BU_Group] like '%" + BU + "%' ";
                }
                if (ToolTag_Code != "")
                {
                    sql += "AND [ToolTag_Code] like '%" + ToolTag_Code + "%' ";
                }
                if (Type != "")
                {
                    sql += "AND [Type] like '%" + Type + "%' ";
                }
                if (Start_Date != "" && End_Date != "")
                {
                    sql += " AND  ( [Trans_Date] BETWEEN  CONVERT(datetime,'" + Start_Date + "')  AND  CONVERT(datetime,'" + End_Date + "') ) ";
                }
                else if (Start_Date != "")
                {
                    sql += " AND  [Trans_Date] >=  CONVERT(datetime,'2021-01-01')  ";
                }
                else if (End_Date != "")
                {
                    sql += " AND  [Trans_Date] <=  CONVERT(datetime,'2021-01-01')  ";
                }

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public DataTable Export_VW_ToolTag_Transaction(string Emp_Num, string Costcenter, string BU, string ToolTag_Code,
            string Type, string Start_Date, string End_Date)
        {
                string sql = "SELECT TOP (1000) [site_ref],[ToolNumber],[Type],[Reason],[ToolTag_Code]" +
                    ",[Reference],[BU_Group],[Location],[Creator],[Requestor],[CostCenter]" +
                    ",[K2ID],[WFID],[RefID],[Status_Tool],[Trans_Date] FROM  [dbo].[VW_ToolTag_Transaction]";
                sql += "Where 1=1 ";
                if (Emp_Num != "")
                {
                    sql += "AND [Requestor] like '%" + Emp_Num + "%' ";
                }
                if (Costcenter != "")
                {
                    sql += "AND [CostCenter] like '%" + Costcenter + "%' ";
                }
                if (BU != "")
                {
                    sql += "AND [BU_Group] like '%" + BU + "%' ";
                }
                if (ToolTag_Code != "")
                {
                    sql += "AND [ToolTag_Code] like '%" + ToolTag_Code + "%' ";
                }
                if (Type != "")
                {
                    sql += "AND [Type] like '%" + Type + "%' ";
                }
                if (Start_Date != "" && End_Date != "")
                {
                    sql += " AND  ( [Trans_Date] BETWEEN  CONVERT(datetime,'" + Start_Date + "')  AND  CONVERT(datetime,'" + End_Date + "') ) ";
                }
                else if (Start_Date != "")
                {
                    sql += " AND  [Trans_Date] >=  CONVERT(datetime,'2021-01-01')  ";
                }
                else if (End_Date != "")
                {
                    sql += " AND  [Trans_Date] <=  CONVERT(datetime,'2021-01-01')  ";
                }

                DataTable DT = new DataTable();
                SqlConnection connection = new SqlConnection(conSC_Portal);
                SqlCommand cmd = new SqlCommand(sql, connection);

                try
                {
                    connection.Open();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = sql;
                    cmd.CommandTimeout = 0;
                    DT.Load(cmd.ExecuteReader());
                }
                catch (SqlException ex)
                {
                    connection.Close();
                    cmd.Dispose();
                    return DT;
                }
                connection.Close();
                cmd.Dispose();
                return DT;
        }


        public List<ArrayList> Get_Employee(string search)
        {
            List<ArrayList> GetData = new List<ArrayList>();
            using (SqlConnection conn = new SqlConnection(conHrPotal))
            {
                string sql = " SELECT TOP (100) [Site_Ref],[Emp_Num],[sname],[name],[dept],[Uf_Level],[Uf_Location],[Uf_PositionID],[Uf_Jobtitle],[Uf_JobTitleEN],[BUGroup],[BUGroupDesc]  FROM[dbo].[VW_Employee]  WHERE [LANGUAGE] = 'TH' ";
                if (search != "")
                {
                    sql += " AND ( [Emp_Num] like '%" + search + "%' OR   [name] like '%" + search + "%' )";
                }
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandTimeout = 300;
                    conn.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            GetData.Add(detail);
                        }
                    }
                }
            }
            return GetData;
        }
        public List<ArrayList> VW_HR_List_Company(string search)
        {
            List<ArrayList> Company = new List<ArrayList>();
            using (SqlConnection connection = new SqlConnection(conHrPotal))
            {
                string sql = " SELECT [Costcenter],[CostcenterDesc],[Divition],[BU_Group],[BU_GroupDesc] FROM [HRPortal].[dbo].[VW_Dept_AllSite] where ";

                if (search != "") { search = '%' + search + '%'; sql += "( [Costcenter] LIKE '" + search + "' or [CostcenterDesc] LIKE '" + search + "' or [BU_GroupDesc] LIKE '" + search + "') AND"; }
                sql += " [BU_GroupDesc] IS NOT NULL ";

                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    connection.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            Company.Add(detail);
                        }
                    }
                }
            }
            return Company;
        }
        public List<ArrayList> Type_VW_MaintainDropDown_FromDBK2()
        {
            List<ArrayList> Company = new List<ArrayList>();
            using (SqlConnection connection = new SqlConnection(conSC_Portal))
            {
                string sql = "select WF_Type,Name_DDL,Value,Text_TH,Text_EN,Status " +
                    " from VW_MaintainDropDown_FromDBK2 where wf_type = 'ic13'and name_ddl = 'tag type'";
                
                using (SqlCommand cmd = new SqlCommand(sql, connection))
                {
                    connection.Open();
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ArrayList detail = new ArrayList();
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                detail.Add(reader[i].ToString());
                            }
                            Company.Add(detail);
                        }
                    }
                }
            }
            return Company;
        }
        //public List<ArrayList> refType_VW_MaintainDropDown_FromDBK2()
        //{
        //    List<ArrayList> Company = new List<ArrayList>();
        //    using (SqlConnection connection = new SqlConnection(conSC_Portal))
        //    {
        //        string sql = "select WF_Type,Name_DDL,Value,Text_TH,Text_EN,Status " +" from VW_MaintainDropDown_FromDBK2  where wf_type = 'ic13' and name_ddl = 'Requisition'";
                
        //        using (SqlCommand cmd = new SqlCommand(sql, connection))
        //        {
        //            connection.Open();
        //            using (var reader = cmd.ExecuteReader())
        //            {
        //                while (reader.Read())
        //                {
        //                    ArrayList detail = new ArrayList();
        //                    for (int i = 0; i < reader.FieldCount; i++)
        //                    {
        //                        detail.Add(reader[i].ToString());
        //                    }
        //                    Company.Add(detail);
        //                }
        //            }
        //        }
        //    }
        //    return Company;
        //}
        //public List<ArrayList> StatusTool_VW_MaintainDropDown_FromDBK2()
        //{
        //    List<ArrayList> Company = new List<ArrayList>();
        //    using (SqlConnection connection = new SqlConnection(conSC_Portal))
        //    {
        //        string sql = "select WF_Type,Name_DDL,Value,Text_TH,Text_EN,Status " +" from VW_MaintainDropDown_FromDBK2 where wf_type = 'ic13' and name_ddl = 'StatusTool'";
                
        //        using (SqlCommand cmd = new SqlCommand(sql, connection))
        //        {
        //            connection.Open();
        //            using (var reader = cmd.ExecuteReader())
        //            {
        //                while (reader.Read())
        //                {
        //                    ArrayList detail = new ArrayList();
        //                    for (int i = 0; i < reader.FieldCount; i++)
        //                    {
        //                        detail.Add(reader[i].ToString());
        //                    }
        //                    Company.Add(detail);
        //                }
        //            }
        //        }
        //    }
        //    return Company;
        //}


    }
}