<%@ Page Title="Permission" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Permission.aspx.cs" Inherits="ToolTag.Permission" %>
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
    </style>
    <div class="page-header">
        <h2>Permission</h2>
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4" style="text-align: left;">
            </div>

            <div class="col-md-8 col-sm-8 col-xs-8" style="text-align: right">
                <button id="btnModalNew" class="btn btn-success Pos_Viewer" type="button" data-toggle="modal">New </button>
            </div>
        </div>
    </div>


    
    <%--Start New Permission Modal--%>
    <div class="modal fade" id="modalPermission" role="dialog" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                            <div class="col-md-9 col-lg-9 col-sm-12">
                                <h4 class="modal-title" id="modal-title">New Permission</h4>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-12" style="text-align: right;">

                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <%--Start modal body--%>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">
                    <div class="row" style="overflow-y: auto; overflow-x: auto; text-align: center;">
                        <div class="col-md-12" style="text-align: center;">
                            <div class="panel-group">
                                <div class="panel-body">
                                    <div class="row">
                                        <div id="smartwizard">
                                            <ul>
                                                <li class="check" data-step="Step1">
                                                    <a href="#step-1">Select User</a>
                                                </li>
                                                <li class="check" data-step="Step2">
                                                    <a href="#step-2">Set Permission</a>
                                                </li>
                                            </ul>
                                            <div>
                                                <div id="step-1" class="">
                                                    <div class="panel-group">
                                                        <div class="panel panel-default" style="margin-top: 1em">
                                                            <div class="panel-heading">
                                                                <h4>Select User Permission</h4>
                                                            </div>
                                                            <div class="panel-body">
                                                                <div class="row">
                                                                    <div class="col-md-12 form-group">
                                                                        <div class="col-md-12">
                                                                            <label class="control-label" style="font-size: 10px; color: red">Step1*</label>
                                                                        </div>
                                                                        <div class="col-md-12 " style="display:none">
                                                                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;">
                                                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                                                    <label class="control-label" style="font-size: 13px">User :</label>
                                                                                </div>
                                                                                <div class="col-md-9 col-sm-9 col-xs-9">
                                                                                        <input type="text" class="form-control max-wide textUser"  disabled>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12 ">
                                                                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;">
                                                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                                                    <label class="control-label" style="font-size: 13px">EmpNum :</label>
                                                                                </div>
                                                                                <div class="col-md-9 col-sm-9 col-xs-9">
                                                                                    <div class="input-group">
                                                                                        <input type="text" class="form-control max-wide textEmpNum"  disabled>
                                                                                        <div class="input-group-btn">
                                                                                            <button class="btn btn-default Browse_modal" type="button" data-type="GetUsername">
                                                                                                <i class="glyphicon glyphicon-search"></i>
                                                                                            </button>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12 ">
                                                                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;">
                                                                                <div class="col-md-3 col-sm-3 col-xs-3">
                                                                                    <label class="control-label" style="font-size: 13px">Name :</label>
                                                                                </div>
                                                                                <div class="col-md-9 col-sm-9 col-xs-9">
                                                                                        <input type="text" class="form-control max-wide textName"  disabled>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--======End Step 1======--%>
                                                <div id="step-2" style="overflow-y: auto; overflow-x: auto;">
                                                    <div class="panel-group">
                                                        <div class="col-md-12 col-sm-12" style="max-width: 100%; margin-top: 1em;">
                                                            <div class="row">
                                                                <div class="table-responsive" style="overflow-x: auto;">
                                                                    <table class="table table-hover table-bordered" id="table_Step2_New">
                                                                        <thead>
                                                                            <tr>
                                                                                <th class="center">
                                                                                    <input class="form-check-input center checkboxes" id="checkAll" type="checkbox" style="margin-left: 1em"></th>
                                                                                <th>Page</th>
                                                                                <th>Permission</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody id="List_Step2_New">
                                                                            <tr>
                                                                                <th class="center">
                                                                                    <input class="form-check-input center checkboxes" type="checkbox" style="margin-left: 1em"></th>
                                                                                <th>Maintain ITTAG</th>
                                                                                <th>
                                                                                    <select id="textPermission_1" class="form-control max-wide">
                                                                                        <option value="">=== Select Permission ===</option>
                                                                                        <option value="Viewer">Viewer</option>
                                                                                        <option value="Worker">Worker</option>
                                                                                        <option value="Admin">Admin</option>
                                                                                    </select>
                                                                                </th>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--</div>--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer"></div>
                    </div>
                </div>
                <%--End modal body--%>
                <div class="modal-footer" id="Browsefooter">
                </div>

            </div>
        </div>
    </div>
    <%--End Modal--%>
    <div class="modal fade" id="modalEditPermission" role="dialog">
        <div class="modal-dialog modal-xs">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                            <div class="col-md-7 col-sm-12">
                                <h4 class="modal-title"><span id="TitleModalEditPermission"></span></h4>
                            </div>
                            <div class="col-md-5 col-sm-12" style="text-align: right;">
                                <button type="button" class="btn btn-success" id="SaveEditPermission">Save</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="col-md-12 " style="margin-bottom: 1em;display:none">
                                    <div class="col-md-3 ">
                                        <label class="control-label" style="font-size: 13px">ID :</label>
                                    </div>
                                    <div class="col-md-9 ">
                                         <input id="PermissionID"  class="form-control max-wide" disabled>
                                    </div>
                                </div>
                                <div class="col-md-12 " style="margin-bottom: 1em;display:none">
                                    <div class="col-md-3 ">
                                        <label class="control-label" style="font-size: 13px">User :</label>
                                    </div>
                                    <div class="col-md-9 ">
                                        <input type="text" class="form-control max-wide textUser" disabled>
                                    </div>
                                </div>
                                <div class="col-md-12" style="margin-bottom: 1em;">
                                    <div class="col-md-3 ">
                                        <label class="control-label" style="font-size: 13px">EmpNum :</label>
                                    </div>
                                    <div class="col-md-9 ">
                                        <div class="input-group">
                                            <input type="text" class="form-control max-wide textEmpNum" disabled>
                                            <div class="input-group-btn">
                                                <button class="btn btn-default Browse_modal" type="button" data-type="GetUsername">
                                                    <i class="glyphicon glyphicon-search"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12" style="margin-bottom: 1em;">
                                    <div class="col-md-3">
                                        <label class="control-label" style="font-size: 13px">Name :</label>
                                    </div>
                                    <div class="col-md-9 ">
                                        <input type="text" class="form-control max-wide textName" disabled>
                                    </div>
                                </div>
                                <div class="col-md-12 " style="margin-bottom: 1em;">
                                    <div class="col-md-3 ">
                                            <label class="control-label" style="font-size: 13px">Page :</label>
                                    </div>
                                    <div class="col-md-9 ">
                                        <select id="textEditPage" class="form-control max-wide">
                                            <option value="">=== Select Page ===</option>
                                            <option value="Maintain Master">Maintain Master</option>
                                            <option value="Generate ToolTag">Generate ToolTag</option>
                                            <option value="Maintain ToolTag">Maintain ToolTag</option>
                                            <option value="Change StatusTool">Change StatusTool</option>
                                            <option value="Monitoring">Monitoring</option>
                                            <option value="Maintain Permission">Maintain Permission</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12 " style="margin-bottom: 1em;">
                                    <div class="col-md-3 ">
                                        <label class="control-label" style="font-size: 13px">Permission :</label>
                                    </div>
                                    <div class="col-md-9 ">
                                        <select id="textEditPermission" class="form-control max-wide">
                                            <option value="">=== Select Permission ===</option>
                                            <option value="Viewer">Viewer</option>
                                            <option value="Editor">Editor</option>
                                        </select>
                                    </div>
                                </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
        </div>
        <%--Browse Edit--%>


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
                    <h4 id="text_po_is_empty" style="text-align: center;display:none">Please input in Textbox for searching PO Number</h4>
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

    


    <div class="panel-group">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <table id="TablePermission" class="table" style="width: 100%">
                            <thead>
                                <tr>
                                    <th style="width: 10%">Emp Num</th>
                                    <th style="width: 20%">Name</th>
                                    <th style="width: 30%">Page</th>
                                    <th>CostCenter</th>
                                    <th>BU Group</th>
                                    <th>Permission</th>
                                    <th style="width: 50px"></th>
                                    <th style="width: 50px"></th>
                                    <%--<th style="width: 50px"></th>--%>
                                </tr>
                            </thead>
                            <tbody >
                            </tbody>
                        </table>
                    </div>
                    <!--- End Col-md-12 --->
                </div>
            </div>
        </div>
    </div>
    <%--Start New Permission Modal--%>


    <script>
        $(document).ready(function () {
            
            var site_ref = ""
            if (getAllUrlParams("site_ref")) {
                site_ref = getAllUrlParams("site_ref");
            }

            var CheckPage = CheckPermission('Maintain Permission', site_ref);

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
            } else if (CheckPage == "Viewer") {
                $(".Pos_Viewer").hide();
                var TablePermission = $('#TablePermission').DataTable({
                    searching: true,
                    lengthChange: true,
                    "ordering": false,
                    "columnDefs": [
                        {
                            "targets": [6],
                            "visible": false,
                            "searchable": false
                        },
                        {
                            "targets": [7],
                            "visible": false,
                            "searchable": false
                        }
                    ]
                });
            } else if (CheckPage == "Editor") {
                var TablePermission = $('#TablePermission').DataTable({
                    searching: true,
                    lengthChange: true,
                    "ordering": false,
                });
            }
            console.log(CheckPage);
            
            VW_ToolTag_Permission(site_ref);

            $('#smartwizard').smartWizard({
                    theme: 'arrows',
                    keyNavigation: false,
                    showStepURLhash: false,
                    selected: 0, //ใส่ 0 จะเริ่มที่ Step แรกสุด
                    transitionEffect: 'slide',
                    toolbarSettings: { toolbarPosition: 'none', showNextButton: 'false', showPreviousButton: 'false' }
            });

            $(document).on("change", "#search_GetUsername", function () {
                var search = $(this).val();
                Get_Employee(search);
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
                if (Type == 'GetUsername') {
                    Get_Employee('');
                }//End 
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                $("#modalBrowseSearch").modal("show");
            });
            
            $(document).on("click", "#checkAll", function () {
                if (this.checked) {
                    $(".checkboxes").prop("checked", true);
                } else {
                    $(".checkboxes").prop("checked", false);
                }
            });
            $(document).on("change", ".checkboxes", function () {
                if ($(this).is(':checked')) {
                    $("#btnSavePermission_New").prop("disabled", false);
                }
            });
            $('.checkbox_Edit_Permission').click(function () {
                $('.checkbox_Edit_Permission').each(function () {
                    $(this).prop('checked', false);
                });
                $(this).prop('checked', true);
            });

            $("#btnModalNew").on("click", function () {
                $(".checkboxes").prop("checked", false);
                $('#smartwizard').smartWizard("reset");
                $("#modal-title").text('New Permission');
                $(".textUser").val("");
                $(".textEmpNum").val("");
                $(".textName").val("");
                $("#Permission").val("");
                $("#Browsefooter").empty();

                var button = ` <div style="text-align: right">
                              <button id="nextPage2" class="btn btn-warning" type="button" data-toggle="modal" disabled>Next</button>
                               </div>`
                $("#Browsefooter").append(button);
                $("#modalPermission").modal("show");
            });

            $(document).on("click", "#nextPage2", function () {
                $("#List_Step2_New").empty();
                $("#Browsefooter").empty();
                var textUser = $(".textUser").val()
                if (textUser != "") {
                    var Page = `
                            <tr>
                            <td class="center"><input class="form-check-input center checkboxes" type="checkbox" style="margin-left:1em"></td>
                            <td>Maintain Master</td>
                              <td>
                                <select id="" class="form-control max-wide">
                                <option value="">=== Select Permission ===</option>
                                <option value="Viewer">Viewer</option>
                                <option value="Editor">Editor</option>
                                </select>
                             </td>
                            </tr>
                            <tr>
                            <td class="center"><input class="form-check-input center checkboxes" type="checkbox" style="margin-left:1em"></td>
                            <td>Generate ToolTag</td>
                              <td>
                                <select id="" class="form-control max-wide">
                                <option value="">=== Select Permission ===</option>
                                <option value="Viewer">Viewer</option>
                                <option value="Editor">Editor</option>
                                </select>
                              </td>
                            </tr>
                            <tr>
                            <td class="center"><input class="form-check-input center checkboxes" type="checkbox" style="margin-left:1em"></td>
                            <td>Maintain ToolTag</td>
                              <td>
                                <select id="" class="form-control max-wide">
                                <option value="">=== Select Permission ===</option>
                                <option value="Viewer">Viewer</option>
                                <option value="Editor">Editor</option>
                                </select>
                              </td>
                            </tr>
                            <tr>
                            <td class="center"><input class="form-check-input center checkboxes" type="checkbox" style="margin-left:1em"></td>
                            <td>Change StatusTool</td>
                              <td>
                                <select id="" class="form-control max-wide">
                                <option value="">=== Select Permission ===</option>
                                <option value="Viewer">Viewer</option>
                                <option value="Editor">Editor</option>
                                </select>
                              </td>
                            </tr>
                            <tr>
                            <td class="center"><input class="form-check-input center checkboxes" type="checkbox" style="margin-left:1em"></td>
                            <td>Monitoring</td>
                              <td>
                                <select id="" class="form-control max-wide">
                                <option value="">=== Select Permission ===</option>
                                <option value="Viewer">Viewer</option>
                                <option value="Editor">Editor</option>
                                </select>
                              </td>
                            </tr>
                            <td class="center"><input class="form-check-input center checkboxes" type="checkbox" style="margin-left:1em"></td>
                            <td>Maintain Permission</td>
                              <td>
                                <select id="" class="form-control max-wide">
                                <option value="">=== Select Permission ===</option>
                                <option value="Viewer">Viewer</option>
                                <option value="Editor">Editor</option>
                                </select>
                              </td>
                            </tr>
                            `
                    var button = `<div style="text-align: right;margin-top:1em;">
                               <button id="btnSavePermission_New" class="btn btn-success" type="button" data-toggle="modal" disabled>Save </button>
                             </div>`
                    $("#Browsefooter").append(button);
                    $("#List_Step2_New").append(Page);
                    $('#smartwizard').data('smartWizard')._showStep(1);
                } else {
                    swal('Error', 'กรุณาเลือก Employee', 'error');
                }
               
            });

            $(document).on("click", "#btnSavePermission_New", function () {
                var User = $(".textUser").val();
                var Checked = true;
                var text =""
                console.log('btn Save')
                $("#List_Step2_New tr").each(function () {
                    let checkbox = $(this).find("td:nth-child(1)").find("input[type=checkbox]");
                    let Page = $(this).find("td:nth-child(2)").text();
                    let Permission = $(this).find("td:nth-child(3)").find("select").val();
                    if (checkbox.is(':checked')) {
                        if (Permission == "") {
                            Checked = false;
                            swal('Error', 'กรุณากรอกข้อมูลให้ครบถ้วน', 'error');
                            //console.log('false')
                        }
                    } 
                });
                if (Checked) {
                    $("#List_Step2_New tr").each(function () {
                        let checkbox = $(this).find("td:nth-child(1)").find("input[type=checkbox]");
                        let Page = $(this).find("td:nth-child(2)").text();
                        let Permission = $(this).find("td:nth-child(3)").find("select").val();
                        if (checkbox.is(':checked')) {
                            if (Permission != '' && User != '' && Page != '') {
                                let textcheck = SP_ToolTag_Permission(0, User, Page, Permission, 'Insert',site_ref);
                                if (textcheck.search("have permission") > 0) {
                                    text += textcheck + '\n'
                                    // if have Permiision add to text
                                }
                            }
                        }
                    }).promise().done(function () {
                        if (text != "") {
                            swal('Complete', text + '', 'success');
                        } else {
                            swal('Complete', 'บันทึกข้อมูลสำเร็จ', 'success');
                        }
                        $("#modalPermission").modal("hide");
                        VW_ToolTag_Permission(site_ref);
                    });
                } else {
                       swal('Error', 'กรุณาตรวจสอบข้อมูล', 'error');
                }
                
               console.log(Checked);

            });
             $(document).on("click", ".btnModalEdit", function () {
                var tr = $(this).closest("tr");
                var ID = $(this).attr("data-id");
                var User = $(this).attr("data-username");
                var EmpNum = tr.find("td:nth-child(1)").text();
                var Name = tr.find("td:nth-child(2)").text();
                var Page = tr.find("td:nth-child(3)").text();
                var Permission = tr.find("td:nth-child(6)").text();
                console.log(Permission);
                $("#PermissionID").val(ID);
                $(".textUser").val(User);
                $(".textName").val(Name);
                $(".textEmpNum").val(EmpNum);
                $("#textEditPage").val(Page);
                $("#textEditPage").attr("data-change",'0');
                $("#textEditPermission").val(Permission);
                $("#textEditPermission").attr("data-change",'0');
                var button = ' <button type="button" class="btn btn-warning " id="PermissionEdit" >Save</button>';
                button += '<button type="button" class="btn btn-default"  data-dismiss="modal">Close</button>';
                $("#Browsefooter").append(button);
                $("#modalEditPermission").modal("show");
            });
            
            $(document).on("change", "#textEditPage", function () {
                $(this).attr("data-change", '1');
                console.log($(this).attr("data-change"));
            });
            
            $(document).on("change", "#textEditPermission", function () {
                $(this).attr("data-change", '1');
                console.log($(this).attr("data-change"));
            });


            $(document).on("click", "#SaveEditPermission", function () {
                var ID = $("#PermissionID").val();
                var User = $(".textUser").val();
                var Page = $("#textEditPage").val();
                var Permission = $("#textEditPermission").val();
                if (Permission != "" && User != "" && Page != "") {
                    let text = SP_ToolTag_Permission(ID, User, Page, Permission, 'Edit',site_ref)
                    let changePage = $("#textEditPage").attr("data-change");
                    let changePermission = $("#textEditPermission").attr("data-change");
                    let textcheck =""
                    textcheck = text.search("have permission");
                    if (textcheck > 0) {
                        //have permission
                        if (changePage == '0') {
                            //not change Page //3
                            swal('Complete', 'บันทึกข้อมูล สำเร็จ', 'success');
                        } else {
                            //change Page //1
                            if (changePermission == '0') {
                                swal('Error', text, 'error');
                            } else {
                                swal('Warning', text+'\nบันทึกข้อมูลเปลี่ยนแปลง Permission สำเร็จ', 'info');
                            }
                        }
                    } else {
                        //Complete //2
                          swal('Complete', 'บันทึกข้อมูล สำเร็จ', 'success');
                    }

                    VW_ToolTag_Permission(site_ref);
                    $("#modalEditPermission").modal("hide");
                    //if (text == "Complete") {
                    //    swal('Complete', 'บันทึกข้อมูล สำเร็จ', 'success');
                    //}else if (text != "") {
                    //    swal('Complete', 'บันทึกข้อมูล สำเร็จ' + '\n' + text, 'success');
                    //}
                }
            });
            //End Edit 

            $(document).on("click", ".PermissionDelete", function () {
                var ID = $(this).attr("data-id");
                swal({
                    title: 'ยืนยันการลบ?',
                    text: "กด confirm เพื่อทำการลบ",
                    icon: 'info',
                    buttons: {
                        cancel: true,
                        confirm: true,
                    },
                }).then(function (confirm) {
                    if (confirm) {
                    SP_ToolTag_Permission(ID, '', '', '', 'Delete')
                    VW_ToolTag_Permission(site_ref);
                    swal('Complete', 'ลบข้อมูล สำเร็จ', 'success');
                    $("#modalEditPermission").modal("hide");
                    }
                })
                
            });
            //End Edit 
            
           
            $(document).on("click", ".clickselecttext_User", function () {
                var tr = $(this).closest("tr");
                var User = $(this).attr("data-user");
                var EmpNum = tr.find("td:nth-child(1)").text();
                var Name = tr.find("td:nth-child(2)").text();
                $(".textUser").val(User);
                $(".textName").val(Name);
                $(".textEmpNum").val(EmpNum);
                $( "#nextPage2" ).prop( "disabled", false );
                $("#modalBrowseSearch").modal("hide");

            });

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
                    url: "<%= ResolveUrl("Default.aspx/GetUsername") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[Emp_Num],[Username]
                                var Emp_Num = val[0];
                                var fullname = val[1];
                                var User = val[2];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselecttext_User" data-user="' + User + '" href="javascript:void(0)">' + Emp_Num + '</a></td>';
                                fragment += '<td><a class="clickselecttext_User" " data-user="' + User + '" href="javascript:void(0)">' + fullname + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                $("#modalBrowseSearch").modal("show");
            }

            function SP_ToolTag_Permission(ID, Username, Page, Permission, Action,site_ref) {
                var text = ""
                $.ajax({
                    type: "POST",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/SP_ToolTag_Permission")%>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ID:ID,Username:Username,Page:Page,Permission:Permission,Action:Action,site_ref:site_ref }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            //console.log(response.d)
                            //if (response.d != "Complete") {
                                text = response.d +'\n'
                                //alert(response.d+'');
                            //}
                        }
                    }
                });
                return text
            }

            function VW_ToolTag_Permission(site_ref) {
                TablePermission.clear().draw();
                $.ajax({
                    type: "POST",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/VW_ToolTag_Permission")%>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({site_ref: site_ref }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[Username],[Emp_Num],[FullName],[CostCenter],[BUGroup],[Page],[Viewer],[Editor]
                                var ID = val[0];
                                var Username = val[1];
                                var Emp_Num = val[2];
                                var FullName = val[3];
                                var CostCenter = val[4];
                                var BUGroup = val[5];
                                var Page = val[6];
                                var Permission = val[7]
                                var viewer = Permission == "Viewer" ? '<span class="glyphicon glyphicon-ok" aria-hidden="true" data-type="True"></span>' : '<span class="glyphicon glyphicon-remove" aria-hidden="true" data-type="False"></span>';
                                var editor = Permission=="Editor"? '<span class="glyphicon glyphicon-ok" aria-hidden="true" data-type="True"></span>' : '<span class="glyphicon glyphicon-remove" aria-hidden="true" data-type="False"></span>';

                                TablePermission.row.add([
                                    Emp_Num
                                    , FullName
                                    , Page
                                    , CostCenter
                                    , BUGroup
                                    , Permission
                                    , '<button class="btn btn-warning btnModalEdit Pos_Viewer" data-id="'+ID+'" data-username="'+Username+'" type="button">Edit</button>'
                                    , '<button class="btn btn-danger PermissionDelete Pos_Viewer" data-id="'+ID+'"  type="button">Delete</button>']).draw().node();
                            });
                        }
                    }
                });
            }


        });
      
    </script>
</asp:Content>
