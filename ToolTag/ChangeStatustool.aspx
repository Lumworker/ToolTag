<%@ Page Title="ChangeStatustool" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangeStatustool.aspx.cs" Inherits="ToolTag.ChangeStatustool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .max-wide {
            max-width: 100%;
        }

        .min-wide {
            min-width: 100%;
        }

        .datepicker {
            background: #333;
            border: 1px solid #555;
            color: #EEE;
        }

        .nav-tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

        .ui-datepicker {
            z-index: 2 !important;
        }

        .btn-margin-left {
            margin-left: 2px;
        }

        .img-thumbnail {
            display: inline-block;
            max-width: 100%;
            padding: 4px;
            line-height: 1.42857143;
            border: 1px solid #ddd;
            border-radius: 4px;
            -webkit-transition: all .2s ease-in-out;
            -o-transition: all .2s ease-in-out;
            transition: all .2s ease-in-out;
        }

        input[type=checkbox] {
            /* Double-sized Checkboxes */
            -ms-transform: scale(2); /* IE */
            -moz-transform: scale(2); /* FF */
            -webkit-transform: scale(2); /* Safari and Chrome */
            -o-transform: scale(2); /* Opera */
            transform: scale(2);
            padding: 10px;
            margin-right: 1em;
            margin-bottom: 1em;
        }

        input[type=radio] {
            /* Double-sized Checkboxes */
            -ms-transform: scale(2); /* IE */
            -moz-transform: scale(2); /* FF */
            -webkit-transform: scale(2); /* Safari and Chrome */
            -o-transform: scale(2); /* Opera */
            transform: scale(2);
            padding: 10px;
            margin-right: 1em;
            margin-bottom: 1em;
        }

        /* Might want to wrap a span around your checkbox text */
        .checkboxtext {
            /* Checkbox text */
            font-size: 110%;
            display: inline;
        }

        .sorting_1 {
            text-align: center;
        }

        .center {
            text-align: center;
        }

        .att-margin {
            margin-top: 2.5rem;
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
    </style>
    <div class="page-header">
        <h2>Change Status</h2>
        <div class="row">
        </div>
    </div>

    <div class="panel-group">
        <div class="panel-body">
            <div class="row">
                <div id="smartwizard">
                    <ul>
                        <li class="check" data-step="Step1"><a href="#step-1">Import Template</a></li>
                        <li class="check" data-step="Step2"><a href="#step-2">Edit Template</a></li>
                        <li class="check" data-step="Step3"><a href="#step-3">List Template</a></li>
                        <li class="check" data-step="Step4"><a href="#step-4">Complete</a></li>
                    </ul>
                    <div>
                        <%--======Step 1======--%>
                        <div id="step-1" class="">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-6">
                                        <div class="panel-group">
                                            <div class="panel panel-default" style="margin-top: 1em;">
                                                <div class="panel-heading">
                                                    <h4>Import Template</h4>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <div class="row" style="height: 220px">
                                                            <div class="col-md-12">
                                                                <div class="row">
                                                                    <div class="col-md-12" style="margin-top: 2rem;">
                                                                        <h4>1) Download Template</h4>
                                                                        <button class="btn btn-block btn-Excel-dowlaod max-wide"
                                                                            onclick="File_ChangeStatusTool()" type="button">
                                                                            Download Template
                                                                        </button>
                                                                        <asp:Button ID="File_ChangeStatusTool" runat="server" OnClick="File_ChangeStatusTool_Click" Style="display: none" />
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-12" style="margin-top: 3rem;">
                                                                        <h4>2) Import Template</h4>
                                                                        <div class="input-group">
                                                                            <input type="file" class="form-control max-wide" id="fileUpload" />
                                                                            <div class="input-group-btn">
                                                                                <button class="btn btn-danger" id="Delete_upload" type="button" data-type="GetUsername">
                                                                                    <i class="glyphicon glyphicon-trash"></i>
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div style="text-align: right">
                                                        <button id="nextTo_Page2" class="btn btn-warning Pos_Viewer" type="button" data-toggle="modal" style="text-align: left; margin-top: 2rem;">Next</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="panel-group">
                                            <div class="panel panel-default" style="margin-top: 1em;">
                                                <div class="panel-heading">
                                                    <h4>Manual</h4>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <div class="row" style="height:240px">
                                                            <div class="col-md-12" style="margin-top: 90px;margin-left: 102px">
                                                             <h4 style="color:red">*กรณีที่ไม่ต้องการใช้ Template สามารถเพิ่ม </h4>
                                                             <h4 style="color:red">Tool Tag Code ที่ต้องการ Change Status ได้*</h4>
                                                                 
                                                           </div>
                                                        </div>
                                                    </div>
                                                    <div style="text-align: right">
                                                        <button id="nextTo_Page2_Manual" class="btn btn-warning Pos_Viewer" type="button" data-toggle="modal">Next</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======Step 2======--%>
                        <div id="step-2" class="">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-12 " style="margin-top: 2rem">
                                        <div class="col-md-6" style="text-align: left;">
                                            <h4 style="margin-left: 5px;">Edit Template</h4>
                                        </div>
                                        <div class="col-md-6" style="text-align: right;">
                                            <button id="nextTo_Page3" class="btn btn-warning" type="button"
                                                data-toggle="modal">
                                                Next</button>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="panel-group">
                                            <div class="panel panel-default" style="margin-top: 1em;">
                                                <div class="panel-heading">
                                                    <h3 style="margin-left: 5px;">Error case</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row col-md-12">
                                                        <span><i class="glyphicon glyphicon-stop" style="color:rgb(244,67,54)"></i> : Tool Tag Code ไม่มีในระบบ <i class="glyphicon glyphicon-stop" style="color:rgb(255,202,40)"></i>  : Tool Tag code ซ้ำ  </span>
                                                        <br />
                                                        <span><i class="glyphicon glyphicon-stop" style="color:rgb(92, 184, 92)"></i>  : Tool Tag code สามารถนำข้อมูลเข้าได้ปกติ </span>
                                                        <table id="TB_Import_Error" class="table table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th>ToolTag Code</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <%--       <tr>
                                                                    <td>
                                                                        <div class="input-group" data-error="Notfound" style="min-width: 100%; opacity: 1;">
                                                                            <input id="textErrorCase_ToolTagCode_1" value="A1234" type="text" class="form-control max-wide" disabled>
                                                                            <div class="input-group-btn">
                                                                                <button class="btn btn-default Browse_modal" data-type="ToolTag_CaseError" data-row="1" type="button">
                                                                                    <i class="glyphicon glyphicon-search"></i>
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <div class="input-group" data-error="Duplicate" style="min-width: 100%; opacity: 1;">
                                                                            <input id="textErrorCase_ToolTagCode_2" value="B1234" type="text" class="form-control max-wide" disabled>
                                                                            <div class="input-group-btn">
                                                                                <button class="btn btn-default Browse_modal" data-type="ToolTag_CaseError" data-row="2" type="button">
                                                                                    <i class="glyphicon glyphicon-search"></i>
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="input-group" data-error="Duplicate" style="min-width: 100%; opacity: 1;">
                                                                                <input id="textErrorCase_ToolTagCode_3" value="B1234" type="text" class="form-control max-wide" disabled>
                                                                                <div class="input-group-btn">
                                                                                    <button class="btn btn-default Browse_modal" data-type="ToolTag_CaseError" data-row="3" type="button">
                                                                                        <i class="glyphicon glyphicon-search"></i>
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                    </tr>--%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="panel-group">
                                            <div class="panel panel-default" style="margin-top: 1em;">
                                                <div class="panel-heading">
                                                    <h3 style="margin-left: 5px;">Complete case</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row col-md-12">
                                                        <table id="TB_Import_Complete" class="table table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th>ToolTag Code</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
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
                        <%--======Step 3======--%>
                        <div id="step-3" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>List Template</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div style="text-align: right; margin-bottom: 2rem;">
                                                    <button class="btn btn-success" id="btnAddList" type="button" data-toggle="modal" style="font-weight: bold;">Add</button>
                                                    <button id="nextTo_Page4" class="btn btn-warning" type="button" data-toggle="modal">Next</button>
                                                </div>
                                                <table id="TB_ListTemplate" class="table table-bordered" style="width: 100%">
                                                    <thead>
                                                        <tr>
                                                            <th>ToolTag Code</th>
                                                            <th>Current status</th>
                                                            <th>status</th>
                                                            <th>reason</th>
                                                            <th>Reference</th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======Step 4======--%>
                        <div id="step-4" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Complete</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div style="text-align: right; margin-bottom: 2rem;">
                                                </div>
                                                <table id="TB_Complete" class="table table-bordered" style="width: 100%">
                                                    <thead>
                                                        <tr>
                                                            <th>ToolTag Code</th>
                                                            <th>Status</th>
                                                            <th>Reason</th>
                                                            <th>Reference</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
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

    <div class="modal fade" id="modal_ListToolTag" role="dialog" data-backdrop="static" data-keyboard="false" style="align-content: center; margin-top: 15px;">
        <div class="modal-dialog modal-lg" style="margin: auto;">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="col-md-7 col-lg-7 col-sm-12">
                        </div>
                        <div class="col-md-5 col-lg-5 col-sm-12" style="text-align: right;">
                            <button type="button" class="btn btn-warning div_ListNew" id="btnSubmitList">Save</button>
                            <button type="button" class="btn btn-success div_ListEdit" id="btnSaveList">Save</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
                <%--End modal Header--%>
                <div class="modal-body" style="overflow-y: auto; max-height: 30em; max-width: 100%;">
                    <div class="panel-group">
                        <div class="col-md-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="modal-title" style="font-weight: bold;">Add ToolTag</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        <div class="row">

                                            <div class="col-md-12 form-group" style="display: none">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">id  : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <input id="ListToolTag_row_id" type="text" class="form-control max-wide" disabled>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group" style="display: none">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">BU  : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <input type="text" class="form-control max-wide" id="textList_BU" disabled>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group" style="display: none">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Location : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <input type="text" class="form-control max-wide" id="textList_Location" disabled>
                                                </div>
                                            </div>
                                            <%--Hidden--%>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">ToolTag : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="input-group div_ListNew">
                                                        <input type="text" class="form-control max-wide textList_ToolTagCode" disabled>
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default Browse_modal" data-type="ToolTagCode_AddList" type="button">
                                                                <i class="glyphicon glyphicon-search"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="div_ListEdit">
                                                        <input type="text" class="form-control max-wide textList_ToolTagCode" disabled>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Current Status : </label>
                                                </div>
                                                <div class="col-md-9">
                                                     <input type="text" id="textList_Current_Status" class="form-control max-wide " disabled>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Status : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <select class="form-control max-wide" id="textList_Status">
                                                        <option value="">=== Plase Select Status ===</option>
                                                        <option value="Active">Active</option>
                                                        <option value="InActive">InActive</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Reason : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <select class="form-control max-wide" id="textList_reason">
                                                        <option value="">=== Plase Select Reason ===</option>
                                                        <option value="ชำรุด">ชำรุด</option>
                                                        <option value="จำหน่าย">จำหน่าย</option>
                                                        <option value="จำหน่ายซาก">จำหน่ายซาก</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Reference : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <input id="textList_Reference" type="text" class="form-control max-wide" disabled>
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default Browse_modal" data-type="Reference" type="button">
                                                                <i class="glyphicon glyphicon-search"></i>
                                                            </button>
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
                <%--Modal Body --%>
                <div class="modal-footer">
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
                            <div id="row_box" style="display: none">
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
    <%--Browse_modal--%>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/xlsx.full.min.js"></script>
    <%--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/jszip.js"></script>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            var site_ref = ""
            if (getAllUrlParams("site_ref")) {
                site_ref = getAllUrlParams("site_ref");
            }
            var CheckPage = CheckPermission('Change StatusTool', site_ref);

            if (CheckPage == "" && site_ref!="") {
                    $(".Pos_Viewer").hide();
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
                } else if (CheckPage == "Viewer")  {
                    $(".Pos_Viewer").hide();
                }

            $('#smartwizard').smartWizard({
                theme: 'arrows',
                keyNavigation: false,
                showStepURLhash: false,
                selected: 0, //ใส่ 0 จะเริ่มที่ Step แรกสุด
                transitionEffect: 'slide',
                toolbarSettings: { toolbarPosition: 'none', showNextButton: 'false', showPreviousButton: 'false' }
            });

            var TB_Import_Complete = $('#TB_Import_Complete').DataTable({
                searching: false,
                lengthChange: false,
                "ordering": false,
            });

            var TB_Import_Error = $('#TB_Import_Error').DataTable({
                searching: false,
                "ordering": false,
                lengthChange: false,
                "rowCallback": function (row, data, index) {
                    let errorType = $(row).find("td:nth-child(1)").find("div.input-group").attr("data-error")
                    if (errorType == "Error") {
                        $('td', row).attr("style", "background-color:rgb(244,67,54); opacity: 0.8;");
                    }
                    else if (errorType == "Duplicate") {
                        $('td', row).attr("style", "background-color:rgb(255,202,40); opacity: 0.8;");
                    }
                },
            });

            var TB_ListTemplate = $('#TB_ListTemplate').DataTable({
                searching: false,
                lengthChange: true,
                "ordering": false,
                "rowCallback": function (row, data, index) {
                    let type = $(row).find("td:nth-child(6)").find("button").attr("row-type")
                    if (type == "new") {
                        //$('td', row).attr("style", "background-color:rgb(0,230,118);");
                    }
                    console.log(type);
                }
            });

            var TB_Complete = $('#TB_Complete').DataTable({
                searching: false,
                lengthChange: true,
                "ordering": false,
            });

            function SP_ToolTag_ChangeStatus_Temp(data) {
                //Read the Excel File data.
                var workbook = XLSX.read(data, {
                    type: 'binary'
                });

                var firstSheet = workbook.SheetNames[0];
                if (firstSheet == "ToolTag_Change_Status") {
                    var excelRows = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[firstSheet]);
                    var Array_value = [];
                    //console.log(excelRows);
                    for (var i = 0; i < excelRows.length; i++) {
                        let Array_Temp = [];
                        let ToolTag_code = (excelRows[i].ToolTag_code ? excelRows[i].ToolTag_code : "");
                        let status = (excelRows[i].status ? excelRows[i].status : "");
                        let reason = (excelRows[i].reason ? excelRows[i].reason : "");
                        let Reference = (excelRows[i].Reference ? excelRows[i].Reference : "");
                        status = status.toLowerCase().replace(/ /g, '');//Set To Lower and trim
                        if (status == "inactive") {
                            status = "InActive";
                        } else if(status == "active"){
                            status = "Active";
                        }
                        //ตัดเว้นวรรค/ตัวเล็กตัวใหญ่ และเซ็ตค่าตัวอักษรใหม่
                        Array_Temp.push(ToolTag_code, status, reason, Reference);
                        Array_value.push(Array_Temp);
                    }
                    //console.log(Array_value);
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/SP_ToolTag_ChangeStatus_Temp") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({ Array_value: Array_value }),
                        success: function (response) {
                            //if (response.d.length > 0) {
                            //    $.each(response.d, function (index, val) {
                            //    });
                            //}
                        }
                    });
                }
            }

            $(document).on("click", "#Delete_upload", function () {
                $("#fileUpload").val("")
            });
            //End Import file

            $(document).on("click", "#nextTo_Page2", function () {
                var filecheck = $("#fileUpload").val();
                if (filecheck) {
                    var fileUpload = $("#fileUpload")[0];
                    //var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.xls|.xlsx)$/;
                    var regex = /(.xls|.xlsx)$/;
                    if (regex.test(fileUpload.value.toLowerCase())) {
                        if (typeof (FileReader) != "undefined") {
                            $("#IMGUpload").modal("show");
                            //console.log(fileUpload.files[0]);
                            var reader = new FileReader();
                            //For Browsers other than IE.
                            if (reader.readAsBinaryString) {
                                reader.onload = function (e) {
                                    var workbook = XLSX.read(e.target.result, {
                                        type: 'binary'
                                    });
                                    var firstSheet = workbook.SheetNames[0];
                                    if (firstSheet == "ToolTag_Change_Status") {
                                        SP_ToolTag_ChangeStatus_ClearTemp()
                                        //Clear To temp
                                        SP_ToolTag_ChangeStatus_Temp(e.target.result);
                                        //Inert To temp
                                        VW_ToolTag_ChangeStatus_CheckTemplate()
                                        //ProcessExcel(e.target.result);
                                        // Write Table
                                        $('#smartwizard').data('smartWizard')._showStep(1);

                                    } else {
                                      swal('Error', 'Please upload correct Excel file', 'error');
                                    }
                                };
                                reader.readAsBinaryString(fileUpload.files[0]);
                            } else {
                                //For IE Browser.
                                reader.onload = function (e) {
                                    var data = "";
                                    var bytes = new Uint8Array(e.target.result);
                                    for (var i = 0; i < bytes.byteLength; i++) {
                                        data += String.fromCharCode(bytes[i]);
                                    }
                                     var workbook = XLSX.read(data, {
                                        type: 'binary'
                                    });
                                    var firstSheet = workbook.SheetNames[0];
                                    if (firstSheet == "ToolTag_Change_Status") {
                                        SP_ToolTag_ChangeStatus_ClearTemp()
                                        //Clear To temp
                                        SP_ToolTag_ChangeStatus_Temp(data);
                                        //Inert To temp
                                        VW_ToolTag_ChangeStatus_CheckTemplate()
                                        //ProcessExcel(data);
                                        $('#smartwizard').data('smartWizard')._showStep(1);
                                    } else {
                                      swal('Error', 'Please upload correct Excel file', 'error');
                                    }
                                };
                                reader.readAsArrayBuffer(fileUpload.files[0]);
                            };
                        } else {
                            swal('Error', 'This browser does not support HTML5.', 'error');
                        }
                    } else {
                        console.log('not excel file')
                        swal('Error', 'Please upload Excel file only', 'error');
                    }
                } else {
                    swal('Error', 'Please upload Excel file Template', 'error');
                }
                  $("#IMGUpload").modal("hide")
            });

            $(document).on("click", "#nextTo_Page2_Manual", function () {

                $('#smartwizard').data('smartWizard')._showStep(2);
            });

            $(document).on("click", "#nextTo_Page3", function () {
                TB_ListTemplate.clear().draw();
                var rows_Error = TB_Import_Error.$("tr");
                var rows = TB_Import_Complete.$("tr");
                var check = true
                rows_Error.each(function () {
                    var ErrorCase = $(this).find("td:nth-child(1)").find("div.input-group").attr("data-error");
                    console.log(ErrorCase);
                    if (ErrorCase == "Error" || ErrorCase == "Duplicate") {
                        check = false
                    }
                });
                console.log(check)
                if (check == true) {
                    rows_Error.each(function () {
                        var row = $(this).find("td:nth-child(1)").find("input");
                        var ToolTagCode = row.val();
                        var Status = row.attr("data-status");
                        var Current_Status = row.attr("data-current_status");
                        var BU = row.attr("data-bu");
                        var Reference = row.attr("data-reference");
                        var Location = row.attr("data-location");
                        var reason = row.attr("data-reason");
                        var id = row.attr("data-id");
                        TB_ListTemplate.row.add([
                            ToolTagCode,
                            Current_Status,
                            Status,
                            reason,
                            Reference,
                            '<button class="btn btn-warning btnEditList" row-type="complete" ' +
                            'data-bu="' + BU + '" data-location="' + Location + '"' +
                            ' row-id="' + id + '"' + ' id = "List_row_' + id + '" type = "button" > Edit </button > ',
                        ]).draw().node();
                    });

                    rows.each(function () {
                        var row = $(this).find("td:nth-child(1)").find("span")
                        var Current_Status = row.attr("data-current_status");
                        var Status = row.attr("data-status");
                        console.log(Status);
                        var BU = row.attr("data-bu");
                        var Reference = row.attr("data-reference");
                        var Location = row.attr("data-location");
                        var reason = row.attr("data-reason");
                        var id = row.attr("data-id");
                        var ToolTagCode = row.text();
                        TB_ListTemplate.row.add([
                            ToolTagCode,
                            Current_Status,
                            Status,
                            reason,
                            Reference,
                            '<button class="btn btn-warning btnEditList" row-type="complete" ' +
                            'data-bu="' + BU + '" data-location="' + Location + '"' +
                            ' row-id="' + id + '"' + ' id = "List_row_' + id + '" type = "button" > Edit </button > ',
                        ]).draw().node();
                    });

                    $('#smartwizard').data('smartWizard')._showStep(2);
                } else {
                    swal('Error Case not Complete', 'กรุณาตรวจสอบข้อมูล', 'error');
                }


            });

            $(document).on("click", "#nextTo_Page4", function () {
                swal({
                    title: 'Confirm to change Status?',
                    text: "ตรวจสอบความถูกต้องของข้อมูล ก่อนยืนยัน",
                    icon: 'info',
                    buttons: {
                        cancel: true,
                        confirm: true,
                    },
                }).then(function (confirm) {
                    if (confirm) {
                        console.log('yes')
                        TB_Complete.clear().draw();
                        //Clear Complete
                        var rows = TB_ListTemplate.$("tr");
                        rows.each(function () {
                            var ToolTag_Code = $(this).find("td:nth-child(1)").text();
                            var Currrent_Status = $(this).find("td:nth-child(2)").text();
                            var Status = $(this).find("td:nth-child(3)").text();
                            var Reason = $(this).find("td:nth-child(4)").text();
                            var Reference = $(this).find("td:nth-child(5)").text();
                            var BuGroup = $(this).find("td:nth-child(6)").find("button").attr("data-bu");
                            var Location = $(this).find("td:nth-child(6)").find("button").attr("data-location");
                            console.log('ToolTag_Code => ' + ToolTag_Code);
                            console.log('Status => ' + Status);
                            console.log('Reason => ' + Reason);
                            console.log('Reference => ' + Reference);
                            console.log('BuGroup => ' + BuGroup);
                            console.log('Location => ' + Location);
                            SP_Tooltag_UpdateChangeStatus(ToolTag_Code, Status, Reason, Reference, BuGroup, Location)
                            //SP Change Status 
                            TB_Complete.row.add([
                                '<a  href="./MaintainToolTag.aspx?site_ref=' + site_ref + '&ToolTag=' + ToolTag_Code + '"  target="_blank">' + ToolTag_Code + '</a>',
                                Status,
                                Reason,
                                Reference
                            ]).draw().node();
                            //Draw Table Complete
                        });

                        $('#smartwizard').data('smartWizard')._showStep(3);
                    }
                })
            });

            //End Step Wizard


            $(document).on("click", ".Browse_modal", function () {
                var Type = $(this).attr("data-type");
                $("#Titlebrowse").text(Type);
                $("#TBbodyBrowse").empty();
                $("#TBheaderBrowse").empty();
                $("#row_box").empty();
                $("#search_box").empty();
                $("#search_box").append('<input type="text" id="search_' + Type + '" placeholder="Search.." class="form-control max-wide" autocomplete="off">');

                if (Type == 'ToolTag_CaseError') {
                    var row = $(this).attr("data-row");
                    $("#row_box").append('<input type="text" id="row" value="' + row + '" class="form-control max-wide" autocomplete="off" disabled>');
                    BrowseToolTag_CaseError('', site_ref);
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'ToolTagCode_AddList') {
                    BrowseToolTagCode_AddList('', site_ref);
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'ToolTagCode_EditList') {
                    var row = $(this).attr("data-row");
                    $("#row_box").append('<input type="text" id="row" value="' + row + '" class="form-control max-wide" autocomplete="off" disabled>');
                    BrowseToolTagCode_EditList('', site_ref);
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'Reference') {
                    var row = $(this).attr("data-row");
                    $("#row_box").append('<input type="text" id="row" value="' + row + '" class="form-control max-wide" autocomplete="off" disabled>');
                    BrowseReference('');
                    $("#modalBrowseSearch").modal("show");
                }//End 
            });

            $(document).on("change", "#search_ToolTag_CaseError", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                BrowseToolTag_CaseError(search, site_ref)
                $("#modalBrowseSearch").modal("show");
            });

            $(document).on("change", "#search_ToolTagCode_AddList", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                BrowseToolTagCode_AddList(search, site_ref)
                $("#modalBrowseSearch").modal("show");
            });

            $(document).on("change", "#search_ToolTagCode_EditList", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                BrowseToolTagCode_EditList(search, site_ref)
                $("#modalBrowseSearch").modal("show");
            });

            $(document).on("change", "#search_Reference", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                BrowseReference(search)
                $("#modalBrowseSearch").modal("show");
            });

            $(document).on("click", ".clickselectToolTag_CaseError", function () {
                var tr = $(this).closest("tr");
                var TagCode = tr.find("td:nth-child(1)").text();
                var BUGroup = tr.find("td:nth-child(2)").text();
                var Location = tr.find("td:nth-child(3)").text();
                var Status = tr.find("td:nth-child(4)").text();
                var row = $("#row").val();
                var Array_check = [];

                var rows = TB_Import_Error.$("tr")
                $("#textErrorCase_ToolTagCode_" + row).val(TagCode);
                $("#textErrorCase_ToolTagCode_" + row).attr("data-location", Location);
                $("#textErrorCase_ToolTagCode_" + row).attr("data-current_status", Status);
                $("#textErrorCase_ToolTagCode_" + row).attr("data-status", 'InActive');
                $("#textErrorCase_ToolTagCode_" + row).attr("data-bu", BUGroup);

                rows.each(function () {
                    var checked_value = $(this).find("input").val();
                    if (checked_value == TagCode) {
                        Array_check.push(checked_value)
                    }
                });
                ///check dupicate
                if (Array_check.length == 1) {
                    rows.each(function () {
                        var checked_value = $(this).find("input").val();
                        if (checked_value == TagCode) {
                            
                            $("#textErrorCase_ToolTagCode_" + row).closest("tr").find("td:nth-child(1)").attr("style", "background-color:#5cb85c;");
                            $("#textErrorCase_ToolTagCode_" + row).closest("tr").find("div.input-group").attr("data-error", "complete");
                        }
                    });
                } else {
                            $("#textErrorCase_ToolTagCode_" + row).closest("tr").find("td:nth-child(1)").attr("style", "background-color:rgb(255,202,40); opacity: 0.8;");
                            $("#textErrorCase_ToolTagCode_" + row).closest("tr").find("div.input-group").attr("data-error", "Duplicate");

                }



                
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselectToolTagCode_AddList", function () {
                var tr = $(this).closest("tr");
                var TagCode = tr.find("td:nth-child(1)").text();
                var BU = tr.find("td:nth-child(2)").text();
                var Location = tr.find("td:nth-child(3)").text();
                var Current_Status = tr.find("td:nth-child(4)").text();
                $(".textList_ToolTagCode").val(TagCode);
                $("#textList_BU").val(BU);
                $("#textList_Location").val(Location);
                $("#textList_Current_Status").val(Current_Status);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselectToolTagCode_EditList", function () {
                var tr = $(this).closest("tr");
                var TagCode = tr.find("td:nth-child(1)").text();
                var BU = tr.find("td:nth-child(2)").text();
                var Location = tr.find("td:nth-child(3)").text();
                var row = $("#row").val();
                $("#textEditList_ToolTagCode_" + row).val(TagCode);
                $("#textList_BU").val(BU);
                $("#textList_Location").val(Location);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselectList_Reference", function () {
                var tr = $(this).closest("tr");
                var Co_num = tr.find("td:nth-child(1)").text();
                $("#textList_Reference").val(Co_num);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", "#btnAddList", function () {
                $(".textList_ToolTagCode").val('');
                $("#textList_BU").val('');
                $("#textList_Location").val('');
                $("#textList_Current_Status").val('');
                $("#textList_Status").val('');
                $("#textList_reason").val('');
                $("#textList_Reference").val('');
                $("#ListToolTag_row_id").val('');
                $("#modal_ListToolTag").modal("show");
                $(".modal-title").text("Add ToolTag");
                $(".div_ListNew").show();
                $(".div_ListEdit").hide();
            });

            $(document).on("click", ".btnEditList", function () {
                var tr = $(this).closest("tr");
                var id = $(this).attr("row-id");
                var BU = $(this).attr("data-bu");
                var Location = $(this).attr("data-location");
                var TagCode = tr.find("td:nth-child(1)").text();
                var Current_Status = tr.find("td:nth-child(2)").text();
                var status = tr.find("td:nth-child(3)").text();
                var reason = tr.find("td:nth-child(4)").text();
                var Reference = tr.find("td:nth-child(5)").text();
                $(".textList_ToolTagCode").val(TagCode);
                $("#textList_BU").val(BU);
                $("#textList_Location").val(Location);
                $("#textList_Current_Status").val(Current_Status);
                $("#textList_Status").val(status);
                $("#textList_reason").val(reason);
                $("#textList_Reference").val(Reference);
                $("#ListToolTag_row_id").val(id);
                $("#modal_ListToolTag").modal("show");
                $(".modal-title").text("Edit ToolTag");
                $(".div_ListNew").hide();
                $(".div_ListEdit").show();
            });



            $(document).on("click", ".btnDelete_Error", function () {
                var delete_value = $(this).closest("tr").find("input").val();
                var Array_check = [];
                TB_Import_Error.row($(this).parents('tr')).remove().draw();

                var rows = TB_Import_Error.$("tr")
                rows.each(function () {
                    var checked_value = $(this).find("input").val();
                    if (checked_value == delete_value) {
                        Array_check.push(checked_value)
                    }
                });
                ///check dupicate
                if (Array_check.length == 1) {
                    rows.each(function () {
                        var checked_value = $(this).find("input").val();
                        if (checked_value == delete_value) {
                            $(this).closest("tr").find("td:nth-child(1)").attr("style","background-color:#5cb85c");
                            $(this).closest("tr").find("div.input-group").attr("data-error","complete");
                        }
                    });
                }
                //not dupicate
            });

            
            let rownew_List = 10000000;
            $(document).on("click", "#btnSubmitList", function () {
                var ToolTagCode = $(".textList_ToolTagCode").val();
                var Current_Status = $("#textList_Current_Status").val();
                var Status = $("#textList_Status").val();
                var reason = $("#textList_reason").val();
                var Reference = $("#textList_Reference").val();
                var BU = $("#textList_BU").val();
                var Location = $("#textList_Location").val();
                if (ToolTagCode != "" && Status != "" && reason != "") {
                    TB_ListTemplate.row.add([
                        ToolTagCode,
                        Current_Status,
                        Status,
                        reason,
                        Reference,
                        '<button class="btn btn-warning btnEditList" row-type="new" ' +
                        'data-bu="' + BU + '" data-location="' + Location + '"' +
                        ' row-id="' + 'XXX'+rownew_List + '"' + ' id = "List_row_' + 'XXX'+rownew_List + '" type = "button" > Edit </button > ',
                    ]).draw().node();
                    rownew_List++;
                    //swal('Complete', '', 'success');
                    $("#modal_ListToolTag").modal("hide");
                } else {
                    swal('Error', 'กรุณากรอกข้อมูลให้ครบถ้วน', 'error');
                }
            });

            $(document).on("click", "#btnSaveList", function () {
                var ToolTagCode = $(".textList_ToolTagCode").val();
                var Current_Status = $("#textList_Current_Status").val();
                var Status = $("#textList_Status").val();
                var reason = $("#textList_reason").val();
                var Reference = $("#textList_Reference").val();
                var id = $("#ListToolTag_row_id").val();
                var tr = $("#List_row_" + id).closest("tr")
                //console.log(tr.find("td:nth-child(1)").text());
                tr.find("td:nth-child(1)").text(ToolTagCode);
                tr.find("td:nth-child(2)").text(Current_Status);
                tr.find("td:nth-child(3)").text(Status);
                tr.find("td:nth-child(4)").text(reason);
                tr.find("td:nth-child(5)").text(Reference);
                //swal('Complete', '', 'success');
                $("#modal_ListToolTag").modal("hide");
            });

            function VW_ToolTag_ChangeStatus_CheckTemplate() {
                TB_Import_Error.clear().draw();
                TB_Import_Complete.clear().draw();
                $.ajax({
                    type: "POST",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/VW_ToolTag_ChangeStatus_CheckTemplate") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({}),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[TagTool_Code],[BUGroup],[Location],[Status],[Current_Status],[Reason],[Reference],[CreateBy],[Checked]
                                var ID = val[0];
                                var TagTool_Code = val[1];
                                var BUGroup = val[2];
                                var Location = val[3];
                                var Status = val[4];
                                var Current_Status = val[5];
                                var Reason = val[6];
                                var Reference = val[7];
                                var CreateBy = val[8];
                                var Checked = val[9];
                                if (Checked == "Error") {
                                    TB_Import_Error.row.add([
                                        `<td>
                                            <div class="input-group" data-error="Error" style="min-width: 90%; opacity: 1;">
                                               <input id="textErrorCase_ToolTagCode_`+ ID + `" value="` + TagTool_Code + `"` +
                                        `" data-status="` + Status + `"` + `" data-Current_Status="` + Current_Status + `"`+ `" data-id="` + ID + `"` +
                                        `data-bu="` + BUGroup + `"` + ` data-location=" ` + Location +
                                        `" data-reason="` + Reason + `" data-reference="` + Reference +
                                        `" type="text" class="form-control max-wide" disabled>
                                                     <div class="input-group-btn">
                                                        <button class="btn btn-default Browse_modal" data-type="ToolTag_CaseError" data-row="`+ ID + `" type="button">
                                                            <i class="glyphicon glyphicon-search"></i>
                                                        </button>
                                                     </div>
                                               </div>
                                                <button type="button" class="btn btn-danger btnDelete_Error" ><i class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></i></button>
                                        </td>`
                                    ]
                                    ).draw().node();
                                }
                                else if (Checked == "Duplicate") {
                                    TB_Import_Error.row.add([
                                        `<td>
                                            <div class="input-group" data-error="Duplicate" style="min-width: 90%; opacity: 1;">
                                             <input id="textErrorCase_ToolTagCode_`+ ID + `" value="` + TagTool_Code + `"` +
                                         `" data-status="` + Status + `"` + `" data-Current_Status="` + Current_Status + `"`+ `" data-id="` + ID + `"` +
                                        `data-bu="` + BUGroup + `"` + ` data-location=" ` + Location +
                                        `" data-reason="` + Reason + `" data-reference="` + Reference +
                                        `" type="text" class="form-control max-wide" disabled>
                                                    <div class="input-group-btn">
                                                        <button class="btn btn-default Browse_modal" data-type="ToolTag_CaseError" data-row="`+ ID + `" type="button">
                                                            <i class="glyphicon glyphicon-search"></i>
                                                        </button>
                                                    </div>
                                              </div>
                                            <button type="button" class="btn btn-danger btnDelete_Error" ><i class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></i></button>
                                        </td>`
                                        ,
                                    ]
                                    ).draw().node();
                                }
                                else if (Checked == "1") {
                                    TB_Import_Complete.row.add([
                                        '<span  data-bu="' + BUGroup + '" data-location="' + Location + '" data-reason="' + Reason + '" data-reference="' + Reference + '" data-status="' + Status +'" data-Current_Status="' + Current_Status + '" data-id="' + ID + '">' + TagTool_Code + '</span>']
                                    ).draw().node();
                                }
                            });
                        }
                    }
                });
            }
            
            function SetTooltag_notIn_List() {
                var text = ""
                var index = 0;
                var rows = TB_ListTemplate.$("tr");
                rows.each(function () {
                    var ToolTag_Code = $(this).find("td:nth-child(1)").text();
                    if (index == 0) {
                        text += "'" + ToolTag_Code + "'";
                    } else {
                        text += ",'" + ToolTag_Code + "'";
                    }
                    index++;
                });
                return text;
            }
            function BrowseToolTag_CaseError(search, site_ref) {
            $("#Titlebrowse").text('Search ToolTag');
            var fragmentHeader = '';
            var fragment = '';
            $("#TBheaderBrowse").empty();
            $("#TBbodyBrowse").empty();
            $("#modalSize").attr('class', 'modal-dialog modal-lg');
            fragmentHeader = `<th>Tag Code</th>
                                     <th>BUGroup</th>
                                    <th>Location</th>
                                    <th>Status</th>`;
            $.ajax({
                type: "POST",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/BrowseVW_ToolTag_Master") %>",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ search: search, site_ref: site_ref }),
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
                            fragment += '<td><a class="clickselectToolTag_CaseError" href="javascript:void(0)">' + ToolTag_Code + '</a></td>';
                            fragment += '<td><a class="clickselectToolTag_CaseError" href="javascript:void(0)">' + BUGroup + '</a></td>';
                            fragment += '<td><a class="clickselectToolTag_CaseError" href="javascript:void(0)">' + Location + '</a></td>';
                            fragment += '<td><a class="clickselectToolTag_CaseError" href="javascript:void(0)">' + Status + '</a></td>';
                            fragment += '</tr>';
                        });
                    }
                }
            });
            $("#TBheaderBrowse").append(fragmentHeader);
            $("#TBbodyBrowse").append(fragment);
        }

        function BrowseToolTagCode_AddList(search, site_ref) {
            var notin = SetTooltag_notIn_List();
            $("#Titlebrowse").text('Search ToolTag');
            var fragmentHeader = '';
            var fragment = '';
            $("#TBheaderBrowse").empty();
            $("#TBbodyBrowse").empty();
            $("#modalSize").attr('class', 'modal-dialog modal-lg');
            fragmentHeader = `<th>Tag Code</th>
                                     <th>BUGroup</th>
                                    <th>Location</th>
                                    <th>Status</th>`;
            $.ajax({
                type: "POST",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/Addd_Change_status_BrowseVW_ToolTag_Master") %>",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ search: search, site_ref: site_ref ,notin:notin}),
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
                            fragment += '<td><a class="clickselectToolTagCode_AddList" href="javascript:void(0)">' + ToolTag_Code + '</a></td>';
                            fragment += '<td><a class="clickselectToolTagCode_AddList" href="javascript:void(0)">' + BUGroup + '</a></td>';
                            fragment += '<td><a class="clickselectToolTagCode_AddList" href="javascript:void(0)">' + Location + '</a></td>';
                            fragment += '<td><a class="clickselectToolTagCode_AddList" href="javascript:void(0)">' + Status + '</a></td>';
                            fragment += '</tr>';
                        });
                    }
                }
            });
            $("#TBheaderBrowse").append(fragmentHeader);
            $("#TBbodyBrowse").append(fragment);
        }

        function BrowseToolTagCode_EditList(search, site_ref) {
            $("#Titlebrowse").text('Search ToolTag');
            var fragmentHeader = '';
            var fragment = '';
            $("#TBheaderBrowse").empty();
            $("#TBbodyBrowse").empty();
            $("#modalSize").attr('class', 'modal-dialog modal-lg');
            fragmentHeader = `<th>Tag Code</th>
                                     <th>BUGroup</th>
                                    <th>Location</th>
                                    <th>Status</th>`;
            $.ajax({
                type: "POST",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/BrowseVW_ToolTag_Master") %>",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ search: search, site_ref: site_ref }),
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
                            fragment += '<td><a class="clickselectToolTagCode_EditList" href="javascript:void(0)">' + ToolTag_Code + '</a></td>';
                            fragment += '<td><a class="clickselectToolTagCode_EditList" href="javascript:void(0)">' + BUGroup + '</a></td>';
                            fragment += '<td><a class="clickselectToolTagCode_EditList" href="javascript:void(0)">' + Location + '</a></td>';
                            fragment += '<td><a class="clickselectToolTagCode_EditList" href="javascript:void(0)">' + Status + '</a></td>';
                            fragment += '</tr>';
                        });
                    }
                }
            });
            $("#TBheaderBrowse").append(fragmentHeader);
            $("#TBbodyBrowse").append(fragment);
        }


        });
        //End ready

        function File_ChangeStatusTool() {
            swal({
                title: 'ข้อควรระวัง',
                text: "ห้ามเแก้ไขชื่อ Sheet และ Header หัวตารางของไฟล์ Excel",
                icon: 'info',
                buttons: {
                    cancel: true,
                    confirm: true,
                },
            }).then(function (confirm) {
                if (confirm) {
                    $("#MainContent_File_ChangeStatusTool").click();
                }
            })
        }


        function SP_ToolTag_ChangeStatus_ClearTemp() {
            $.ajax({
                type: "POST",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/SP_ToolTag_ChangeStatus_ClearTemp") %>",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({}),
                success: function (response) {
                }
            });
        }

        function BrowseReference(search) {
            $("#Titlebrowse").text('Search Reference');
            var site_ref = getAllUrlParams("site_ref");
            var fragmentHeader = '';
            var fragment = '';
            $("#TBheaderBrowse").empty();
            $("#TBbodyBrowse").empty();
            $("#modalSize").attr('class', 'modal-dialog modal-lg');
            fragmentHeader = `<th>Co No.</th>
                                     <th>Customer No.</th>
                                    <th>Customer name</th>`;
            $.ajax({
                type: "POST",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/VW_CO_All_Site") %>",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ site_ref: site_ref, search: search }),
                success: function (response) {
                    if (response.d.length > 0) {
                        $.each(response.d, function (index, val) {
                            var co_num = val[0];
                            var cust_num = val[1];
                            var cust_name = val[2];
                            fragment += '<tr>';
                            fragment += '<td><a class="clickselectList_Reference" href="javascript:void(0)">' + co_num + '</a></td>';
                            fragment += '<td><a class="clickselectList_Reference" href="javascript:void(0)">' + cust_num + '</a></td>';
                            fragment += '<td><a class="clickselectList_Reference" href="javascript:void(0)">' + cust_name + '</a></td>';
                            fragment += '</tr>';
                        });
                    }
                }
            });
            $("#TBheaderBrowse").append(fragmentHeader);
            $("#TBbodyBrowse").append(fragment);
        }

        
        function SP_Tooltag_UpdateChangeStatus(ToolTag_Code, Status, Reason,
            Reference, BuGroup, Location, ) {
            var site_ref = getAllUrlParams("site_ref");
            $.ajax({
                type: "POST",
                async: false,
                url: "<%= ResolveUrl("Default.aspx/SP_Tooltag_UpdateChangeStatus")%>",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({
                    ToolTag_Code: ToolTag_Code, Status: Status
                    , Reason: Reason, Reference: Reference, SiteRef: site_ref
                    , BuGroup: BuGroup, Location: Location,
                }),
                success: function (response) {
                }
            });
        }
        function ProcessExcel(data) {
            //Read the Excel File data.
            var workbook = XLSX.read(data, {
                type: 'binary'
            });

            var firstSheet = workbook.SheetNames[0];
            if (firstSheet == "ToolTag_Change_Status") {
                var excelRows = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[firstSheet]);
                TB_Import_Complete.clear().draw();
                //console.log(excelRows);
                for (var i = 0; i < excelRows.length; i++) {
                    let ToolTag_code = (excelRows[i].ToolTag_code ? excelRows[i].ToolTag_code : "");
                    let status = (excelRows[i].status ? excelRows[i].status : "");
                    let reason = (excelRows[i].reason ? excelRows[i].reason : "");
                    let Reference = (excelRows[i].Reference ? excelRows[i].Reference : "");

                    TB_Import_Complete.row.add([
                        '<td data-status="' + status.toLowerCase() + '" data-reason="' + reason + '" data-Reference="' + Reference + '">' + ToolTag_code + '</td>']
                    ).draw().node();
                }

                swal('Complete', '', 'success');
                $('#smartwizard').data('smartWizard')._showStep(1);
            }
            else {
                swal('Error', 'Please upload correct Excel file', 'error');
            }
        }





    </script>
</asp:Content>
