<%@ Page Title="Maintain Master" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Maintain_MasterData.aspx.cs" Inherits="ToolTag.Maintain_MasterData" %>

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

        .bg-color-white {
            background: #fff !important;
            border: 1px solid #555;
        }

        .nav-tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #fff;
        }

        .ui-datepicker {
            z-index: 2 !important;
        }

        .form-control {
            min-width: 100%;
        }

        .row-eq-height {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
        }

        input[type=checkbox] {
            -ms-transform: scale(2);
            -moz-transform: scale(2);
            -webkit-transform: scale(2);
            -o-transform: scale(2);
            transform: scale(2);
            padding: 10px;
        }

        .checkboxtext {
            font-size: 110%;
            display: inline;
        }

        @media only screen and (max-width: 990px) {
            .row-eq-height {
                display: -webkit-box;
                display: grid;
            }
        }

        .SelectLine, .SelectLine:focus {
            color: #f0ad4e;
            font-weight: bold;
        }

        .panel-body {
            padding: 8px;
        }
    </style>
    <div class="page-header">
        <h2>Maintain Master</h2>
    </div>
    <div class="row">
        <div class="row-eq-height">
            <div class="col-md-6 col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-9">
                                <h4>
                                    <strong>Main Group</strong>
                                </h4>
                            </div>
                            <div class="col-md-3 text-right">
                                <button type="button" class="btn btn-success btnGroup Pos_Viewer" data-type="Insert">Add</button>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12" style="margin-left: 1px; margin-top: 20px; margin-bottom: 10px;">
                            <div class="col-md-3">
                                <span style="font-size: 15px">Search Group</span>
                            </div>
                            <div class="col-md-6">
                                <input type="text" id="SearchGroup_Step1" class="form-control max-wide" placeholder="Search Group" autocomplete="off">
                                <input type="text" id="SelectGroup_Step1" class="form-control max-wide" placeholder="Step1_Value" autocomplete="off" style="display:none" disabled>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 1rem">
                        <div class="col-md-12 text-mode">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#Group_Active" data-toggle="tab" id="">Active</a></li>
                                <li><a href="#Group_InActive" data-toggle="tab" id="">InActive</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="tab-content ">
                                    <div class="tab-pane active" id="Group_Active">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-hover" id="TableGroup_Active">
                                                            <thead>
                                                                <tr>
                                                                    <th>Group Code</th>
                                                                    <th>Group Name</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="ListGroup_Active">
                                                                <%--<tr>
                                                                    <td><a class="ClickGroup_SelectStep1" href="javascript:void(0)">THA</a></td>
                                                                    <td><a class="ClickGroup_SelectStep1" href="javascript:void(0)">HanTool</a></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnGroup" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger">Deactivate</button></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="ClickGroup_SelectStep1" href="javascript:void(0)">TSA</a></td>
                                                                    <td><a class="ClickGroup_SelectStep1" href="javascript:void(0)">Safey Tool</a></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnGroup" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger">Deactivate</button></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="ClickGroup_SelectStep1" href="javascript:void(0)">TPO</a></td>
                                                                    <td><a class="ClickGroup_SelectStep1" href="javascript:void(0)">Power Tool</a></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnGroup" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger">Deactivate</button></td>
                                                                </tr>--%>
                                                                <%----- Mock Up Data -----%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Tab1-->
                                    <div class="tab-pane " id="Group_InActive">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-hover" id="TableGroup_InActive">
                                                            <thead>
                                                                <tr>
                                                                    <th>Group Code</th>
                                                                    <th>Group Name</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="ListGroup_InActive">
                                                                <%--    <tr>
                                                                    <td><a class="ClickGroup_SelectStep1" href="javascript:void(0)">TME</a></td>
                                                                    <td><a class="ClickGroup_SelectStep1" href="javascript:void(0)">Measuring Tool</a></td>
                                                                    <td><button type="button" class="btn btn-warning btnGroup" data-type="Edit">Edit</button></td>
                                                                    <td><button type="button" class="btn btn-success btnGroupStautus" data-status="Activate">Activate</button></td>
                                                                </tr>--%>

                                                                <%----- Mock Up Data -----%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Tab2-->
                                </div>
                            </div>
                        </div>
                        <!--END row-->
                    </div>
                </div>
            </div>
            <!--End  Group-->
            <div class="col-md-6 col-xs-12" id="divMainType_Step2" style="display: none;">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-9">
                                <h4>
                                    <strong>MainType : <span id="Title_TextHeaderMainType"></span></strong>
                                </h4>
                            </div>
                            <div class="col-md-3 text-right">
                                <button type="button" class="btn btn-success btnModalType Pos_Viewer" data-type="Insert">Add</button>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12" style="margin-left: 1px; margin-top: 20px; margin-bottom: 10px;">
                            <div class="col-md-3">
                                <span style="font-size: 15px">Search Type</span>
                            </div>
                            <div class="col-md-6">
                                <input type="text" id="SearchType_Step2" class="form-control max-wide" placeholder="Search Type" autocomplete="off">
                                <input type="text" id="SelectType_Step2" class="form-control max-wide" placeholder="Step2_Value" style="display:none" autocomplete="off" disabled>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 1rem">
                        <div class="col-md-12 text-mode">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#Type_Active" data-toggle="tab" id="">Active</a></li>
                                <li><a href="#Type_InActive" data-toggle="tab" id="">InActive</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="tab-content ">
                                    <div class="tab-pane active" id="Type_Active">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-hover" id="TableType_Active">
                                                            <thead>
                                                                <tr>
                                                                    <th>Type Name</th>
                                                                    <th>Calibration</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="ListType_Active">
                                                                <%--<tr>
                                                                    <td><a class="ClickType_SelectStep2" href="javascript:void(0)">มีดปลอกสายไฟ</a></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalType" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger" data-id="1">Deactivate</button></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="ClickType_SelectStep2" href="javascript:void(0)">ฆ้อนยาง</a></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalType" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger" data-id="1">Deactivate</button></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="ClickType_SelectStep2" href="javascript:void(0)">ปลั๊กพ่วง
                                                                        </a></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalType" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger" data-id="1">Deactivate</button></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><a class="ClickType_SelectStep2" href="javascript:void(0)">ชุดลูกอัดไรเนอร์
                                                                        </a></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalType" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger" data-id="1">Deactivate</button></td>
                                                                </tr>--%>

                                                                <%----- Mock Up Data -----%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Tab1-->
                                    <div class="tab-pane " id="Type_InActive">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-hover" id="TableType_InActive">
                                                            <thead>
                                                                <tr>
                                                                    <th>Type Name</th>
                                                                    <th>Calibration</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="ListType_InActive">
                                                                <%--<tr>
                                                                    <td><a class="ClickType_SelectStep2" href="javascript:void(0)">เลื่อยไฟฟ้า</a></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalType" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-success">Activate</button></td>
                                                                </tr>--%>

                                                                <%----- Mock Up Data -----%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Tab2-->
                                </div>
                            </div>
                        </div>
                        <!--END row-->
                    </div>
                </div>
            </div>
            <!--End Type-->
        </div>
        <!--row-eq-height-->
        <div class="row-eq-height">
            <div class="col-md-6 col-xs-12" id="divMainSize_Step3" style="display: none;">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-9">
                                <h4>
                                    <strong>Main Size : <span id="Title_TextHeaderMainSize"></span></strong>
                                </h4>
                            </div>
                            <div class="col-md-3 text-right">
                                <button type="button" class="btn btn-success btnModalSize Pos_Viewer" data-type="Insert">Add</button>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12" style="margin-left: 1px; margin-top: 20px; margin-bottom: 10px;">
                            <div class="col-md-3">
                                <span style="font-size: 15px">Search Size</span>
                            </div>
                            <div class="col-md-6">
                                <input type="text" id="SearchSize_Step3" class="form-control max-wide" placeholder="Search Size" autocomplete="off">
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 1rem">
                        <div class="col-md-12 text-mode">

                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#Size_Active" data-toggle="tab" id="">Active</a></li>
                                <li><a href="#Size_InActive" data-toggle="tab" id="">InActive</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="Size_Active">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-hover" id="TableSize_Active">
                                                            <thead>
                                                                <tr>
                                                                    <th>Size Name</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="ListSize_Active">
                                                                <tr>
                                                                    <td>10" นิ้ว</td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalSize" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger">Deactivate</button></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>เบอร์ #4</td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalSize" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger">Deactivate</button></td>
                                                                </tr>

                                                                <tr>
                                                                    <td>100เมตร</td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalSize" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-danger">Deactivate</button></td>
                                                                </tr>

                                                                <%----- Mock Up Data -----%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Tab1-->
                                    <div class="tab-pane " id="Size_InActive">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-hover" id="TableSize_InActive">
                                                            <thead>
                                                                <tr>
                                                                    <th>Size Name</th>
                                                                    <th></th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="ListSize_InActive">
                                                                <tr>
                                                                    <td>5" นิ้ว</td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalSize" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-success">Activate</button></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>เบอร์ #10</td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalSize" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-success">Activate</button></td>
                                                                </tr>

                                                                <tr>
                                                                    <td>10เมตร</td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-warning btnModalSize" data-id="1" data-type="Edit">Edit</button></td>
                                                                    <td>
                                                                        <button type="button" class="btn btn-success">Activate</button></td>
                                                                </tr>
                                                                <%----- Mock Up Data -----%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Tab2-->
                                </div>
                            </div>
                        </div>
                        <!--END row-->
                    </div>
                </div>
            </div>
            <!--End Main size-->
        </div>
        <!--row-eq-height-->
    </div>
    <%--End Page 3step Panal--%>

    <div class="modal fade" id="ModalGroup" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                            <div class="col-md-7 col-sm-12">
                                <h4 class="modal-title"><span id="textModalGroup"> </span>Group</h4>
                            </div>
                            <div class="col-md-5 col-sm-12" style="text-align: right;">
                                <button type="button" class="btn btn-success Pos_Viewer" id="btnSaveGroup" data-action="">Save</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Group Code:</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="textGroupCode" class="form-control max-wide" autocomplete="off">
                                </div>
                            </div>

                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Group Name :</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="textGroupName" class="form-control " style="min-width: 100%" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;" id="divStatus_Group">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Status :</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <select class="form-control max-wide" id="textGroupStatus">
                                        <option value="">=======Please Select Status=======</option>
                                        <option value="Active" selected>Active</option>
                                        <option value="InActive">InActive</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
    <%--Browse Group Insert/Edit--%>

    <div class="modal fade" id="ModalType" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                            <div class="col-md-7 col-sm-12">
                                <h4 class="modal-title"><span id="textModalType"> </span>Type</h4>
                            </div>
                            <div class="col-md-5 col-sm-12" style="text-align: right;">
                                <button type="button" class="btn btn-success Pos_Viewer" id="btnSaveType" data-action="">Save</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em; display:none">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Type Code:</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="textTypeCode" class="form-control max-wide" autocomplete="off" disabled >
                                </div>
                            </div>

                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Type Name :</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="textTypeName" class="form-control " style="min-width: 100%" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;" id="divStatus_Type">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Status :</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <select class="form-control max-wide" id="textTypeStatus">
                                        <option value="">=======Please Select Status=======</option>
                                        <option value="Active" selected>Active</option>
                                        <option value="InActive">InActive</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;" >
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Calibration :</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                  <input class="form-check-input" type="checkbox" id="checkbox_Calibration" style="margin-left: 5px;" >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
    <%--Browse Type Insert/Edit--%>

    <div class="modal fade" id="ModalSize" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12" style="margin-bottom: 1em;">
                            <div class="col-md-7 col-sm-12">
                                <h4 class="modal-title"><span id="textModalSize"> </span>Size</h4>
                            </div>
                            <div class="col-md-5 col-sm-12" style="text-align: right;">
                                <button type="button" class="btn btn-success Pos_Viewer" id="btnSaveSize" data-action="">Save</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-body" style="overflow-y: auto; max-height: 28em; max-width: 100%;">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;display:none;">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Size Code:</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="textSizeCode" class="form-control max-wide" autocomplete="off" disabled>
                                </div>
                            </div>

                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Size Name :</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="textSizeName" class="form-control " style="min-width: 100%" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1em;" id="divStatus_Size">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <label class="control-label" style="font-size: 13px">Status :</label>
                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <select class="form-control max-wide" id="textSizeStatus">
                                        <option value="">=======Please Select Status=======</option>
                                        <option value="Active" selected>Active</option>
                                        <option value="InActive">InActive</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                </div>
            </div>
        </div>
    </div>
    <%--Browse Type Insert/Edit--%>





    <script type="text/javascript">
        $(document).ready(function () {

            Pos_Viewer();

            var TableGroup_Active = $("#TableGroup_Active").DataTable({
                searching: false,
                "bInfo": true,
                "paging": true,
                "info": false,
                //"pageLength" : 10,
                //"columnDefs": [{
                //    "targets": [0, 1, ],
                //    "orderable": false
                //}],
                //"bInfo": false,
                //"paging":   false,
                //"ordering": false,
                //"info":     false
            });

            var TableGroup_InActive = $("#TableGroup_InActive").DataTable({
                searching: false,
                "bInfo": true,
                "paging": true,
                "info": false
            });

            var TableType_Active = $("#TableType_Active").DataTable({
                searching: false,
                "bInfo": true,
                "paging": true,
                "info": false
            });

            var TableType_InActive = $("#TableType_InActive").DataTable({
                searching: false,
                "bInfo": true,
                "paging": false,
                "info": false
            });

            var TableSize_Active = $("#TableSize_Active").DataTable({
                searching: false,
                "bInfo": true,
                "paging": true,
                "info": false
            });

            var TableSize_InActive = $("#TableSize_InActive").DataTable({
                searching: false,
                "bInfo": true,
                "paging": true,
                "info": false
            });


            GET_TB_ToolTag_MainGroup('');

            $(document).on('change', '#SearchGroup_Step1', function () {
                var search = $(this).val();
                GET_TB_ToolTag_MainGroup(search);
            });

            $(document).on('change', '#SearchType_Step2', function () {
                var search = $(this).val();
                var GroupCode = $("#SelectGroup_Step1").val();
                console.log(GroupCode);
                GET_TB_ToolTag_MainType(GroupCode,search);
            });

            $(document).on('change', '#SearchSize_Step3', function () {
                var search = $(this).val();
                var TypeCode = $("#SelectType_Step2").val();
                console.log(TypeCode);
                GET_TB_ToolTag_MainSize(TypeCode,search)
            });

            $(document).on('click', '.ClickGroup_SelectStep1', function () {
                $("#ListGroup_Active").find("tr").find("td").find("a").removeClass("SelectLine");
                $("#ListGroup_InActive").find("tr").find("td").find("a").removeClass("SelectLine");
                var row = $(this).closest("tr");
                var txtGroupCode = row.find("td:nth-child(1)").text();
                var txtGroupName = row.find("td:nth-child(2)").text();
                $("#Title_TextHeaderMainType").text(txtGroupCode + " " + txtGroupName);
                $("#divMainType_Step2").show();
                $("#divMainSize_Step3").hide();
                row.find("td").find("a").addClass("SelectLine");
                $("#SelectGroup_Step1").val(txtGroupCode);
                //Set Value
                $('.nav-tabs a[href="#Type_Active"]').tab('show');
                //Set Default Tab1 
                GET_TB_ToolTag_MainType(txtGroupCode,'')
                //LoadData
            });

            $(document).on('click', '.ClickType_SelectStep2', function () {
                $("#TableType_Active").find("tr").find("td").find("a").removeClass("SelectLine");
                $("#TableType_InActive").find("tr").find("td").find("a").removeClass("SelectLine");
                var row = $(this).closest("tr");
                var txtTypeName = row.find("td:nth-child(1)").text();
                $("#Title_TextHeaderMainSize").text(txtTypeName);
                $("#divMainSize_Step3").show();
                var TypeCode = $(this).attr("data-id");
                row.find("td").find("a").addClass("SelectLine");
                $("#SelectType_Step2").val(TypeCode);
                //Set Value
                $('.nav-tabs a[href="#Size_Active"]').tab('show');
                //Set Default Tab1 
                GET_TB_ToolTag_MainSize(TypeCode,'')
                //LoadData
            });

            $(document).on('click', '.btnGroup', function () {
                var type = $(this).attr("data-type");
                if (type == "Insert") {
                    $("#textGroupCode").val('');
                    $("#textGroupName").val('');
                    $("#textGroupStatus").val('Active');
                    $("#divStatus_Group").show();
                    $("#textGroupCode").prop("disabled", false);
                } else if (type == "Edit") {
                    var row = $(this).closest("tr");
                    var textGroupCode = row.find("td:nth-child(1)").text();
                    var textGroupName = row.find("td:nth-child(2)").text();
                    $("#textGroupCode").val(textGroupCode);
                    $("#textGroupName").val(textGroupName);
                    $("#divStatus_Group").hide();
                    $("#textGroupCode").prop("disabled", true);
                }
                $("#btnSaveGroup").attr("data-action", type);
                $("#textModalGroup").text(type)
                $("#ModalGroup").modal("show");
            });

            $(document).on('click', '.btnModalType', function () {
                var type = $(this).attr("data-type");
                var ID = $(this).attr("data-id");
                if (type == "Insert") {
                    $("#textTypeCode").val(0);
                    $("#textTypeName").val('');
                    $("#textTypeStatus").val('Active');
                    $("#checkbox_Calibration").prop('checked', false);
                    $("#divStatus_Type").show();
                } else if (type == "Edit") {
                    var row = $(this).closest("tr");
                    var textTypeCode = ID;
                    var textTypeName = row.find("td:nth-child(1)").text();
                    var calibration_master = $(this).attr("data-calibration_master");
                    $("#checkbox_Calibration").prop('checked', calibration_master == 'True' ? true : false);
                    $("#textTypeCode").val(textTypeCode);
                    $("#textTypeName").val(textTypeName);
                    $("#divStatus_Type").hide();
                    console.log('Edit')
                }
                $("#btnSaveType").attr("data-action", type);
                $("#textModalType").text(type)
                $("#ModalType").modal("show");
            });

            $(document).on('click', '.btnModalSize', function () {
                var type = $(this).attr("data-type");
                var ID = $(this).attr("data-id");
                if (type == "Insert") {
                    $("#textSizeCode").val(0);
                    $("#textSizeName").val('');
                    $("#textSizeStatus").val('Active');
                    $("#divStatus_Size").show();
                } else if (type == "Edit") {
                    var row = $(this).closest("tr");
                    var textTypeCode = ID;
                    var textTypeName = row.find("td:nth-child(1)").text();
                    $("#textSizeCode").val(textTypeCode);
                    $("#textSizeName").val(textTypeName);
                    $("#divStatus_Size").hide();
                    console.log('Edit')
                }
                $("#btnSaveSize").attr("data-action", type);
                $("#textModalSize").text(type)
                $("#ModalSize").modal("show");
            });



            $(document).on('click', '.btnChangeStatus', function () {
                var Stauts = $(this).attr("data-status");
                var Maintype = $(this).attr("data-maintype");
                var ID = $(this).attr("data-id");
                console.log(Stauts)
                console.log(Maintype)
                console.log(ID)
                //if (status == "Deactivate") {
                //} else if (status == "Activate") {
                //}
                swal({
                    title: 'Confirm ?',
                    text: "",
                    icon: 'info',
                    buttons: {
                        cancel: true,
                        confirm: true,
                    },
                }).then(function (confirm) {
                    if (confirm) {
                        if (Maintype == "Group") {
                            console.log('Group');
                            SaveGroup(ID, '', Stauts, 'Status')
                            GET_TB_ToolTag_MainGroup('')
                        }
                        else if (Maintype == "Type") {
                            console.log('type');
                            var Calibration_Master = $(this).attr("data-calibration_Master") == "True" ? 1 : 0;
                            let GroupCode = $("#SelectGroup_Step1").val();
                            SaveType(ID, '', Stauts, GroupCode,Calibration_Master, 'Status')
                        }
                        else if (Maintype == "Size") {
                            console.log('Size');
                            let TypeCode = $("#SelectType_Step2").val();
                            SaveSize(ID, '', Stauts, TypeCode, 'Status');
                        }
                    }
                })
            });

            $(document).on('click', '#btnSaveGroup', function () {
                var GroupCode = $("#textGroupCode").val();
                var GroupName = $("#textGroupName").val();
                var GroupStatus = $("#textGroupStatus").val();
                var Action = $(this).attr("data-action");
                console.log(GroupCode)
                console.log(GroupName)
                console.log(GroupStatus)
                console.log(Action)
                if (GroupCode != "" && GroupName != "" && GroupStatus != "" && Action != "") {
                    SaveGroup(GroupCode, GroupName, GroupStatus, Action);
                    $("#ModalGroup").modal("hide");
                } else {
                    swal('Error', '', 'error');
                }
            });


            $(document).on('click', '#btnSaveType', function () {
                var TypeCode = $("#textTypeCode").val();
                var TypeName = $("#textTypeName").val();
                var TypeStatus = $("#textTypeStatus").val();
                var Action = $(this).attr("data-action");
                var GroupCode = $("#SelectGroup_Step1").val();
                var Calibration_Master = $("#checkbox_Calibration").is(':checked') ? 1 : 0;
                console.log(TypeCode)
                console.log(TypeName)
                console.log(TypeStatus)
                console.log(Action)
                if (TypeCode != "" && TypeName != "" && TypeStatus != "" && Action != "" && GroupCode != "") {
                    SaveType(TypeCode, TypeName, TypeStatus, GroupCode,Calibration_Master, Action);
                    $("#ModalType").modal("hide");
                } else {
                    swal('Error', '', 'error');
                }
            });


            $(document).on('click', '#btnSaveSize', function () {
                var SizeCode = $("#textSizeCode").val();
                var SizeName = $("#textSizeName").val();
                var SizeStatus = $("#textSizeStatus").val();
                var Action = $(this).attr("data-action");
                var TypeCode = $("#SelectType_Step2").val();
                console.log(SizeCode)
                console.log(SizeName)
                console.log(SizeStatus)
                console.log(Action)
                if (SizeCode != "" && SizeName != "" && SizeStatus != "" && Action != "" && TypeCode != "") {
                    SaveSize(SizeCode, SizeName, SizeStatus, TypeCode, Action);
                    $("#ModalSize").modal("hide");
                } else {
                    swal('Error', '', 'error');
                }
            });

            function SaveGroup(GroupCode, GroupName, GroupStatus, Action) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%=ResolveUrl("Default.aspx/SP_ToolTag_MainGroup")%>",
                    contentType: "application/json; charset = utf-8",
                    dataType: "json",
                    data: JSON.stringify({ GroupCode: GroupCode, GroupName: GroupName, GroupStatus: GroupStatus, Action: Action }),
                    success: function (response) {
                        let Msg = response.d;
                        if (Msg != "Complete") {
                            swal('Error', Msg, 'error');
                        } else {
                          swal('Complete', Msg, 'success');
                        }
                        GET_TB_ToolTag_MainGroup('');
                    }
                });
            }

            function SaveType(TypeCode, TypeName, TypeStatus, GroupCode,Calibration_Master, Action) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%=ResolveUrl("Default.aspx/SP_ToolTag_MainType")%>",
                    contentType: "application/json; charset = utf-8",
                    dataType: "json",
                    data: JSON.stringify({ TypeCode: TypeCode, TypeName: TypeName, TypeStatus: TypeStatus, GroupCode: GroupCode,Calibration_Master:Calibration_Master, Action: Action }),
                    success: function (response) {
                        swal('Complete', '', 'success');
                        GET_TB_ToolTag_MainType(GroupCode,'');
                    }
                });
            }

            function SaveSize(SizeCode, SizeName, SizeStatus, TypeCode, Action) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%=ResolveUrl("Default.aspx/SP_ToolTag_MainSize")%>",
                    contentType: "application/json; charset = utf-8",
                    dataType: "json",
                    data: JSON.stringify({ SizeCode: SizeCode, SizeName: SizeName, SizeStatus: SizeStatus, TypeCode: TypeCode, Action: Action }),
                    success: function (response) {
                        swal('Complete', '', 'success');
                        GET_TB_ToolTag_MainSize(TypeCode,'');
                    }
                });
            }


            function GET_TB_ToolTag_MainGroup(search) {
                TableGroup_Active.clear().draw();
                TableGroup_InActive.clear().draw();
                var selected = $("#SelectGroup_Step1").val()
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GET_TB_ToolTag_MainGroup") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({}),
                    data: JSON.stringify({ search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var GroupCode = val[0];
                                var GroupName = val[1];
                                var Status = val[2];
                                var column_GroupCode = "";
                                var column_GroupName = "";
                                if (GroupCode == selected) {
                                     column_GroupCode = '<td><a class="ClickGroup_SelectStep1 SelectLine" href="javascript:void(0)">' + GroupCode + '</a></td>'
                                     column_GroupName = '<td><a class="ClickGroup_SelectStep1 SelectLine" href="javascript:void(0)">' + GroupName + '</a></td>'
                                } else {
                                     column_GroupCode = '<td><a class="ClickGroup_SelectStep1 " href="javascript:void(0)">' + GroupCode + '</a></td>'
                                     column_GroupName = '<td><a class="ClickGroup_SelectStep1 " href="javascript:void(0)">' + GroupName + '</a></td>'
                                }
                                if (Status == "Active") {
                                    TableGroup_Active.row.add([
                                        column_GroupCode,
                                        column_GroupName,
                                        '<td> <button type="button" class="btn btn-warning btnGroup Pos_Viewer" data-type="Edit">Edit</button></td>',
                                        '<td><button type="button" class="btn btn-danger btnChangeStatus Pos_Viewer" data-id="' + GroupCode + '" data-maintype="Group" data-status="InActive">Deactivate</button></td>',
                                    ]).draw(false);
                                }
                                else {
                                    TableGroup_InActive.row.add([
                                        column_GroupCode,
                                        column_GroupName,
                                        '<td><button type="button" class="btn btn-warning btnGroup Pos_Viewer" data-type="Edit">Edit</button></td>',
                                        '<td><button type="button" class="btn btn-success btnChangeStatus Pos_Viewer" data-id="' + GroupCode + '" data-maintype="Group" data-status="Active">Activate</button></td>',
                                    ]).draw(false);
                                }
                            });
                        }
                        $("#IMGUpload").modal("hide");
                        Pos_Viewer();
                    }
                });
            }

            function GET_TB_ToolTag_MainType(GroupCode,search) {
                TableType_Active.clear().draw();
                TableType_InActive.clear().draw();
                var selected = $("#SelectType_Step2").val()
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GET_TB_ToolTag_MainType") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ GroupCode: GroupCode ,search:search}),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[TypeCode] ,[TypeName] ,[Status] 
                                var TypeCode = val[0];
                                var TypeName = val[1];
                                var Status = val[2];
                                var Calibration_Master = val[3];

                                //$("#checkbox_Calibration").prop('checked', Calibration == 'True' ? true : false);
                                var Checkbox_Calibration_Master = ""
                                var column_TypeName = "";
                                if (Calibration_Master == 'True' || Calibration_Master == 1 ) {
                                    Checkbox_Calibration_Master = '<td><span class="glyphicon glyphicon-ok" aria-hidden="true" style="margin-left: 20px;color: green;"></span></td>'
                                } else {
                                    Checkbox_Calibration_Master = '<td><span class="glyphicon glyphicon-remove" aria-hidden="true" style="margin-left: 20px;color: red;"></span></td>'
                                }
                                //Set Icon Calibration
                                if (TypeCode == selected) {
                                     column_TypeName = '<td><a class="ClickType_SelectStep2 SelectLine"  data-id="' + TypeCode + '" href="javascript:void(0)">' + TypeName + '</a></td>'
                                } else {
                                     column_TypeName = '<td><a class="ClickType_SelectStep2"  data-id="' + TypeCode + '" href="javascript:void(0)">' + TypeName + '</a></td>'
                                }
                                //Set ColumnName

                                if (Status == "Active") {
                                    TableType_Active.row.add([
                                        column_TypeName,
                                        Checkbox_Calibration_Master,
                                        '<td> <button type="button" class="btn btn-warning btnModalType Pos_Viewer" data-id="' + TypeCode + '" data-Calibration_Master="'+Calibration_Master+'" data-type="Edit">Edit</button></td>',
                                        '<td><button type="button" class="btn btn-danger btnChangeStatus Pos_Viewer" data-id="' + TypeCode + '"data-Calibration_Master="'+Calibration_Master+'"  data-maintype="Type"data-status="InActive">Deactivate</button></td>',
                                    ]).draw(false);
                                }
                                else {
                                    TableType_InActive.row.add([
                                        column_TypeName,
                                        Checkbox_Calibration_Master,
                                        '<td><button type="button" class="btn btn-warning btnModalType Pos_Viewer" data-id="' + TypeCode + '" data-Calibration_Master="'+Calibration_Master+'" data-type="Edit">Edit</button></td>',
                                        ' <td><button type="button" class="btn btn-success btnChangeStatus Pos_Viewer" data-id="' + TypeCode + '"data-Calibration_Master="'+Calibration_Master+'"  data-maintype="Type" data-status="Active">Activate</button></td>',
                                    ]).draw(false);
                                }
                                //Add To Table
                            });
                        }
                        $("#IMGUpload").modal("hide");
                        Pos_Viewer();
                    }
                });
            }

            function GET_TB_ToolTag_MainSize(TypeCode,search) {
                TableSize_Active.clear().draw();
                TableSize_InActive.clear().draw();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GET_TB_ToolTag_MainSize") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ TypeCode: TypeCode,search:search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                // [SizeCode] ,[SizeName] ,[Status]
                                var SizeCode = val[0];
                                var SizeName = val[1];
                                var Status = val[2];
                                if (Status == "Active") {
                                    TableSize_Active.row.add([
                                        SizeName,
                                        '<td><button type="button" class="btn btn-warning btnModalSize Pos_Viewer" data-id="' + SizeCode + '" data-type="Edit">Edit</button></td>',
                                        '<td> <button type="button" class="btn btn-danger btnChangeStatus Pos_Viewer" data-id="' + SizeCode + '" data-maintype="Size" data-status="InActive">Deactivate</button></td>',
                                    ]).draw(false);
                                }
                                else {
                                    TableSize_InActive.row.add([
                                        SizeName,
                                        '<td><button type="button" class="btn btn-warning btnModalSize Pos_Viewer" data-id="' + SizeCode + '" data-type="Edit">Edit</button></td>',
                                        '<td> <button type="button" class="btn btn-success btnChangeStatus Pos_Viewer" data-id="' + SizeCode + '" data-maintype="Size"data-status="Active">Activate</button></td>',
                                    ]).draw(false);
                                }
                            });
                        }
                        $("#IMGUpload").modal("hide");
                        Pos_Viewer();
                    }
                });
            }



            function Pos_Viewer() {
                var CheckPage = CheckPermission_Nosite('Maintain Master');
                if (CheckPage == "") {
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
            }

            
        });



    </script>

</asp:Content>
