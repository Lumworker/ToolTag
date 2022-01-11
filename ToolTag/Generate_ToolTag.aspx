<%@ Page Title="Generate ToolTag" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Generate_ToolTag.aspx.cs" Inherits="ToolTag.Generate_ToolTag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .max-wide {
            max-width: 100%;
        }
        inp
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

        .red {
            color: red;
            font-size: 18px;
        }

        input[type=checkbox] {
            /* Double-sized Checkboxes */
            -ms-transform: scale(2); /* IE */
            -moz-transform: scale(2); /* FF */
            -webkit-transform: scale(2); /* Safari and Chrome */
            -o-transform: scale(2); /* Opera */
            transform: scale(2);
            padding: 10px;
        }

        /* Might want to wrap a span around your checkbox text */
        .checkboxtext {
            /* Checkbox text */
            font-size: 110%;
            display: inline;
        }
    </style>
    <div class="page-header">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4" style="text-align: left;">
                <h2>Generate ToolTag</h2>
            </div>

            <div class="col-md-8 col-sm-8 col-xs-8" style="text-align: right">
                <%--<button id="btnModalNew" class="btn btn-info" type="button" data-toggle="modal">New </button>--%>
                <%--<button id="btnModalNew" class="btn btn-success PositionCheck" type="button" data-toggle="modal" style="float: right">New </button>--%>
            </div>
        </div>
    </div>

    <div class="panel-group">
        <div class="panel-body">
            <div class="row">
                <div id="smartwizard">
                    <ul>
                        <li class="check" data-step="Step1"><a href="#step-1">Select MainGroup</a></li>
                        <li class="check" data-step="Step2"><a href="#step-2">PO Number</a></li>
                        <li class="check" data-step="Step3"><a href="#step-3">Fill Data</a></li>
                        <li class="check" data-step="Step4"><a href="#step-4">Set Image</a></li>
                        <li class="check" data-step="Step5"><a href="#step-5">Fill Serial</a></li>
                        <li class="check" data-step="Step6"><a href="#step-6">Complete</a></li>
                    </ul>
                    <div class="row">
                        <div id="step-1" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Select MainGroup</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <div class="col-md-12 col-sm-12">
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-2">
                                                            <label class="control-label">Group :</label>
                                                        </div>
                                                        <div class="col-md-10">
                                                            <div class="input-group">
                                                                <input type="text" id="textGroupCode" class="form-control" style="min-width: 100%; display: none" autocomplete="off" disabled />
                                                                <input type="text" id="textGroupName" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                                                <div class="input-group-btn">
                                                                    <button class="btn btn-default Browse_modal" data-type="Group" type="button">
                                                                        <i class="glyphicon glyphicon-search"></i>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-2">
                                                            <label class="control-label">Type :</label>
                                                        </div>
                                                        <div class="col-md-10">
                                                            <div class="input-group">
                                                                <input type="text" id="textTypeName" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                                                <div class="input-group-btn">
                                                                    <button class="btn btn-default Browse_modal" data-type="Type" type="button">
                                                                        <i class="glyphicon glyphicon-search"></i>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-bottom: 2rem;">
                                                    <div class="col-md-12">
                                                        <div class="col-md-2">
                                                            <label class="control-label">Size :</label>
                                                        </div>
                                                        <div class="col-md-10">
                                                            <div class="input-group">
                                                                <input type="text" id="textSizeName" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                                                <div class="input-group-btn">
                                                                    <button class="btn btn-default Browse_modal" data-type="Size" type="button">
                                                                        <i class="glyphicon glyphicon-search"></i>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row" style="display: none">
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-md-3 col-xs-12">
                                                                <label class="control-label">Type Code :</label>
                                                            </div>
                                                            <div class="col-md-8 col-xs-12">
                                                                <input type="text" id="textTypeCode" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="col-md-3 col-xs-12">
                                                            <label class="control-label">Size Code:</label>
                                                        </div>
                                                        <div class="col-md-8 col-xs-12">
                                                            <input type="text" id="textSizeCode" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="text-align: right">
                                            <button id="nextPage2" class="btn btn-warning Pos_Viewer" type="button"
                                                data-toggle="modal" disabled>
                                                Next</button>
                                        </div>
                                    </div>
                                    <%--End panel-body--%>
                                </div>
                            </div>
                        </div>
                        <%--======End Step 1======--%>
                        <div id="step-2" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>PO Number</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-md-12 col-sm-12">
                                            <div class="row">
                                                <div class="col-md-12" style="margin-bottom: 1em;">
                                                    <div class="col-md-3">
                                                        <label class="control-label">PO No. :</label>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="input-group">
                                                            <input type="text" id="textPO_No" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                            <div class="input-group-btn">
                                                                <button class="btn btn-default Browse_modal" data-type="PONumber" type="button">
                                                                    <i class="glyphicon glyphicon-search"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12" style="margin-bottom: 1em;">
                                                    <div class="col-md-3">
                                                        <label class="control-label">Vendor :</label>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="input-group">
                                                            <input id="textVender" type="text" class="form-control max-wide" style="display: none;" placeholder="ดึงตาม PO ที่เลือก" disabled>
                                                            <input id="textVender_Name" type="text" class="form-control max-wide" placeholder="ดึงตาม PO ที่เลือก" disabled>
                                                            <div class="input-group-btn">
                                                                <button class="btn btn-default  Browse_modal" data-type="Vender"
                                                                    type="button">
                                                                    <i class="glyphicon glyphicon-search"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12" style="margin-bottom: 1em;">
                                                    <div class="col-md-3">
                                                        <label class="control-label">Date Purchase :</label>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <input type="text" id="textDate_Purchase" class="form-control" data-provide="datepicker" style="min-width: 100%" placeholder="dd/mm/yyyy" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12" style="margin-bottom: 1em;">
                                                    <div class="col-md-3">
                                                        <label class="control-label">Purchase Price :</label>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <input type="text" id="textPurchase_Price" class="form-control " pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" data-type="currency" style="min-width: 100%" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12" style="margin-bottom: 1em;">
                                                    <div class="col-md-3">
                                                        <label class="control-label">QTY :</label>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <input type="text" id="textQTY" class="form-control " pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" data-type="currency" style="min-width: 100%" autocomplete="off" />
                                                    </div>
                                                </div>
                                                <%--End fill--%>
                                                <div style="text-align: right;">
                                                    <button id="nextPage3" class="btn btn-warning" type="button" data-toggle="modal" disabled>
                                                        Next</button>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======End Step 2======--%>
                        <div id="step-3" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Fill Data (<span id="Headerfilldata" style="color: red"></span>)</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-md-12 col-sm-12">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-md-3 col-xs-12">
                                                                <label class="control-label">Status :</label>
                                                            </div>
                                                            <div class="col-md-9 col-xs-12">
                                                                <select id="textStatus" class="form-control max-wide">
                                                                    <option value="Active">Active</option>
                                                                    <option value="InActive">InActive</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-md-3 col-xs-12">
                                                                <label class="control-label">Brand :</label>
                                                            </div>
                                                            <div class="col-md-9 col-xs-12">
                                                                <input id="textBrand" type="text" class="form-control max-wide">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-md-3 col-xs-12">
                                                                <label class="control-label">Model :</label>
                                                            </div>
                                                            <div class="col-md-9 col-xs-12">
                                                                <input id="textModel" type="text" class="form-control max-wide">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row" id="div-statusInActive" style="display: none;">
                                                    <div class="col-md-12" style="margin-bottom: 1em;">
                                                        <div class="col-md-6 col-xs-12">
                                                            <div class="row form-group">
                                                                <div class="col-md-3 col-xs-12">
                                                                    <label class="control-label">Date Inactive :</label>
                                                                </div>
                                                                <div class="col-md-9 col-xs-12">
                                                                    <input id="textDate_Inactive" type="text" class="form-control max-wide" placeholder="dd/mm/yyyy">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-xs-12">
                                                            <div class="row form-group">
                                                                <div class="col-md-3 col-xs-12">
                                                                    <label class="control-label">Reason :</label>
                                                                </div>
                                                                <div class="col-md-9 col-xs-12">
                                                                    <select id="textReason" class="form-control max-wide">
                                                                        <option value="">===Plase Select Reason ===</option>
                                                                        <option value="ชำรุด">ชำรุด</option>
                                                                        <option value="จำหน่าย">จำหน่าย</option>
                                                                        <option value="จำหน่ายซาก">จำหน่ายซาก</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-md-3 col-xs-12">
                                                                <label class="control-label">BU group :</label>
                                                            </div>
                                                            <div class="col-md-9 col-xs-12">
                                                                <div class="input-group">
                                                                    <input type="text" id="textBUGroup" class="form-control" style="min-width: 100%; display: none" autocomplete="off" disabled />
                                                                    <input type="text" id="textBUGroupName" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                                                    <div class="input-group-btn">
                                                                        <button class="btn btn-default Browse_modal" data-type="BUGroup" type="button">
                                                                            <i class="glyphicon glyphicon-search"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-md-3 col-xs-12">
                                                                <label class="control-label">Location :</label>
                                                            </div>
                                                            <div class="col-md-9 col-xs-12">
                                                                <%--<select id="textLocation" class="form-control max-wide">
                                                                    <option value="">===Plase Select Location ===</option>
                                                                </select>--%>
                                                                <div class="input-group">
                                                                    <input type="text" id="textLocation" class="form-control" style="min-width: 100%; display: none" autocomplete="off" disabled />
                                                                    <input type="text" id="textLocation_Description" class="form-control" style="min-width: 100%" autocomplete="off" disabled />
                                                                    <div class="input-group-btn">
                                                                        <button class="btn btn-default Browse_modal" data-type="Location" type="button">
                                                                            <i class="glyphicon glyphicon-search"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-md-3 col-xs-12">
                                                                <label class="control-label">Calibration :</label>
                                                            </div>
                                                            <div class="col-md-9 col-xs-12">
                                                                <input class="form-check-input" type="checkbox" id="checkbox_Calibration" style="margin-left: 5px;">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-md-3 col-xs-12">
                                                                <label class="control-label" style="font-size: 14px;">Market Price :</label>
                                                            </div>
                                                            <div class="col-md-9 col-xs-12">

                                                                <input type="text" id="textMarket_Price" class="form-control " pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" data-type="currency" style="min-width: 100%" autocomplete="off" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-12">
                                                        <div class="row form-group">
                                                            <div class="col-md-3 col-xs-12">
                                                                <label class="control-label">Remark :</label>
                                                            </div>
                                                            <div class="col-md-9 col-xs-12">
                                                                <div class="form-group">
                                                                    <textarea class="form-control max-wide" id="textDescription" rows="3"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div style="text-align: right; margin: 1rem;">
                                                <button id="nextPage4" class="btn btn-warning" type="button"
                                                    data-toggle="modal">
                                                    Next</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======End Step 3======--%>
                        <div id="step-4" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Set Image</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <div class="main-img-preview" style="text-align: center; margin-bottom: 20px;">
                                                    <a href="javascript:void(0)" id="Click_Image">
                                                        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                                                            <div class="carousel-inner">
                                                                <div class="carousel-item active">
                                                                    <img class="d-block w-100 img-preview rounded img-thumbnail" src="images/Upload.png" onerror="this.onerror=null; this.src='images/Upload.png'" style="height: 300px;" alt="IMAGE" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <p style="font-size: 18px; margin-top: 1rem;">คลิกที่ภาพเพื่ออัพโหลด รูปภาพเครื่องมือ</p>
                                                    <div>
                                                        <input type="file" id="Input_Image" style="display: none">
                                                        <input type="text" id="Input_Image_OLD" disabled style="display: none">
                                                    </div>
                                                </div>
                                                <div style="text-align: right; margin: 1rem;">
                                                    <button id="nextPage5" class="btn btn-warning" type="button"
                                                        data-toggle="modal">
                                                        Next</button>
                                                </div>
                                            </div>
                                            <!--- End  (Image) --->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======End Step 4======--%>
                        <div id="step-5" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Fill Serial</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div style="max-width: 100%;display: none">
                                                <div class="col-md-12 ">
                                                <input type="text" id="Asset_no_num" disabled>
                                                   ฝากค่า Asset No ว่าBrowse เป็นของ บรรนทัดไหน
                                                </div>
                                            </div>
                                            <div style="max-width: 100%;">
                                                <div class="col-md-12 col-sm-12" id="divfillkey">
                                                </div>
                                            </div>
                                            <div style="text-align: right; margin: 1rem;">
                                                <button id="nextPage6" class="btn btn-warning" type="button"
                                                    data-toggle="modal">
                                                    Next</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======End Step 5======--%>
                        <div id="step-6" class="">
                            <div class="panel-group">
                                <div class="panel panel-default" style="margin-top: 1em;">
                                    <div class="panel-heading">
                                        <h4>Complete</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div style="max-width: 100%;">
                                            <div class="col-md-12 col-sm-12" id="divCompletely">
                                                <div class="row">
                                                    <div class="table-responsive">
                                                        <table class="table table-hover table-bordered" id="table_Completely">
                                                            <thead>
                                                                <tr>
                                                                    <th>Tag Code</th>
                                                                    <th>Group</th>
                                                                    <th>Type</th>
                                                                    <th>Size</th>
                                                                    <th>Description</th>
                                                                    <th>Brand</th>
                                                                    <th>Model</th>
                                                                    <th>Status</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="Tbody_Completely">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="text-align: right; margin: 1rem;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--======End Step 6======--%>
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
                    <h4 id="text_po_is_empty" style="text-align: center; display: none">Please input in Textbox for searching PO Number</h4>
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


    <script>
        $(document).ready(function () {
            
            var site_ref = "";
            if (getAllUrlParams("site_ref")) {
                site_ref = getAllUrlParams("site_ref");
            }
            var CheckPage = CheckPermission('Generate ToolTag',site_ref);
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
            }else if (CheckPage == "Viewer") {
                $(".Pos_Viewer").hide();
            }
            //Check Permsission

            var site_ref = getAllUrlParams("site_ref");
            //SetLocation()
            var table_Completely = $('#table_Completely').DataTable({
                searching: false,
                lengthChange: true,
                responsive: false
            });

            $('#smartwizard').smartWizard({
                theme: 'arrows',
                keyNavigation: false,
                showStepURLhash: false,
                selected: 0, //ใส่ 0 จะเริ่มที่ Step แรกสุด
                transitionEffect: 'slide',
                toolbarSettings: { toolbarPosition: 'none', showNextButton: 'false', showPreviousButton: 'false' }
            });


            $(document).on("click", "#nextPage2", function () {
                var textGroupName = $("#textGroupName").val();
                var textTypeName = $("#textTypeName").val();
                if (textGroupName != "" && textTypeName != "") {
                    $('#smartwizard').data('smartWizard').next(1);
                } else {
                    swal('Error', 'กรุณาเลือก Group, Type และ Size', 'error');
                }
            });

            $(document).on("click", "#nextPage3", function () {
                var textGroupName = $("#textGroupName").val();
                var textTypeName = $("#textTypeName").val();
                var textSizeName = $("#textSizeName").val() == "" ? "ไม่ได้เลือก Size" : $("#textSizeName").val();
                var textQTY = $("#textQTY").val();
                var sometext = textGroupName + ' : ' + textTypeName + ' : ' + textSizeName;
                $("#Headerfilldata").text(sometext);
                if (textQTY != "") {
                    $('#smartwizard').data('smartWizard').next(1);
                } else {
                    swal('Error', 'กรุณาเลือก PO และตรวจสอบช่อง QTY', 'error');
                }
            });

            $(document).on("click", "#nextPage4", function () {
                var textLocation = $("#textLocation").val();
                if (textLocation != "") {
                    $('#smartwizard').data('smartWizard').next(1);
                } else {
                    swal('Error', 'กรุณา เลือก Location ', 'error');
                }
            });

            $(document).on("click", "#nextPage5", function () {
                fillKey();
                $('#smartwizard').data('smartWizard').next(1);
            });


            $(document).on("click", ".Browse_modal", function () {
                var fragment = '';
                var fragmentHeader = '';
                var Type = $(this).attr("data-type");
                $("#Titlebrowse").text(Type);
                $("#TBbodyBrowse").empty();
                $("#TBheaderBrowse").empty();
                $("#search_box").empty();
                $("#text_po_is_empty").hide();
                $("#search_box").append('<input type="text" id="search_' + Type + '" placeholder="Search.." class="form-control max-wide" autocomplete="off">');

                if (Type == 'Group') {
                    Get_BrowseGroup('');
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'Type') {
                    var GroupCode = $("#textGroupCode").val();
                    if (GroupCode != "") {
                        Get_BrowseType(GroupCode, '');
                        $("#modalBrowseSearch").modal("show");
                    } else {
                        swal('Error', 'กรุณาเลือก Group', 'error');
                    }
                }//End 
                else if (Type == 'Size') {
                    var GroupCode = $("#textGroupCode").val();
                    var TypeName = $("#textTypeName").val();
                    if (GroupCode != "" && TypeName != "") {
                        Get_BrowseSize(GroupCode, TypeName, '');
                        $("#modalBrowseSearch").modal("show");
                    } else {
                        swal('Error', 'กรุณาเลือก Group และ Type', 'error');
                    }
                }//End 
                else if (Type == 'PONumber') {
                    ModalPoNumber('');
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'AssetNumber') {
                    let Asset_no_num = $(this).attr("data-num");
                    $("#Asset_no_num").val(Asset_no_num);
                    ModalAssetNumber('');
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'ToolTag') {
                    BrowseToolTag('');
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'BUGroup') {
                    Get_BUGroup('');
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'Location') {
                    Get_Location('');
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'Vender') {
                    Get_Vender('',site_ref);
                    $("#modalBrowseSearch").modal("show");
                }//End 


                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                //$("#modalBrowseSearch").modal("show");

            });
            //Modal Browse



            function Get_BrowseGroup(search) {
                $("#Titlebrowse").text('Search Group');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                //size Modal
                fragmentHeader = `<th>Group Code</th>
                                     <th>Group Name</th>
                                     <th>Status</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GETBrowse_OnlyActive_TB_ToolTag_MainGroup") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[GroupCode] ,[GroupName] ,[Status]
                                var GroupCode = val[0];
                                var GroupName = val[1];
                                var Status = val[2];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselectGroup_Browse" href="javascript:void(0)"  >' + GroupCode + '</a></td>';
                                fragment += '<td><a class="clickselectGroup_Browse" href="javascript:void(0)"  >' + GroupName + '</a></td>';
                                fragment += '<td><a class="clickselectGroup_Browse" href="javascript:void(0)"  >' + Status + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
            }
            //Get Browse

            function Get_BrowseType(GroupCode, search) {
                $("#Titlebrowse").text('Search Type');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                //size Modal
                fragmentHeader = `<th>Type Code</th>
                                    <th>Type Name</th>
                                    <th>Calibration</th>
                                     <th>Status</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GETBrowse_OnlyActive_TB_ToolTag_MainType") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ GroupCode: GroupCode, search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[GroupCode] ,[GroupName] ,[Status]
                                var TypeCode = val[0];
                                var TypeName = val[1];
                                var Status = val[2];
                                var Calibration_Master = val[3];
                                if (Calibration_Master == 'True' || Calibration_Master == 1) {
                                    Checkbox_Calibration_Master = '<td><a class="clickselectType_Browse" data-calibration_Master="' + Calibration_Master + '"  href="javascript:void(0)"><span class="glyphicon glyphicon-ok" aria-hidden="true" style="margin-left: 20px;color: green;"></span></a></td>'
                                } else {
                                    Checkbox_Calibration_Master = '<td><a class="clickselectType_Browse" data-calibration_Master="' + Calibration_Master + '"  href="javascript:void(0)"><span class="glyphicon glyphicon-remove" aria-hidden="true" style="margin-left: 20px;color: red;"></span></a></td>'
                                }
                                //Set Icon Calibration
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselectType_Browse" href="javascript:void(0)" data-calibration_Master="' + Calibration_Master + '"  >' + TypeCode + '</a></td>';
                                fragment += '<td><a class="clickselectType_Browse" href="javascript:void(0)"  data-calibration_Master="' + Calibration_Master + '"  >' + TypeName + '</a></td>';
                                fragment += Checkbox_Calibration_Master;
                                fragment += '<td><a class="clickselectType_Browse" href="javascript:void(0)" data-calibration_Master="' + Calibration_Master + '"  >' + Status + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
            }
            //Get Browse Type

            function Get_BrowseSize(GroupCode, TypeName, search) {
                $("#Titlebrowse").text('Search Size');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                //size Modal
                fragmentHeader = `<th>Size Code</th>
                                    <th>Size Name</th>
                                     <th>Status</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GETBrowse_OnlyActive_VW_ToolTag_MainSize") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ GroupCode: GroupCode, TypeName: TypeName, search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[GroupCode] ,[GroupName] ,[Status]
                                var Size = val[0];
                                var SizeName = val[1];
                                var Status = val[2];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselectSize_Browse" href="javascript:void(0)"  >' + Size + '</a></td>';
                                fragment += '<td><a class="clickselectSize_Browse" href="javascript:void(0)"  >' + SizeName + '</a></td>';
                                fragment += '<td><a class="clickselectSize_Browse" href="javascript:void(0)"  >' + Status + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
            }
            //Get Browse Size

            function ModalPoNumber(search) {
                $("#Titlebrowse").text('Search Po Number');
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-lg');
                fragmentHeader = `<th>Po No.</th>
                                    <th>Po Line</th>
                                    <th>Vendor</th>
                                    <th>Vendor name</th>
                                    <th>Date Purchase</th>
                                    <th>Purchase Price</th>
                                    <th>Qty.</th>`;
                if (search != "") {
                    $("#IMGUpload").modal("show");
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/VW_PO_AllSite") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({ search: search ,site_ref:site_ref}),
                        success: function (response) {
                            if (response.d.length > 0) {
                                $.each(response.d, function (index, val) {
                                    //[site_ref], [po_num], [po_line], [item]
                                    //, [Uf_ItemLongDesc], [Uf_ExpenseDesc], [Uf_AssetNumber]
                                    //, [qty], [vend_num], [vend_nane]
                                    //, [item_cost_conv], [AssetDate], [poDate]
                                    var site_ref = val[0];
                                    var po_num = val[1];
                                    var po_line = val[2];
                                    var item = val[3];
                                    var Uf_ItemLongDesc = val[4];
                                    var Uf_ExpenseDesc = val[5];
                                    var Uf_AssetNumber = val[6];
                                    var qty = val[7];
                                    var vend_num = val[8];
                                    var vend_nane = val[9];
                                    var item_cost_conv = val[10];
                                    var AssetDate = val[11];
                                    var poDate = val[12];
                                    fragment += '<tr>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + po_num + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + po_line + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + vend_num + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + vend_nane + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + poDate.substr(0,10) + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + item_cost_conv.split('.')[0] + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + qty.split('.')[0] + '</a></td>';
                                    fragment += '</tr>';
                                });
                            } else {
                                fragment += '<tr>';
                                fragment += '<td>Not Data</td>';
                                fragment += '<td>Not Data</td>';
                                fragment += '<td>Not Data</td>';
                                fragment += '<td>Not Data</td>';
                                fragment += '<td>Not Data</td>';
                                fragment += '<td>Not Data</td>';
                                fragment += '<td>Not Data</td>';
                                fragment += '</tr>';

                            }
                        }
                    });
                    $("#TBheaderBrowse").append(fragmentHeader);
                    $("#text_po_is_empty").hide();
                    $("#IMGUpload").modal("hide");
                } else {
                    $("#text_po_is_empty").show();
                }
                $("#TBbodyBrowse").append(fragment);

            }
            //Get Browse PO Number

            function ModalAssetNumber(search) {
                $("#Titlebrowse").text('Search Asset Number');
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-lg');
                let po_num = $("#textPO_No").val();
                fragmentHeader = `<th>Asset No.</th>
                                     <th>Po No.</th>
                                     <th>item</th>
                                    <th>ExpenseDesc</th>`;
                    $("#IMGUpload").modal("show");
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/GetAssetNumber_VW_PO_AllSite") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({ search: search ,site_ref:site_ref,po_num:po_num}),
                        success: function (response) {
                            if (response.d.length > 0) {
                                $.each(response.d, function (index, val) {
                                    //[site_ref], [po_num], [po_line], [item]
                                    //, [Uf_ItemLongDesc], [Uf_ExpenseDesc], [Uf_AssetNumber]
                                    //, [qty], [vend_num], [vend_nane]
                                    //, [item_cost_conv], [AssetDate], [poDate]
                                    var site_ref = val[0];
                                    var po_num = val[1];
                                    var po_line = val[2];
                                    var item = val[3];
                                    var Uf_ItemLongDesc = val[4];
                                    var Uf_ExpenseDesc = val[5];
                                    var Uf_AssetNumber = val[6];
                                    var qty = val[7];
                                    var vend_num = val[8];
                                    var vend_nane = val[9];
                                    var item_cost_conv = val[10];
                                    var AssetDate = val[11];
                                    var poDate = val[12];
                                    fragment += '<tr>';
                                    fragment += '<td><a class="clickselecttext_AssetNumber" href="javascript:void(0)">' + Uf_AssetNumber + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_AssetNumber" href="javascript:void(0)">' + po_num + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_AssetNumber" href="javascript:void(0)">' + item + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_AssetNumber" href="javascript:void(0)">' + Uf_ExpenseDesc + '</a></td>';
                                    fragment += '</tr>';
                                });
                            } else {
                                fragment += '<tr>';
                                fragment += '<td>Not Data</td>';
                                fragment += '<td>Not Data</td>';
                                fragment += '<td>Not Data</td>';
                                fragment += '<td>Not Data</td>';
                                fragment += '</tr>';

                            }
                        }
                    });
                    $("#TBheaderBrowse").append(fragmentHeader);
                    $("#text_po_is_empty").hide();
                    $("#IMGUpload").modal("hide");
                    $("#TBbodyBrowse").append(fragment);

            }
            //Get Browse Asset Number
            function Get_BUGroup(search) {
                $("#Titlebrowse").text('Search BU Group');
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                fragmentHeader = `
                                  <th>Group</th>
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
            }//Get BuGroup
            function Get_Location(search) {
                $("#Titlebrowse").text('Search Location');
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                fragmentHeader = `
                                  <th>Location</th>
                                  <th>Description</th>
                                `;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/VW_Location") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var Location = val[0];
                                var Description = val[1];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselecttext_Location" href="javascript:void(0)">' + Location + '</a></td>';
                                fragment += '<td><a class="clickselecttext_Location" href="javascript:void(0)">' + Description + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
            }//Get Location
            function Get_Vender(search,site_ref) {
                $("#Titlebrowse").text('Search Vender');
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                fragmentHeader = `
                                  <th>Vedor Num</th>
                                  <th>Vedor Name</th>
                                `;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/VW_Vendor_All") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search,site_ref:site_ref }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[site_ref],[vend_num],[name]
                                var site_ref = val[0];
                                var vend_num = val[1];
                                var name = val[2];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselecttext_Vendor" href="javascript:void(0)">' + vend_num + '</a></td>';
                                fragment += '<td><a class="clickselecttext_Vendor" href="javascript:void(0)">' + name + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
            }
            //Get_Vender
<%--            function SetLocation() {
                var txtLocation = '';
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%=ResolveUrl("Default.aspx/VW_Location")%>",
                    contentType: "application/json; charset = utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[Location],[Description]
                                var Location = val[0];
                                var Description = val[1];
                                //console.log(ID + " " + company+"\n");
                                txtLocation += '<option value="' + Location + '">' + Description + '</option>';
                            });
                        }
                    }
                });
                $("#textLocation").append(txtLocation);
            }
            //Get Location--%>

            $(document).on("change", "#search_Group", function () {
                var search = $(this).val();
                console.log(search);
                Get_BrowseGroup(search);
            });

            $(document).on("change", "#search_Type", function () {
                var search = $(this).val();
                var GroupCode = $("#textGroupCode").val();
                console.log(search);
                console.log(GroupCode);
                Get_BrowseType(GroupCode, search);
            });

            $(document).on("change", "#search_Size", function () {
                var search = $(this).val();
                var GroupCode = $("#textGroupCode").val();
                var GroupTypeName = $("#textTypeName").val();
                console.log(search);
                console.log(GroupCode);
                console.log(GroupTypeName);
                Get_BrowseSize(GroupCode, GroupTypeName, search);
            });

            $(document).on("change", "#search_PONumber", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                ModalPoNumber(search);
                $("#modalBrowseSearch").modal("show");
            });

            $(document).on("change", "#search_AssetNumber", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                ModalAssetNumber(search);
                $("#modalBrowseSearch").modal("show");
            });

            $(document).on("change", "#search_BUGroup", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                Get_BUGroup(search)
                $("#modalBrowseSearch").modal("show");
            });

            $(document).on("change", "#search_Location", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                Get_Location(search)
                $("#modalBrowseSearch").modal("show");
            });
            
            $(document).on("change", "#search_Vender", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                 Get_Vender(search,site_ref)
                $("#modalBrowseSearch").modal("show");
            });



            $(document).on("click", ".clickselectGroup_Browse", function () {
                var GroupCode = $(this).closest("tr").find("td:nth-child(1)").text();
                var GroupName = $(this).closest("tr").find("td:nth-child(2)").text();
                $("#search_Group").val("");
                $("#textGroupCode").val(GroupCode);
                $("#textGroupName").val(GroupName);
                $("#textTypeCode").val("");
                $("#textTypeName").val("");
                $("#textSizeCode").val("");
                $("#textSizeName").val("");
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselectType_Browse", function () {
                $("#nextPage2").prop("disabled", false);
                var TypeCode = $(this).closest("tr").find("td:nth-child(1)").text();
                var TypeName = $(this).closest("tr").find("td:nth-child(2)").text();
                var calibration_master = $(this).attr("data-calibration_master");
                $("#checkbox_Calibration").prop('checked', calibration_master == 'True' ? true : false);
                $("#search_Type").val("");
                $("#textTypeCode").val(TypeCode);
                $("#textTypeName").val(TypeName);
                $("#textSize").val("");
                $("#textSizeCode").val("");
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselectSize_Browse", function () {
                var SizeCode = $(this).closest("tr").find("td:nth-child(1)").text();
                var SizeName = $(this).closest("tr").find("td:nth-child(2)").text();
                $("#search_Size").val("");
                $("#textSizeCode").val(SizeCode);
                $("#textSizeName").val(SizeName);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecttext_PO", function () {
                $("#nextPage3").prop("disabled", false);
                var textPO_No = $(this).closest("tr").find("td:nth-child(1)").text();
                var textPO_Line = $(this).closest("tr").find("td:nth-child(2)").text();
                var textVender = $(this).closest("tr").find("td:nth-child(3)").text();
                var textVender_Name = $(this).closest("tr").find("td:nth-child(4)").text();
                var textDate_Purchase = $(this).closest("tr").find("td:nth-child(5)").text();
                var textPurchase_Price = $(this).closest("tr").find("td:nth-child(6)").text();
                var textQTY = $(this).closest("tr").find("td:nth-child(7)").text();
                $("#textPO_No").val(textPO_No);
                $("#textVender").val(textVender);
                $("#textVender_Name").val(textVender_Name);
                $("#textDate_Purchase").val(textDate_Purchase);
                $("#textPurchase_Price").val(textPurchase_Price);
                $("#textQTY").val(textQTY);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecttext_AssetNumber", function () {
                let Asset_no_num = $("#Asset_no_num").val();
                var textAsset_No = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#textAsset_No_"+ Asset_no_num ).val(textAsset_No);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecttext_BUGroup", function () {
                var Group = $(this).closest("tr").find("td:nth-child(1)").text();
                var GroupDesc = $(this).closest("tr").find("td:nth-child(2)").text();
                $("#textBUGroup").val(Group);
                $("#textBUGroupName").val(GroupDesc);
                $("#modalBrowseSearch").modal("hide");
            });
            

            $(document).on("click", ".clickselecttext_Location", function () {
                var Location = $(this).closest("tr").find("td:nth-child(1)").text();
                var LocationDescription = $(this).closest("tr").find("td:nth-child(2)").text();
                $("#textLocation").val(Location);
                $("#textLocation_Description").val(LocationDescription);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecttext_Vendor", function () {
                var Vendor = $(this).closest("tr").find("td:nth-child(1)").text();
                var Vendor_Name = $(this).closest("tr").find("td:nth-child(2)").text();
                $("#textVender").val(Vendor);
                $("#textVender_Name").val(Vendor_Name);
                $("#modalBrowseSearch").modal("hide");
            });
            //-------select Browse------

            function fillKey() {
                $("#divfillkey").empty();
                var textQTY = $("#textQTY").val();
                var fragment = "";
                var num = 1;
                for (i = 0; i < textQTY; i++) {
                    fragment += `      <div class="col-md-12 col-sm-12 div_ALLSerial" style="margin-bottom: 1em;">
                                                      
                                                    <div class="col-md-6 col-sm-12" style="padding: 0;">
                                                        <div class="col-md-6">
                                                            <label class="control-label" style="font-size: 13px;">Serial No `+ num + `:</label>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <input type="text" class="fill_Serial_No form-control " style="min-width: 100%" autocomplete="off" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-sm-12">
                                                        <div class="col-md-6">
                                                            <label class="control-label" style="font-size: 13px">Asset No. `+ num + `:</label>
                                                        </div>
                                                        <div class="col-md-6">
                                                            
                                                        <div class="input-group">
                                                            <input type="text" id="textAsset_No_`+num+`" class="fill_Asset_No form-control" style="min-width: 100%" autocomplete="off" />
                                                            <div class="input-group-btn">
                                                                <button class="btn btn-default  Browse_modal" data-num=`+num+` data-type="AssetNumber" type="button">
                                                                    <i class="glyphicon glyphicon-search"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                           
                                                        </div>
                                                    </div>
                                                </div>`;
                    num++;
                }


                $("#divfillkey").append(fragment);
            }

            $(document).on("click", "#nextPage6", function () {
                var GroupCode = $("#textGroupCode").val();
                var TypeCode = $("#textTypeCode").val();
                var SizeCode = $("#textSizeCode").val();
                var Description = $("#textDescription").val();
                var Brand = $("#textBrand").val();
                var Model = $("#textModel").val();
                var Vendor_Code = $("#textVender").val();
                var Purchase_Price = $("#textPurchase_Price").val() == "" ? 0 : $("#textPurchase_Price").val();
                var Market_Price = $("#textMarket_Price").val() == "" ? 0 : $("#textMarket_Price").val();
                var Status = $("#textStatus").val();
                var Date_Inactive = $("#textDate_Inactive").val();
                var Reason = $("#textReason").val();
                var Location = $("#textLocation").val();
                var ToolTag_Code = ''
                var Picture = 'Yes';
                var BUGroup = $("#textBUGroup").val();
                var PO_No = $("#textPO_No").val();
                var Date_Purchase = $("#textDate_Purchase").val();
                var Action = 'Insert';
                var Convert_Purchase_Price = Purchase_Price != '' ? removeCurrency(Purchase_Price) : 0;
                var Convert_Market_Price = Market_Price != '' ? removeCurrency(Market_Price) : 0;
                var Calibration = $("#checkbox_Calibration").is(':checked') ? 1 : 0;
                //var Calibration_Date = $("#textCalibration_Date").val();
                var Calibration_Date = '';

                swal({
                    title: 'ยืนยันการสร้าง',
                    text: "ตรวจสอบความถูกต้องของข้อมูล ก่อนยืนยันการสร้าง",
                    icon: 'info',
                    buttons: {
                        cancel: true,
                        confirm: true,
                    },
                }).then(function (confirm) {
                    if (confirm) {
                        swal(
                            'Complete',
                            'สร้าง ToolTag สำเร็จ',
                            'success'
                        );
                        table_Completely.clear().draw();
                        $('.div_ALLSerial').each(function () {
                            var Serial_No = $(this).find('.fill_Serial_No').val();
                            var Asset_No = $(this).find('.fill_Asset_No').val();
                            SP_ToolTag_Master(ToolTag_Code, GroupCode, TypeCode, SizeCode, Description,
                                Brand, Model, Vendor_Code, Convert_Purchase_Price, Convert_Market_Price, Status, Date_Inactive,
                                Reason, Location, Asset_No, Serial_No, Picture, BUGroup, PO_No, Date_Purchase, Calibration, Action);

                        });
                        $('#smartwizard').data('smartWizard').next(1);
                    }
                });
            });

            function SP_ToolTag_Master(ToolTag_Code, GroupCode, TypeCode, SizeCode, Description,
                Brand, Model, Vendor_Code, Purchase_Price, Market_Price, Status, Date_Inactive,
                Reason, Location, Asset_No, Serial_No, Picture, BUGroup, PO_No, Date_Purchase, Calibration, Action) {

                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/SP_ToolTag_Master") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({
                        ToolTag_Code: ToolTag_Code, GroupCode: GroupCode, TypeCode: TypeCode, SizeCode: SizeCode, Description: Description
                        , Brand: Brand, Model: Model, Vendor_Code: Vendor_Code, Purchase_Price: Purchase_Price, Market_Price: Market_Price
                        , Status: Status, Date_Inactive: Date_Inactive, Reason: Reason, Location: Location, Asset_No: Asset_No, Serial_No: Serial_No
                        , Picture: Picture, BUGroup: BUGroup, PO_No: PO_No, Date_Purchase: Date_Purchase, Calibration: Calibration
                        , site_ref: site_ref, Action: Action
                    }),
                    success: function (response) {
                        var ToolTag_code = response.d;
                        console.log(ToolTag_code);
                        saveAttachTooltag(ToolTag_code);
                        showCompletely(ToolTag_code, Description, Brand, Model, Status);
                    }
                });
            }
            function showCompletely(ToolTag_Code, Description, Brand, Model, Status) {
                var GroupName = $("#textGroupName").val();
                var TypeName = $("#textTypeName").val();
                var SizeName = $("#textSizeName").val();
                table_Completely.row.add(['<a  href="./MaintainToolTag.aspx?site_ref=' + site_ref + '&ToolTag=' + ToolTag_Code + '" target="_blank" >' + ToolTag_Code + '</a>'
                    , GroupName, TypeName, SizeName, Description, Brand, Model, Status]).draw().node();

            }
            //Set Complete Table
            function Currency(input) {
                var check = input.indexOf(".");
                if (check != -1) {
                    var value = input.replace(/(\d)(?=(\d{3})+(?!\d)+.+$)/g, '$1,');
                } else {
                    var value = input.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
                }
                return value;
            }

            function removeCurrency(text) {
                return text.replace(/,/g, '');
            }

            $("input[data-type='currency']").on({
                keyup: function () {
                    formatCurrency($(this));
                },
                blur: function () {
                    formatCurrency($(this), "blur");
                }
            });
            // Currency


            $("#Click_Image").on('click', function () {
                $("#Input_Image").click();
            });

            $("#Input_Image").change(function () {
                var file_name = $(this).val().replace(/\\/g, '/').replace(/.*\//, '');
                var fileNameIndex = file_name.lastIndexOf("/") + 1;
                var dotIndex = file_name.lastIndexOf('.');
                var file_type = file_name.substr(dotIndex + 1, (file_name.length - 1) - dotIndex);
                var arr_type = ['jpg', 'jpeg', 'png'];

                file_name = file_name.substr(fileNameIndex, dotIndex < fileNameIndex ? file_name.length : dotIndex);
                if (arr_type.includes(file_type)) {
                    if (this.files && this.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function (e) { $('#Click_Image .img-preview').attr('src', e.target.result); };
                        reader.readAsDataURL(this.files[0]);
                    }
                } else {
                    $("#Input_Image").val('');
                    swal("ไฟล์ไม่ถูกต้อง", "ประเภทไฟล์ที่ใช้ได้ jpg, jpeg และ png  เท่านั้น");
                }

            });
            //Image Profile 

            function saveAttachTooltag(ToolTag_code) {
                if ($("#Input_Image").val() != "") {
                    var data = $("#Input_Image")[0].files[0];
                    var name = ToolTag_code;
                    var folder = 'PictureTool';
                    var Type = 'PNG';
                    insertFileToolTag(data, name, folder, Type);
                }
            }

            function insertFileToolTag(data, name, folder, TYPE) {
                var formData = new FormData();
                formData.append('file', data);
                formData.append('name', name);
                formData.append('folderName', folder);
                formData.append('TYPE', TYPE);
                $.ajax({
                    type: 'post',
                    url: './Uploadfile_ToolTag.ashx',
                    //ต้องสร้างใหม่เป็นของ PATAG
                    data: formData,
                    async: false,
                    success: function (status) {
                        //alert("Upload Complete");
                    },
                    processData: false,
                    contentType: false,
                    error: function () {
                        alert("Whoops something went wrong!");
                    }
                });
            }

            //Save Image Profile ToolTag

        });
    </script>
</asp:Content>
