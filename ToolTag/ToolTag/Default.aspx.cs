using System;
using System.Collections;
using System.Collections.Generic;
using System.Web.Services;
using System.Web.UI;

namespace ToolTag
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<ArrayList> GetSite_ref()
        {
            return new ClassBrowseNew().GetSite_ref();
        }

        //[WebMethod]
        //public static List<ArrayList> Get_BUGroup(string search, string Location)
        //{
        //    return new ClassBrowseNew().Get_BUGroup(search, Location);
        //}

        [WebMethod]
        public static List<ArrayList> Get_BUGroup(string search)
        {
            return new ClassBrowseNew().Get_BUGroup(search);
        }

        [WebMethod]
        public static List<ArrayList> GET_TB_ToolTag_MainGroup(string search)
        {
            return new ClassBrowseNew().GET_TB_ToolTag_MainGroup(search);
        }

        [WebMethod]
        public static List<ArrayList> GETBrowse_OnlyActive_TB_ToolTag_MainGroup(string search)
        {
            return new ClassBrowseNew().GETBrowse_OnlyActive_TB_ToolTag_MainGroup(search);
        }

        [WebMethod]
        public static List<ArrayList> GET_TB_ToolTag_MainType(string GroupCode,string search)
        {
            return new ClassBrowseNew().GET_TB_ToolTag_MainType(GroupCode,search);
        }

        [WebMethod]
        public static List<ArrayList> GETBrowse_TB_ToolTag_MainType(string GroupCode,string search)
        {
            return new ClassBrowseNew().GETBrowse_TB_ToolTag_MainType(GroupCode,search);
        }

        [WebMethod]
        public static List<ArrayList> GETBrowse_OnlyActive_TB_ToolTag_MainType(string GroupCode, string search)
        {
            return new ClassBrowseNew().GETBrowse_OnlyActive_TB_ToolTag_MainType(GroupCode, search);
        }

        [WebMethod]
        public static List<ArrayList> GET_TB_ToolTag_MainSize(string TypeCode,string search)
        {
            return new ClassBrowseNew().GET_TB_ToolTag_MainSize(TypeCode, search);
        }

        [WebMethod]
        public static List<ArrayList> GETBrowse_VW_ToolTag_MainSize(string GroupCode ,string TypeName,string search)
        {
            return new ClassBrowseNew().GETBrowse_VW_ToolTag_MainSize(GroupCode,TypeName, search);
        }
        
        [WebMethod]
        public static List<ArrayList> GETBrowse_OnlyActive_VW_ToolTag_MainSize(string GroupCode ,string TypeName,string search)
        {
            return new ClassBrowseNew().GETBrowse_OnlyActive_VW_ToolTag_MainSize(GroupCode,TypeName, search);
        }

        [WebMethod]
        public static string SP_ToolTag_MainGroup(string GroupCode, string GroupName, string GroupStatus, string Action)
        {
            return new ClassBrowseNew().SP_ToolTag_MainGroup(GroupCode, GroupName, GroupStatus, Action);
        }

        [WebMethod]
        public static string SP_ToolTag_MainType(string TypeCode, string TypeName, string TypeStatus, string GroupCode,int Calibration_Master, string Action)
        {
            return new ClassBrowseNew().SP_ToolTag_MainType(TypeCode, TypeName, TypeStatus, GroupCode, Calibration_Master, Action);
        }

        [WebMethod]
        public static string SP_ToolTag_MainSize(string SizeCode, string SizeName, string SizeStatus, string TypeCode, string Action)
        {
            return new ClassBrowseNew().SP_ToolTag_MainSize(SizeCode, SizeName, SizeStatus, TypeCode, Action);
        }

        [WebMethod]
        public static string SP_ToolTag_Master(string ToolTag_Code, string GroupCode, string TypeCode, string SizeCode, string Description,
            string Brand, string Model, string Vendor_Code, string Purchase_Price, double Market_Price,
            string Status, string Date_Inactive, string Reason, string Location, string Asset_No,
            string Serial_No, string Picture, string BUGroup, string PO_No, string Date_Purchase, int Calibration, string Calibration_Date,
            string site_ref,string Action)
        {
            return new ClassBrowseNew().SP_ToolTag_Master( ToolTag_Code,  GroupCode,  TypeCode,  SizeCode,  Description,
             Brand,  Model, Vendor_Code,  Purchase_Price, Market_Price,
             Status,  Date_Inactive,  Reason,  Location,  Asset_No,
             Serial_No,  Picture,  BUGroup,  PO_No,  Date_Purchase, Calibration, Calibration_Date, site_ref,  Action);
        }

        [WebMethod]
        public static List<ArrayList> VW_ToolTag_Master(string ToolTag_Code)
        {
            return new ClassBrowseNew().VW_ToolTag_Master(ToolTag_Code);
        }

        [WebMethod]
        public static List<ArrayList> ListToolTag_VW_ToolTag_Master(string ToolTag_Code, string GroupCode, string TypeName, string SizeName,string Status,string site_ref)
        {
            return new ClassBrowseNew().ListToolTag_VW_ToolTag_Master( ToolTag_Code,  GroupCode,  TypeName,  SizeName, Status, site_ref);
        }

        [WebMethod]
        public static List<ArrayList> VW_ToolTag_Monitoring_Calibration(string StartDate, string StartEnd)
        {
            return new ClassBrowseNew().VW_ToolTag_Monitoring_Calibration(StartDate, StartEnd);
        }

        [WebMethod]
        public static List<ArrayList> TB_ToolTag_MA(string ToolTag_Code)
        {
            return new ClassBrowseNew().TB_ToolTag_MA(ToolTag_Code);
        }

        [WebMethod]
        public static void SP_ToolTag_MA(int ID, string RepairType, string RepairDate, string Supplier, double Cost,string Remark, string PO_No, string ToolTag_Code, string Action)
        {
             new ClassBrowseNew().SP_ToolTag_MA(ID, RepairType, RepairDate, Supplier, Cost,Remark, PO_No, ToolTag_Code, Action);
        }

        [WebMethod]
        public static List<ArrayList> TB_ToolTag_Calibration(string ToolTag_Code)
        {
            return new ClassBrowseNew().TB_ToolTag_Calibration(ToolTag_Code);
        }

        [WebMethod]
        public static string SP_ToolTag_Calibration(int ID, string ToolTag_Code, string StartCalibrationDate, string EndCalibrationDate, string Detail, string Action)
        {
            return new ClassBrowseNew().SP_ToolTag_Calibration( ID,  ToolTag_Code,  StartCalibrationDate,  EndCalibrationDate,  Detail,  Action);
        }

        [WebMethod]
        public static void SP_ToolTag_Calibration_Attach(int ID, int Calibration_ID, string Path, string Action)
        {
            new ClassBrowseNew().SP_ToolTag_Calibration_Attach( ID,  Calibration_ID,  Path,  Action);
        }

        [WebMethod]
        public static List<ArrayList> GET_TB_ToolTag_Calibration_Attach(string Calibration_ID)
        {
            return new ClassBrowseNew().GET_TB_ToolTag_Calibration_Attach(Calibration_ID);
        }

        [WebMethod]
        public static List<ArrayList> VW_PO_AllSite(string search)
        {
            return new ClassBrowseNew().VW_PO_AllSite(search);
        }

        [WebMethod]
        public static List<ArrayList> BrowseVW_ToolTag_Master(string search)
        {
            return new ClassBrowseNew().BrowseVW_ToolTag_Master(search);
        }

        [WebMethod]
        public static List<ArrayList> VW_Location(string search)
        {
            return new ClassBrowseNew().VW_Location(search);
        }
        
        [WebMethod]
        public static List<ArrayList> Get_Employee(string search)
        {
            return new ClassBrowseNew().Get_Employee(search);
        }

        [WebMethod]
        public static List<ArrayList> TabHistory_VW_ToolTag_Transaction(string ToolTag_Code)
        {
            return new ClassBrowseNew().TabHistory_VW_ToolTag_Transaction(ToolTag_Code);
        }

        [WebMethod]
        public static List<ArrayList> Moniter_VW_ToolTag_Transaction(string Emp_Num, string Costcenter, string BU, string ToolTag_Code,
            string Type, string Start_Date, string End_Date )
        {
            return new ClassBrowseNew().Moniter_VW_ToolTag_Transaction(Emp_Num, Costcenter, BU, ToolTag_Code, Type, Start_Date, End_Date);
        }

        [WebMethod]
        public static List<ArrayList> VW_HR_List_Company(string search)
        {
            return new ClassBrowseNew().VW_HR_List_Company(search);
        }

        [WebMethod]
        public static List<ArrayList> Type_VW_MaintainDropDown_FromDBK2()
        {
            return new ClassBrowseNew().Type_VW_MaintainDropDown_FromDBK2();
        }

        //[WebMethod]
        //public static List<ArrayList> refType_VW_MaintainDropDown_FromDBK2()
        //{
        //    return new ClassBrowseNew().refType_VW_MaintainDropDown_FromDBK2();
        //}

        //[WebMethod]
        //public static List<ArrayList> StatusTool_VW_MaintainDropDown_FromDBK2()
        //{
        //    return new ClassBrowseNew().StatusTool_VW_MaintainDropDown_FromDBK2();
        //}



    }
}