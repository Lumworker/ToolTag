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
            string Serial_No, string Picture, string BUGroup, string PO_No, string Date_Purchase, int Calibration,
            string site_ref,string Action)
        {
            return new ClassBrowseNew().SP_ToolTag_Master( ToolTag_Code,  GroupCode,  TypeCode,  SizeCode,  Description,
             Brand,  Model, Vendor_Code,  Purchase_Price, Market_Price,
             Status,  Date_Inactive,  Reason,  Location,  Asset_No,
             Serial_No,  Picture,  BUGroup,  PO_No,  Date_Purchase, Calibration, site_ref,  Action);
        }

        [WebMethod]
        public static List<ArrayList> VW_ToolTag_Master(string ToolTag_Code)
        {
            return new ClassBrowseNew().VW_ToolTag_Master(ToolTag_Code);
        }

        [WebMethod]
        public static List<ArrayList> ListToolTag_VW_ToolTag_Master(string ToolTag_Code, string GroupCode, string TypeName, string SizeName,string Asset_No, string Status,string site_ref)
        {
            return new ClassBrowseNew().ListToolTag_VW_ToolTag_Master( ToolTag_Code,  GroupCode,  TypeName,  SizeName, Asset_No, Status, site_ref);
        }

        [WebMethod]
        public static List<ArrayList> VW_ToolTag_Monitoring_Calibration(string StartDate, string StartEnd,string site_ref)
        {
            return new ClassBrowseNew().VW_ToolTag_Monitoring_Calibration(StartDate, StartEnd, site_ref);
        }

        [WebMethod]
        public static List<ArrayList> VW_ToolsTag_Repair(string ToolTag_Code)
        {
            return new ClassBrowseNew().VW_ToolsTag_Repair(ToolTag_Code);
        }

        [WebMethod]
        public static void SP_ToolTag_MA(int ID, string RepairType, string RepairDate, string Supplier, double Cost
            ,string Remark, string PO_No, string ToolTag_Code , string ReceiveDate, string StatusToolReturn
            , string Site_ref, string Status,string Reason, string Action)
        {
             new ClassBrowseNew().SP_ToolTag_MA(ID, RepairType, RepairDate, Supplier, Cost,Remark, PO_No, ToolTag_Code
                 , ReceiveDate, StatusToolReturn, Site_ref, Status, Reason, Action);
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
        public static List<ArrayList> VW_PO_AllSite(string search,string site_ref)
        {
            return new ClassBrowseNew().VW_PO_AllSite(search, site_ref);
        }

        [WebMethod]
        public static List<ArrayList> GetAssetNumber_VW_PO_AllSite(string search,string site_ref,string po_num)
        {
            return new ClassBrowseNew().GetAssetNumber_VW_PO_AllSite(search, site_ref, po_num);
        }

        [WebMethod]
        public static List<ArrayList> ListToolTag_GetAssetNumber_VW_PO_AllSite(string search,string site_ref)
        {
            return new ClassBrowseNew().ListToolTag_GetAssetNumber_VW_PO_AllSite(search, site_ref);
        }

        [WebMethod]
        public static List<ArrayList> BrowseVW_ToolTag_Master(string search,string site_ref)
        {
            return new ClassBrowseNew().BrowseVW_ToolTag_Master(search, site_ref);
        }

        [WebMethod]
        public static List<ArrayList> Addd_Change_status_BrowseVW_ToolTag_Master(string search,string site_ref,string notin)
        {
            return new ClassBrowseNew().Addd_Change_status_BrowseVW_ToolTag_Master(search, site_ref,notin);
        }

        //[WebMethod]
        //public static List<ArrayList> BrowseVW_ToolTag_Master_Change_Status(string search)
        //{
        //    return new ClassBrowseNew().BrowseVW_ToolTag_Master_Change_Status(search);
        //}

        [WebMethod]
        public static List<ArrayList> VW_Location(string search)
        {
            return new ClassBrowseNew().VW_Location(search);
        }

        [WebMethod]
        public static List<ArrayList> VW_Vendor_All(string search,string site_ref)
        {
            return new ClassBrowseNew().VW_Vendor_All(search, site_ref);
        }
        
        [WebMethod]
        public static List<ArrayList> Get_Employee(string search)
        {
            return new ClassBrowseNew().Get_Employee(search);
        }
        
        [WebMethod]
        public static List<ArrayList> TabHistory_VW_ToolTag_History(string ToolTag_Code)
        {
            return new ClassBrowseNew().TabHistory_VW_ToolTag_History(ToolTag_Code);
        }

        [WebMethod]
        public static List<ArrayList> Moniter_VW_ToolTag_Transaction(string Emp_Num, string Costcenter, string BU, string ToolTag_Code,
            string Type, string Start_Date, string End_Date ,string site_ref)
        {
            return new ClassBrowseNew().Moniter_VW_ToolTag_Transaction(Emp_Num, Costcenter, BU, ToolTag_Code,
                Type, Start_Date, End_Date, site_ref);
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

        [WebMethod]
        public static List<ArrayList> GetUser_Employee()
        {
            return new ClassBrowseNew().GetUser_Employee();
        }

        [WebMethod]
        public static void SP_ToolTag_InserTranstion(string SiteRef, string type, string RefType
            , string ToolTagCode, string BuGroup, string Location ,string TransDate,string PO_Number
            ,string StatusTool)
        {
            new ClassBrowseNew().SP_ToolTag_InserTranstion( 
                SiteRef, type,  RefType,  ToolTagCode, BuGroup,  Location,  TransDate , PO_Number, StatusTool);
        }
        [WebMethod]
        public static List<ArrayList> GetUsername(string search)
        {
            return new ClassBrowseNew().GetUsername(search);
        }
        [WebMethod]
        public static string SP_ToolTag_Permission(int ID, string Username, string Page,string Permission, string Action,string site_ref)
        {
           return new ClassBrowseNew().SP_ToolTag_Permission( ID,  Username,  Page, Permission,  Action, site_ref);
        }
        [WebMethod]
        public static List<ArrayList> VW_ToolTag_Permission(string site_ref)
        {
            return new ClassBrowseNew().VW_ToolTag_Permission(site_ref);
        }
        [WebMethod]
        public static List<ArrayList> CheckPermission(string Page,string site_ref)
        {
            return new ClassBrowseNew().CheckPermission(Page,site_ref);
        }
        [WebMethod]
        public static List<ArrayList> CheckPermission_Nosite(string Page)
        {
            return new ClassBrowseNew().CheckPermission_Nosite(Page);
        }
        [WebMethod]
        public static List<ArrayList> VW_CO_All_Site(string site_ref, string search)
        {
            return new ClassBrowseNew().VW_CO_All_Site( site_ref,  search);
        }

        [WebMethod]
        public static void SP_Tooltag_UpdateChangeStatus(string ToolTag_Code, string Status, string Reason,
            string Reference, string SiteRef, string BuGroup, string Location)
        {
            new ClassBrowseNew().SP_Tooltag_UpdateChangeStatus( ToolTag_Code,  Status,  Reason,
             Reference,  SiteRef,  BuGroup,  Location);
        }
        [WebMethod]
        public static void SP_ToolTag_ChangeStatus_Temp(List<ArrayList> Array_value)
        {
            new ClassBrowseNew().SP_ToolTag_ChangeStatus_Temp( Array_value);
        }
        [WebMethod]
        public static void SP_ToolTag_ChangeStatus_ClearTemp()
        {
            new ClassBrowseNew().SP_ToolTag_ChangeStatus_ClearTemp( );
        }
        [WebMethod]
        public static List<ArrayList> VW_ToolTag_ChangeStatus_CheckTemplate()
        {
            return new ClassBrowseNew().VW_ToolTag_ChangeStatus_CheckTemplate();
        }
        [WebMethod]
        public static List<ArrayList> PrintLabel_VW_ToolTag_Master(string search,string site_ref)
        {
            return new ClassBrowseNew().PrintLabel_VW_ToolTag_Master(search ,site_ref);
        }
        //[WebMethod]
        //public static List<ArrayList> VW_ToolTag_ChangeStatus_List()
        //{
        //    return new ClassBrowseNew().VW_ToolTag_ChangeStatus_List();
        //}

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