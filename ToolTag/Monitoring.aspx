<%@ Page Title="Monitor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Monitoring.aspx.cs" Inherits="ToolTag.Monitoring" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        .max-wide {
            max-width: 100%;
        }

        .datepicker {
            background: #333;
            border: 1px solid #555;
            color: #EEE;
        }

        .nav-tab {
            overflow: hidden;
            border: 1px solid #ccc;
            /*background-color: #f1f1f1;*/
        }

        .red {
            color: red;
            /*font-size: 18px;*/
        }

        .datepicker-container {
            z-index: 1061 !important;
        }

        .margin-top {
            margin-top: 2em
        }

        .margin-bottom {
            margin-bottom: 2em
        }

        input[type=checkbox] {
            /* Double-sized Checkboxes */
            -ms-transform: scale(2); /* IE */
            -moz-transform: scale(2); /* FF */
            -webkit-transform: scale(2); /* Safari and Chrome */
            -o-transform: scale(2); /* Opera */
            transform: scale(1.7);
            padding: 10px;
        }

        /* Might want to wrap a span around your checkbox text */
        .checkboxtext {
            /* Checkbox text */
            font-size: 110%;
            display: inline;
        }

        .center {
            text-align: center;
        }

        .att-margin {
            margin-top: 2.5rem;
        }

        .sizeAlert {
            font-size: 18px;
        }

        .btn-Excel-dowlaod {
            background-color: #1f7244;
            color: ghostwhite;
            border: none;
        }

        .btn-Excel-dowlaod:hover {
            background-color: #006400;
            color: ghostwhite;
        }

        .btn-PDF-dowlaod {
            background-color: #a30000;
            color: ghostwhite;
            border: none;
        }

        .btn-PDF-dowlaod:hover {
            background-color: #b71c1c;
            color: ghostwhite;
        }

        .m10px {
            margin-right: 10px !important
        }
    </style>

    <div style="overflow: hidden; width: 0; height: 0;">
        <asp:TextBox runat="server" ID="snsTrans_EmpNum" />
        <asp:TextBox runat="server" ID="snsTrans_Costcenter" />
        <asp:TextBox runat="server" ID="snsTrans_BU" />
        <asp:TextBox runat="server" ID="snsTrans_ToolTagCode" />
        <asp:TextBox runat="server" ID="snsTrans_Type" />
        <asp:TextBox runat="server" ID="snsTrans_sDate" />
        <asp:TextBox runat="server" ID="snsTrans_eDate" />
        <asp:TextBox runat="server" ID="snssite_ref" />
       <%--Export C# Transaction--%>>
    </div>
    

    <div class="page-header">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-4 col-xs-4" style="text-align: left; font-size: 30px;">
                    <h2>Monitoring</h2>
                </div>
                <div class="col-md-8 col-xs-8" style="text-align: right">
                </div>
            </div>
        </div>

    </div>
    <!----End Header---->
    <div class="panel-group">
        <div class="panel nav-tab" style="margin-top: 2em;">
            <div class="panel-heading" id="divTab">
                <ul class="nav nav-tabs">
                    <li class="nav-item active">
                        <a href="#TAB1" class="nav-link" data-toggle="tab" role="tab">Calibration</a>
                    </li>
                    <li class="nav-item ">
                        <a href="#TAB2" class="nav-link" data-toggle="tab" role="tab">Transaction</a>
                    </li>
                </ul>

                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane active" role="tabpanel" id="TAB1">
                            <div class="col-md-12">
                                <div class="row form-group">
                                    <div class="col-md-4 col-xs-4" style="text-align: left; font-size: 30px;">
                                    </div>
                                    <div class="col-md-8 col-xs-8" style="text-align: right">
                                        <%--<button id="ExportExcel_Calibration" class="btn btn-Excel-dowlaod" type="button" data-toggle="modal" >Export</button>--%>
                                    </div>
                                </div>
                                <%--End div Button--%>
                                <div class="col-12">
                                    <div class="row" style="text-align: left; margin-bottom: 25px;">
                                        <h3 style="margin-top: 0px;">Calibration</h3>
                                    </div>
                                    <div class=" row ">
                                        <div class="col-md-12">
                                            <div class="form-group col-md-6 col-xs-12">
                                                <span class="col-md-4 col-xs-12" style="font-weight: bold;">Start Date</span>
                                                <div class="col-md-8 col-xs-12">
                                                    <div class="input-group">
                                                        <input id="textCalibration_StartDate" class="form-control notText max-wide " placeholder="yyyy-mm-dd" type="text" autocomplete="off">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6 col-xs-12">
                                                <span class="col-md-4 col-xs-12" style="font-weight: bold;">End Date</span>
                                                <div class="col-md-8 col-xs-12">
                                                    <div class="input-group">
                                                        <input id="textCalibration_StartEnd" class="form-control notText max-wide " placeholder="yyyy-mm-dd" type="text" autocomplete="off">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row" style="margin-top: 10px; margin-bottom: 20px">
                                        <div class="col-md-12">
                                            <div class="col-md-8">
                                            </div>
                                            <div class="col-md-2">
                                                <button id="btnClearExport_Calibration" class="btn btn-info btn-block" type="button" data-toggle="modal" style="float: right">Clear</button>
                                            </div>
                                            <div class="col-md-2">
                                                <button id="btnSearchExport_Calibration" class="btn btn-warning btn-block" type="button" data-toggle="modal" style="float: right">Search <i class="glyphicon glyphicon-search"></i></button>
                                            </div>
                                        </div>
                                    </div>

                                    <!--panel-default-->

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-hover" id="tableCalibration" style="width: 100%">
                                                    <thead>
                                                        <tr>
                                                            <th>Tag Code</th>
                                                            <th width="15%">Group Name</th>
                                                            <th  width="20%">Type Name</th>
                                                            <th  width="20%">Size Name</th>
                                                            <th  width="15%">Band</th>
                                                            <th >Model</th>
                                                            <th>StartCalibration Date</th>
                                                            <th>EndCalibration Date</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="ListCalibration">
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" role="tabpanel" id="TAB2">
                            <div class="col-md-12">
                                <div class="row form-group">
                                    <div class="col-md-4 col-xs-4" style="text-align: left; font-size: 30px;">
                                    </div>
                                    <div class="col-md-8 col-xs-8" style="text-align: right">
                                        <%--<button id="ExportExcel_Calibration" class="btn btn-Excel-dowlaod" type="button" data-toggle="modal" >Export</button>--%>
                                    </div>
                                </div>
                                <%--End div Button--%>
                                <div class="col-12">
                                    
                                    <div class="row" style="text-align: left; margin-bottom: 25px;">
                                        <h3 style="margin-top: 0px;">Transaction</h3>
                                    </div>
                                    <div class=" row ">
                                        <div class="col-md-12">
                                            <div class="form-group col-md-6 col-xs-12">
                                                <span class="col-md-4 col-xs-12" style="font-weight: bold;">Employee Num</span>
                                                <div class="col-md-8 col-xs-12">
                                                    <div class="input-group">
                                                        <input id="textTrans_EmpNum" type="text" class="form-control max-wide" disabled>
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default Browse_modal" data-type="EmpNum" type="button">
                                                                <i class="glyphicon glyphicon-search"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6 col-xs-12">
                                                <span class="col-md-4 col-xs-12" style="font-weight: bold;">Costcenter</span>
                                                <div class="col-md-8 col-xs-12">
                                                    <div class="input-group">
                                                        <input id="textTrans_Costcenter" type="text" class="form-control max-wide" disabled>
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default Browse_modal" data-type="costCenter" type="button">
                                                                <i class="glyphicon glyphicon-search"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group col-md-6 col-xs-12">
                                                <span class="col-md-4 col-xs-12" style="font-weight: bold;">BU Group</span>
                                                <div class="col-md-8 col-xs-12">
                                                    <div class="input-group">
                                                        <input id="textTrans_BU" type="text" class="form-control max-wide" disabled>
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default Browse_modal" data-type="BUGroup" type="button">
                                                                <i class="glyphicon glyphicon-search"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6 col-xs-12">
                                                <span class="col-md-4 col-xs-12" style="font-weight: bold;">ToolTag Code</span>
                                                <div class="col-md-8 col-xs-12">
                                                    <div class="input-group">
                                                        <input id="textTrans_ToolTagCode" type="text" class="form-control max-wide" disabled>
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default Browse_modal" data-type="ToolTag" type="button">
                                                                <i class="glyphicon glyphicon-search"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group col-md-6 col-xs-12">
                                                <span class="col-md-4 col-xs-12" style="font-weight: bold;">Transaction Date</span>
                                                <div class="col-md-8 col-xs-12">
                                                    <div class="input-group">
                                                        <input id="textTrans_sDate" class="form-control notText max-wide " placeholder="yyyy-mm-dd" type="text" autocomplete="off">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-6 col-xs-12">
                                                <span class="col-md-4 col-xs-12" style="font-weight: bold;">To</span>
                                                <div class="col-md-8 col-xs-12">
                                                    <div class="input-group">
                                                        <input id="textTrans_eDate" class="form-control notText max-wide " placeholder="yyyy-mm-dd" type="text" autocomplete="off">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group col-md-12 col-xs-12">
                                                <span class="col-md-2" style="font-weight: bold;">Type</span>
                                                <div class="col-md-10" style="padding:0px">
                                                    <div class="row">
                                                        <div class="form-group col-md-8">
                                                            <input type="checkbox" class="textTrans_Type col-md-1" data-type="Buy" />
                                                            <label style="font-size: 13px;" class="col-md-3">Buy</label>
                                                            
                                                            <input type="checkbox" class="textTrans_Type col-md-1" data-type="Borrow" />
                                                            <label style="font-size: 13px;" class="col-md-3">Borrow</label>

                                                            <input type="checkbox" class="textTrans_Type col-md-1" data-type="Return" />
                                                            <label style="font-size: 13px;" class="col-md-3">Return</label>
                                                            <%--<input type="checkbox" class="textTrans_Type m10px" data-type="Buy" />
                                                            <label style="font-size: 13px; margin-right: 61px">Buy</label>

                                                            <input type="checkbox" class="textTrans_Type m10px" data-type="Borrow" />
                                                            <label style="font-size: 13px; margin-right: 58px">Borrow</label>

                                                            <input type="checkbox" class="textTrans_Type m10px" data-type="Retrun" />
                                                            <label style="font-size: 13px; margin-right: 10px">Retrun</label>--%>
                                                        </div>
                                                    </div>

                                                    <div class="row">
                                                        <div class="form-group col-md-8">
                                                            <input type="checkbox" class="textTrans_Type col-md-1" data-type="Send Repair" />
                                                            <label style="font-size: 13px;" class="col-md-3">Send Repair</label>
                                                            
                                                            <input type="checkbox" class="textTrans_Type col-md-1" data-type="Receive Repair" />
                                                            <label style="font-size: 13px;" class="col-md-3">Receive Repair</label>

                                                            <input type="checkbox" class="textTrans_Type col-md-1" data-type="Change Status" />
                                                            <label style="font-size: 13px;" class="col-md-3">Change Status</label>
                                                           <%-- <input type="checkbox" class="textTrans_Type m10px" data-type="Send Repair" />
                                                            <label style="font-size: 13px; margin-right: 10px">Send Repair</label>

                                                            <input type="checkbox" class="textTrans_Type m10px" data-type="Receive Repair" />
                                                            <label style="font-size: 13px; margin-right: 10px">Receive Repair</label>

                                                            <input type="checkbox" class="textTrans_Type m10px" data-type="Change Status" />
                                                            <label style="font-size: 13px; margin-right: 10px">Change Status</label>--%>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row" style="margin-top: 10px; margin-bottom: 15px">
                                        <div class="col-md-12">
                                            <div class="col-md-8">
                                            </div>
                                            <div class="col-md-2">
                                                <button id="btnClear_Trans" class="btn btn-info btn-block" type="button" data-toggle="modal" style="float: right">Clear</button>
                                            </div>
                                            <div class="col-md-2">
                                                <button id="btnSearch_Trans" class="btn btn-warning btn-block" type="button" data-toggle="modal" style="float: right">Search <i class="glyphicon glyphicon-search"></i></button>
                                            </div>
                                        </div>
                                       
                                    </div>
                                    <div class="row"  style="  margin-bottom: 5px">
                                        <div class="col-md-12">
                                           <hr />
                                            <div class="col-md-10">
                                            </div>
                                              <div class="col-md-2">
                                                <asp:Button runat="server" class="btn btn-block btn-Excel-dowlaod"
                                                    Text="Export Excel" ID="Export_Transaction_Excel" 
                                                    OnClick="Export_Transaction_Excel_Click" UseSubmitBehavior="false"  />
                                            </div>
                                        </div>
                                    </div>
                                    <!--panel-default-->
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-hover" id="tableTrans" style="width: 100%">
                                                    <thead>
                                                        <tr>
                                                            <th>Employee Num</th>
                                                            <th>Name</th>
                                                            <th>Costcenter</th>
                                                            <th>BU Group</th>
                                                            <th>Type</th>
                                                            <th>Reason</th>
                                                            <th>Location</th>
                                                            <th>ToolTag Code</th>
                                                            <th>Reference</th>
                                                            <th>Transaction date</th>
                                                            <th>K2ID</th>
                                                            <th>Status Tool</th>
                                                            <th>Tool Number</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="ListTrans">
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalBrowseSearch" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-xs" id="modalSize">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                        <div class="col-md-9 col-lg-9 col-sm-12">
                            <h4 id="Titlebrowse" class="modal-title">Text</h4>
                        </div>
                        <div class="col-md-3 col-lg-3 col-sm-12" style="text-align: right;">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="form-group col-md-12 col-lg-12 col-sm-12">
                            <div id="search_box">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">
                    <table id="TbListBrowse" class="table table-striped table-bordered table-responsive">
                        <thead>
                            <tr class="header" id="TBheaderBrowse">
                            </tr>
                        </thead>
                        <tbody id='TBbodyBrowse'></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%--modalBrowseSearch--%>
    <script type="text/javascript">

        $(document).ready(function () {
            var GetSiteURL = "";
            if (getAllUrlParams("site_ref")) {
                GetSiteURL = getAllUrlParams("site_ref");
            }

            var CheckPage = CheckPermission("Monitoring",GetSiteURL);
            if (CheckPage == "") {
                swal({
                    title: 'Error',
                    text: "ไม่มีสิทธิ ในการใช้งาน",
                    icon: 'error',
                    buttons: {
                        confirm: true,
                    },
                }).then(function () {
                        window.location.href = "http://portalapp01/PersonalWorkspace/";
                })
            }
            //Check Permsission

            var tableCalibration = $('#tableCalibration').DataTable({
                searching: false,
                lengthChange: false,
                "ordering": false,
                responsive: true
            });

            var tableTrans = $('#tableTrans').DataTable({
                searching: false,
                lengthChange: false,
                "ordering": false,
                responsive: false
            });

            //GetTrans_Reason();
            //GetTrans_StatusReturn();
            if (GetSiteURL != "") {
                SetDatePicker();
                SetDateCalibration()
                SetStartGetClibration();
                //GetTrans_Type();
                GetTransaction('', '', '', '', '', '', '')
                //set Defalut

                $("#MainContent_snssite_ref").val(GetSiteURL);
                //Set siteref for export
            }


            $(document).on("click", "#btnClearExport_Calibration", function () {
                //$("#textCalibration_StartDate").val('');
                //$("#textCalibration_StartEnd").val('');
                //GetClibration('','')
                SetDateCalibration()
                SetStartGetClibration();
            });
            $(document).on("click", "#btnSearchExport_Calibration", function () {
                var StartDate = $("#textCalibration_StartDate").val();
                var StartEnd = $("#textCalibration_StartEnd").val();
                GetClibration(StartDate, StartEnd);
            });


            $(document).on("click", "#btnClear_Trans", function () {
                $("#textTrans_EmpNum").val('');
                $("#textTrans_Costcenter").val('');
                $("#textTrans_BU").val('');
                $("#textTrans_ToolTagCode").val('');
                //$("#textTrans_Type").val('');
                 $(".textTrans_Type").prop("checked", false);

                $("#textTrans_sDate").val('');
                $("#textTrans_eDate").val('');
                $("#MainContent_snsTrans_EmpNum").val('');
                $("#MainContent_snsTrans_Costcenter").val('');
                $("#MainContent_snsTrans_BU").val('');
                $("#MainContent_snsTrans_ToolTagCode").val('');
                $("#MainContent_snsTrans_Type").val('');
                $("#MainContent_snsTrans_sDate").val('');
                $("#MainContent_snsTrans_eDate").val('');
                GetTransaction('', '', '', '', '', '', '')
            });

            $(document).on("click", "#btnSearch_Trans", function () {
                var Emp_Num = $("#textTrans_EmpNum").val();
                var Costcenter = $("#textTrans_Costcenter").val();
                var BU = $("#textTrans_BU").val();
                var ToolTag_Code = $("#textTrans_ToolTagCode").val();
                var Type = "";
                let count_checkbox = 0;
                $('.textTrans_Type').each(function (index, val) {
                    let value = $(this).attr("data-type");
                    if (this.checked === true) {
                        if (count_checkbox == 0) {
                            Type += "  [Type] = '" + value + "' ";
                        } else {
                            
                            Type += " OR  [Type] = '" + value + "' ";
                        }
                    count_checkbox++;
                    }
                });
                console.log(count_checkbox)
                var Start_Date = $("#textTrans_sDate").val();
                var End_Date = $("#textTrans_eDate").val();
                $("#MainContent_snsTrans_EmpNum").val(Emp_Num);
                $("#MainContent_snsTrans_Costcenter").val(Costcenter);
                $("#MainContent_snsTrans_BU").val(BU);
                $("#MainContent_snsTrans_ToolTagCode").val(ToolTag_Code);
                $("#MainContent_snsTrans_Type").val(Type);
                $("#MainContent_snsTrans_sDate").val(Start_Date);
                $("#MainContent_snsTrans_eDate").val(End_Date);
                //console.log(Emp_Num)
                //console.log(Costcenter)
                //console.log(BU)
                //console.log(ToolTag_Code)
                //console.log(Type)
                //console.log(Start_Date)
                //console.log(End_Date)
                GetTransaction(Emp_Num, Costcenter, BU, ToolTag_Code, Type, Start_Date, End_Date)
            });
            


            $(document).on("click", ".Browse_modal", function () {
                var fragment = '';
                var fragmentHeader = '';
                var Type = $(this).attr("data-type");
                $("#Titlebrowse").text(Type);
                $("#TBbodyBrowse").empty();
                $("#TBheaderBrowse").empty();
                $("#search_box").empty();
                $("#search_box").append('<input type="text" id="search_' + Type + '" placeholder="Search.." class="form-control max-wide" autocomplete="off">');

                if (Type == 'EmpNum') {
                    Get_Employee('');
                }//End 
                else if (Type == 'costCenter') {
                    Get_costCenter('');
                }//End 
                else if (Type == 'BUGroup') {
                    Get_BUGroup('');
                }//End 
                else if (Type == 'ToolTag') {
                    BrowseToolTag('');
                }//End 
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                $("#modalBrowseSearch").modal("show");
            });

            $(document).on("click", ".clickselecttext_User_Number", function () {
                var tr = $(this).closest("tr");
                var EmpNum = tr.find("td:nth-child(1)").text();
                var name = tr.find("td:nth-child(2)").text();
                $("#textTrans_EmpNum").val(EmpNum);
                $("#modalBrowseSearch").modal("hide");
            });
            $(document).on("click", ".clickselecttext_Costcenter", function () {
                var tr = $(this).closest("tr");
                var Costcenter = tr.find("td:nth-child(1)").text();
                var desc = tr.find("td:nth-child(2)").text();
                $("#textTrans_Costcenter").val(Costcenter);
                $("#modalBrowseSearch").modal("hide");
            });
            $(document).on("click", ".clickselecttext_BUGroup", function () {
                var tr = $(this).closest("tr");
                var BU = tr.find("td:nth-child(1)").text();
                var Desc = tr.find("td:nth-child(2)").text();
                $("#textTrans_BU").val(BU);
                $("#modalBrowseSearch").modal("hide");
            });
            $(document).on("click", ".clickselecttext_ToolTag", function () {
                var tr = $(this).closest("tr");
                var TagCode = tr.find("td:nth-child(1)").text();
                $("#textTrans_ToolTagCode").val(TagCode);
                $("#modalBrowseSearch").modal("hide");
            });
            //Click Select


            $(document).on("change", "#search_EmpNum", function () {
                var search = $(this).val();
                Get_Employee(search);
            });
            $(document).on("change", "#search_costCenter", function () {
                var search = $(this).val();
                Get_costCenter(search);
            });
            $(document).on("change", "#search_BUGroup", function () {
                var search = $(this).val();
                Get_BUGroup(search);
            });
            $(document).on("change", "#search_ToolTag", function () {
                var search = $(this).val();
                BrowseToolTag(search)
            });
            //Change Search

            function Get_Employee(search) {
                $("#Titlebrowse").text('Search Employee');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                fragmentHeader = `<th>EmpNum</th>
                                     <th>Emp Name</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/Get_Employee") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[Site_Ref],[Emp_Num],[sname],[name],[dept],[Uf_Level],[Uf_Location],[Uf_PositionID],[Uf_Jobtitle],[Uf_JobTitleEN],[BUGroup],[BUGroupDesc]
                                var Site_Ref = val[0];
                                var Emp_Num = val[1];
                                var sname = val[2];
                                var name = val[3];
                                var dept = val[4];
                                var Uf_Level = val[5];
                                var Uf_Location = val[6];
                                var Uf_PositionID = val[7];
                                var Uf_Jobtitle = val[8];
                                var Uf_JobTitleEN = val[9];
                                var BUGroup = val[10];
                                var BUGroupDesc = val[11];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselecttext_User_Number" href="javascript:void(0)">' + Emp_Num + '</a></td>';
                                fragment += '<td><a class="clickselecttext_User_Number" href="javascript:void(0)">' + name + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                $("#modalBrowseSearch").modal("show");
            }
            
            function Get_costCenter(search) {
                $("#Titlebrowse").text('Search CostCenter');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                fragmentHeader = `<th>CostCenter</th>
                                     <th>Desc</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/VW_HR_List_Company") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var name = val[1];
                                var id = val[0];
                                var group = val[4];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselecttext_Costcenter" href="javascript:void(0)" >' + id + '</a></td>';
                                fragment += '<td><a class="clickselecttext_Costcenter" href="javascript:void(0)" >' + name + '</a></td>';
                                //fragment += '<td><a class="clickselectdepartment" href="javascript:void(0)" >' + group + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                $("#modalBrowseSearch").modal("show");
            }
            function Get_BUGroup(search) {
                $("#Titlebrowse").text('Search BU Group');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                fragmentHeader = `<th>Group</th>
                                  <th>Desc</th>
                                `;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/Get_BUGroup") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var Uf_Group = val[0];
                                var GroupDesc = val[1];
                                fragment += '<tr>';

                                fragment += '<td><a class="clickselecttext_BUGroup" href="javascript:void(0)">' + Uf_Group + '</a></td>';
                                fragment += '<td><a class="clickselecttext_BUGroup" href="javascript:void(0)">' + GroupDesc + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                $("#modalBrowseSearch").modal("show");
            }

            function BrowseToolTag(search) {
                $("#Titlebrowse").text('Search ToolTag');
                var fragmentHeader = '';
                var fragment = '';
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                $("#modalSize").attr('class', 'modal-dialog modal-lg');
                fragmentHeader = `<th>Tag Code</th>
                                     <th>Band</th>
                                    <th>Modal</th>
                                    <th>Group</th>`;
                $.ajax({
                    type: "POST",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/BrowseVW_ToolTag_Master") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search, site_ref: GetSiteURL }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var ToolTag_Code = val[0];
                                var Description = val[1];
                                var Brand = val[2];
                                var Model = val[3];
                                var Vendor_Code = val[4];
                                var Vendor_Name = val[5];
                                var Purchase_Price = val[6];
                                var Market_Price = val[7];
                                var Status = val[8];
                                var Date_Inactive = val[9];
                                var Reason = val[10];
                                var Location = val[11];
                                var Asset_No = val[12];
                                var Serial_No = val[13];
                                var Picture = val[14];
                                var BUGroup = val[15];
                                var PO_No = val[16];
                                var Date_Purchase = val[17];
                                var Calibration = val[18];
                                var GroupCode = val[19];
                                var GroupName = val[20];
                                var TypeCode = val[21];
                                var TypeName = val[22];
                                var SizeCode = val[23];
                                var SizeName = val[24];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselecttext_ToolTag" href="javascript:void(0)">' + ToolTag_Code + '</a></td>';
                                fragment += '<td><a class="clickselecttext_ToolTag" href="javascript:void(0)">' + Brand + '</a></td>';
                                fragment += '<td><a class="clickselecttext_ToolTag" href="javascript:void(0)">' + Model + '</a></td>';
                                fragment += '<td><a class="clickselecttext_ToolTag" href="javascript:void(0)">' + GroupName + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                $("#modalBrowseSearch").modal("show");

            }

            function SetDateCalibration() {
                var today = new Date(); 
                //var dd = String(today.getDate() ,0).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                var nextMonth = new Date(today.getFullYear(), today.getMonth() + 2, 0);
                var mm_next = String(nextMonth.getMonth() + 1).padStart(2, '0');
                var dd_next_last = String(nextMonth.getDate(), 0).padStart(2, '0');
                console.log(nextMonth);

                var thisday = yyyy + '-' + mm + '-01';
                var lastdayOfNextMonth = yyyy + '-' + mm_next + '-' + dd_next_last;
                $("#textCalibration_StartDate").val(thisday);
                $("#textCalibration_StartEnd").val(lastdayOfNextMonth);
            }

            function SetStartGetClibration() {
                var StartDate = $("#textCalibration_StartDate").val();
                var StartEnd = $("#textCalibration_StartEnd").val();
                GetClibration(StartDate, StartEnd);
            }

            function GetClibration(StartDate, StartEnd) {
                tableCalibration.clear().draw();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/VW_ToolTag_Monitoring_Calibration") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ StartDate: StartDate, StartEnd: StartEnd ,site_ref:GetSiteURL}),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ToolTag_Code],[StartCalibrationDate],[EndCalibrationDate],[Detail],[Description],[Brand],[Model],[GroupCode],[GroupName],[TypeCode],[TypeName],[SizeCode],[SizeName]
                                var ToolTag_Code = val[0];
                                var StartCalibrationDate = val[1];
                                var EndCalibrationDate = val[2];
                                var Detail = val[3];
                                var Description = val[4];
                                var Brand = val[5];
                                var Model = val[6];
                                var GroupCode = val[7];
                                var GroupName = val[8];
                                var TypeCode = val[9];
                                var TypeName = val[10];
                                var SizeCode = val[11];
                                var SizeName = val[12];
                                tableCalibration.row.add(['<a  href="./MaintainToolTag.aspx?site_ref=' + GetSiteURL + '&ToolTag=' + ToolTag_Code + '" target="_blank" >' + ToolTag_Code + '</a>', GroupName, TypeName, SizeName, Brand, Model, StartCalibrationDate.substr(0, 10), EndCalibrationDate.substr(0, 10)]).draw().node();
                            });
                        }
                    }
                });

            }

            function GetTransaction(Emp_Num, Costcenter, BU, ToolTag_Code, Type, Start_Date, End_Date) {
                tableTrans.clear().draw();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/Moniter_VW_ToolTag_Transaction") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({
                        Emp_Num: Emp_Num, Costcenter: Costcenter, BU: BU, ToolTag_Code: ToolTag_Code
                        , Type: Type, Start_Date: Start_Date, End_Date: End_Date
                        , site_ref: GetSiteURL
                    }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                // [site_ref],[ToolNumber],[Type],[Reason],[ToolTag_Code]
                                //,[Reference],[BU_Group],[Location],[CreateBy],[Requestor],[CostCenter]
                                //,[K2ID],[WFID],[RefID],[Status_Tool],[Trans_Date]
                                var site_ref = val[0]
                                var ToolNumber = val[1]
                                var Type = val[2]
                                var Reason = val[3]
                                var ToolTag_Code = val[4]
                                var Reference = val[5]
                                var BU_Group = val[6]
                                var Location = val[7]
                                var CreateBy = val[8]
                                var Requestor = val[9]
                                var CostCenter = val[10]
                                var K2ID = val[11]
                                var WFID = val[12]
                                var RefID = val[13]
                                var Status_Tool = val[14]
                                var Trans_Date = val[15]
                                var name = val[16];
                                tableTrans.row.add([Requestor
                                    , name
                                    , CostCenter
                                    , BU_Group
                                    , Type
                                    , Reason
                                    , Location
                                    , '<a  href="./MaintainToolTag.aspx?site_ref=' + site_ref + '&ToolTag=' + ToolTag_Code + '" target="_blank" >' + ToolTag_Code + '</a>'
                                    , Reference
                                    , Trans_Date.substr(0, 10)
                                    , '<a href="http://portalapp01/application_Software_Space/IC_InventoryControl/IC13_02%20-%20ToolRequest.aspx?WT=IC13_02&Site_Ref='+site_ref+'&ID='+WFID+'&K2='+K2ID+'&TypeK2=K2&FlowType=M" target="_blank">' + K2ID + '<a/>'
                                    , Status_Tool
                                    , ToolNumber]).draw().node();
                            });
                        }
                    }
                });

            }
            
            <%--function GetTrans_StatusReturn() {
                var StatusReturn = '<option value="">=== Please Select StatusReturn ===</option>';
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%=ResolveUrl("Default.aspx/StatusTool_VW_MaintainDropDown_FromDBK2")%>",
                    contentType: "application/json; charset = utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var WF_Type = val[0];
                                var Name_DDL = val[1];
                                var Value = val[2];
                                var Text_TH = val[3];
                                var Text_EN = val[4];
                                var Status = val[5];
                                StatusReturn += '<option value="' + Value + '">' + Text_TH + '</option>';
                            });
                            $("#textTrans_StatusReturn").append(StatusReturn);
                        }
                    }
                });
            }--%>
           <%-- function GetTrans_Type() {
                var Type = '<option value="">=== Please Select Type ===</option>';
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%=ResolveUrl("Default.aspx/Type_VW_MaintainDropDown_FromDBK2")%>",
                    contentType: "application/json; charset = utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var WF_Type = val[0];
                                var Name_DDL = val[1];
                                var Value = val[2];
                                var Text_TH = val[3];
                                var Text_EN = val[4];
                                var Status = val[5];
                                Type += '<option value="' + Value + '">' + Text_TH + '</option>';
                            });
                            $("#textTrans_Type").append(Type);
                        }
                    }
                });
            }--%>
            <%--function GetTrans_Reason() {
                var Reason = '<option value="">=== Please Select Reason ===</option>';
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%=ResolveUrl("Default.aspx/refType_VW_MaintainDropDown_FromDBK2")%>",
                    contentType: "application/json; charset = utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var WF_Type = val[0];
                                var Name_DDL = val[1];
                                var Value = val[2];
                                var Text_TH = val[3];
                                var Text_EN = val[4];
                                var Status = val[5];
                                Reason += '<option value="' + Value + '">' + Text_TH + '</option>';
                            });
                            $("#textTrans_Reason").append(Reason);
                        }
                    }
                });
            }--%>


            function SetDatePicker() {
                $('#textCalibration_StartDate').datepicker({ format: 'yyyy-mm-dd', autoHide: true });
                $('#textCalibration_StartEnd').datepicker({ format: 'yyyy-mm-dd', autoHide: true });
                $('#textTrans_sDate').datepicker({ format: 'yyyy-mm-dd', autoHide: true });
                $('#textTrans_eDate').datepicker({ format: 'yyyy-mm-dd', autoHide: true });
            }


        });


    </script>
</asp:Content>
