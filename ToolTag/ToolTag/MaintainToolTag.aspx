<%@ Page Title="Maintain Tool Tag" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MaintainToolTag.aspx.cs" Inherits="ToolTag.MaintainToolTag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .max-wide {
            max-width: 100%;
        }

        .datepicker {
            background: #333;
            border: 1px solid #555;
            color: #EEE;
            z-index: 9999 !important;
        }

        .img-preview {
            margin: auto;
            max-width: 100%;
            height: 180px;
        }

        .nav-tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

        #ui-datepicker-div {
            z-index: 1601 !important;
        }

        .datepicker-container {
            z-index: 1601 !important;
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

        .btn-bigger {
            width: 25rem;
            height: 15rem;
            float: right;
            margin-right: 2rem;
        }

        .text-dowlaod {
            font-size: 20px;
        }

        .btn-dowlaod {
            background-color: #1F7244;
            color: ghostwhite;
            border: none;
        }

            .btn-dowlaod:hover {
                background-color: #006400;
                color: ghostwhite;
            }
    </style>

    <div class="page-header">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-4 " style="text-align: left; font-size: 30px;">
                    <span>Maintain Tool Tag
                            <button class="btn btn-default Browse_modal" data-type="ToolTag" type="button">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>
                    </span>
                </div>
                <div class="col-md-8 " style="text-align: right">
                </div>
            </div>
        </div>

        <div class="row ">
            <div class="col-md-12">
                <div class="col-md-4" style="text-align: left;">
                    <button id="btnNewToolTag" class="btn btn-success" type="button">New</button>
                </div>

                <div class="col-md-8" style="text-align: right">
                    <button id="btnSubmitToolTag" class="btn btn-warning" type="button">Save</button>
                    <button id="btnSaveToolTag" class="btn btn-warning" type="button">Save</button>
                </div>
            </div>
        </div>

    </div>

    <div class="panel-group">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 style="margin-left: 5px;">ข้อมูลเครื่องมือ</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
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
                            <hr />
                        </div>
                        <!--- End  (Image) --->

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">TAG Code :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <input id="textToolTag_Code" type="text" class="form-control max-wide" disabled>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                    <div class="col-md-3 col-xs-12">
                                        <label class="control-label">Group : </label>
                                    </div>
                                    <div class="col-md-8 col-xs-12">
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
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Type :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
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
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                    <div class="col-md-3 col-xs-12">
                                        <label class="control-label">Size :</label>
                                    </div>
                                    <div class="col-md-8 col-xs-12">
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
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Status :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <select id="textStatus" class="form-control max-wide">
                                                <option value="Active">Active</option>
                                                <option value="InActive">InActive</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Brand :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <input id="textBrand" type="text" class="form-control max-wide">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Model :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <input id="textModel" type="text" class="form-control max-wide">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row" id="div-statusInActive" style="display: none;">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Date Inactive :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <input id="textDate_Inactive" type="text" class="form-control max-wide" placeholder="dd/mm/yyyy">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Reason :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
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
                            
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Serial No. :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                           <input type="text" id="textSerial_No" class="form-control" style="min-width: 100%" autocomplete="off" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">BU group :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <div class="input-group">
                                                <input type="text" id="textBUGroup" class="form-control" style="min-width: 100%;display:none" autocomplete="off" disabled  />
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
                                        <div class="col-md-8 col-xs-12">
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
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Asset No. :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <div class="input-group">
                                                <input type="text" id="textAsset_No" class="form-control" style="min-width: 100%" autocomplete="off" />
                                                <div class="input-group-btn">
                                                    <button class="btn btn-default Browse_modal" data-type="" type="button">
                                                        <i class="glyphicon glyphicon-search"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">PO No. :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
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
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Vendor :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <input id="textVender" type="text" class="form-control max-wide" style="display:none" placeholder="ดึงตาม PO ที่เลือก" disabled>
                                            <input id="textVender_Name" type="text" class="form-control max-wide" placeholder="ดึงตาม PO ที่เลือก" disabled>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Date Purchase :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <input type="text" id="textDate_Purchase" class="form-control" data-provide="datepicker" style="min-width: 100%" placeholder="dd/mm/yyyy" disabled />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Purchase Price :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <input type="text" id="textPurchase_Price" class="form-control " pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" data-type="currency" style="min-width: 100%" autocomplete="off" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Calibration :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <input class="form-check-input" type="checkbox" id="checkbox_Calibration" style="margin-left: 5px;" >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12" >
                                    <%--<div class="row form-group" style="display:none;" id="divCalibrationDate">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label" style="font-size: 13px;">Calibration Date :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <input type="text" id="textCalibration_Date" class="form-control" style="min-width: 100%" placeholder="dd/mm/yyyy" />
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label" style="font-size: 14px;">Market Price :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">

                                            <input type="text" id="textMarket_Price" class="form-control " pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" data-type="currency" style="min-width: 100%" autocomplete="off" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <div class="row form-group">
                                        <div class="col-md-3 col-xs-12">
                                            <label class="control-label">Description :</label>
                                        </div>
                                        <div class="col-md-8 col-xs-12">
                                            <div class="form-group">
                                                <textarea class="form-control max-wide" id="textDescription" rows="3"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--- End Col-md-12 --->
        </div>
    </div>
    <%--</div>--%>

    <!---------End Maintain Tool Tag---------->


    <div class="panel-group" id="div-Tab">
        <div class="panel nav-tab panel-default" style="margin-top: 2em;">
            <div class="panel-heading" id="divTab">
                <ul class="nav nav-tabs">
                    <li class="nav-item active">
                        <a href="#TAB1" class="nav-link disabled-tab" role="tab" data-toggle="tab">Calibration</a>
                    </li>
                    <li class="nav-item ">
                        <a href="#TAB2" class="nav-link disabled-tab" data-toggle="tab" role="tab">Repair</a>
                    </li>
                    <li class="nav-item ">
                        <a href="#TAB3" class="nav-link disabled-tab" data-toggle="tab" role="tab">History</a>
                    </li>
                </ul>

                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane active" role="tabpanel" id="TAB1">
                            <div class="panel-group">
                                <div class="panel  panel-primary">
                                    <div class="panel-heading">
                                        <h4 style="font-weight: bold;">Calibration</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-md-12">
                                            <div class="row form-group">
                                                <div class="col-md-4 col-xs-4" style="text-align: left; font-size: 30px;">
                                                </div>
                                                <div class="col-md-8 col-xs-8" style="text-align: right">
                                                    <button class="btn btn-success btnModal_Calibration " data-type="Calibration" data-action="New" type="button">New</button>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="table-responsive">
                                                    <table class="table table-hover table-bordered" id="tableCalibration" style="width: 100%">
                                                        <thead>
                                                            <tr>
                                                                <th>Start date</th>
                                                                <th>Start End</th>
                                                                <th>Remark</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="ListCalibration">
                                                            <%--<tr>
                                                                <td>22/09/2020</td>
                                                                <td>22/09/2021</td>
                                                                <td>การตรวจสอบประจำปี63</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-warning btnModal_Calibration" data-id="1" data-action="Edit">Edit</button></td>
                                                            </tr>--%>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--================End Tab Calibration=====================-->
                        <div class="tab-pane fade" role="tabpanel" id="TAB2">
                            <div class="panel-group">
                                <div class="panel  panel-primary">
                                    <div class="panel-heading">
                                        <h4 style="font-weight: bold;">Repair</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-md-12">
                                            <div class="row form-group">
                                                <div class="col-md-4 col-xs-4" style="text-align: left; font-size: 30px;">
                                                </div>
                                                <div class="col-md-8 col-xs-8" style="text-align: right">
                                                    <button class="btn btn-success btnModal_MA" data-type="Repair" data-action="New" type="button">New</button>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="table-responsive">
                                                    <table class="table table-hover table-bordered" id="tableMA" style="width: 100%">
                                                        <thead>
                                                            <tr>
                                                                <th>Repair Type</th>
                                                                <th>Date Repair</th>
                                                                <th>Vendor_Code</th>
                                                                <th>Cost</th>
                                                                <th>PO</th>
                                                                <th>Remark</th>
                                                                <th></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="ListMA">
                                                            <tr>
                                                                <td>ซ่อมภายใน</td>
                                                                <td>25/08/2563</td>
                                                                <td>ช.การช่าง</td>
                                                                <td>5000</td>
                                                                <td>124513</td>
                                                                <td>ปลอกกันยางหลุด</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-warning btnModal_MA" data-id="1" data-action="Edit">Edit</button></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--================End Tab Repair =====================-->
                        <div class="tab-pane fade" role="tabpanel" id="TAB3">
                            <div class="panel-group">
                                <div class="panel  panel-primary">
                                    <div class="panel-heading">
                                        <h4 style="font-weight: bold;">History</h4>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-md-12">
                                            <div class="row form-group">
                                                <div class="col-md-4 col-xs-4" style="text-align: left; font-size: 30px;">
                                                </div>
                                                <div class="col-md-8 col-xs-8" style="text-align: right">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="table-responsive">
                                                    <table class="table table-hover table-bordered" id="tableHistory" style="width: 100%">
                                                        <thead>
                                                            <tr>
                                                                <th>EmpNum</th>
                                                                <th>Borrower</th>
                                                                <th>Borrower Date</th>
                                                                <th>K2_Borrower</th>
                                                                <th>Returner</th>
                                                                <th>Retur Date</th>
                                                                <th>K2ID Return</th>
                                                                <th>Status Tool</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="ListHistory">
                                                            <%--<tr>
                                                                <td>59003</td>
                                                                <td></td>
                                                                <td>01/01/2021</td>
                                                                <td><a>300003</a></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td>57062</td>
                                                                <td></td>
                                                                <td>01/01/2021</td>
                                                                <td><a>300001</a></td>
                                                                <td></td>
                                                                <td>25/05/2021</td>
                                                                <td><a>300002</a></td>
                                                                <td>ดี</td>
                                                            </tr>--%>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--================End Tab Repair =====================-->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%----------------End Tab--------------%>


    <div class="modal fade" id="ModalCalibration" role="dialog" data-backdrop="static" data-keyboard="false" style="align-content: center; margin-top: 15px;">
        <div class="modal-dialog modal-lg" style="margin: auto;">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="col-md-7 col-lg-7 col-sm-12">
                            <h4 class="modal-title" id="ModalTitleCalibration"></h4>
                        </div>
                        <div class="col-md-5 col-lg-5 col-sm-12" style="text-align: right;">
                            <button type="button" class="btn btn-warning" id="btnSaveCalibration" data-action="Insert">Save</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
                <%--End modal Header--%>
                <div class="modal-body" style="overflow-y: auto; max-height: 38em; max-width: 100%;">
                    <div class="panel-group">
                        <div class="col-md-7">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 style="font-weight: bold;">Calibration</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        <div class="row ">
                                            <div class="col-md-12 form-group" style="display:none">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Calibration ID : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <input id="textCB_ID" class="form-control max-wide " placeholder="dd/mm/yyyy" type="text" autocomplete="off" disabled>
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Start date : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <input id="textCB_StartDate" class="form-control max-wide " placeholder="dd/mm/yyyy" type="text" autocomplete="off">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Start End : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <input id="textCB_StartEnd" class="form-control max-wide " placeholder="dd/mm/yyyy" type="text" autocomplete="off">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3 col-xs-12">
                                                    <label class="control-label"  style="font-size: 13px">Remark :</label>
                                                </div>
                                                <div class="col-md-9 col-xs-12">
                                                    <div class="form-group">
                                                        <textarea class="form-control max-wide" id="textCB_Remark" rows="3"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-md-12 ">
                                            <div class="col-md-6" style="text-align: left;">
                                                <h4 style="font-weight: bold;">แนบเอกสาร</h4>
                                            </div>
                                            <div class="col-md-6" style="text-align: right">
                                                <input type="file" id="addAttachCB" accept="application/pdf,image/jpg, image/jpeg,image/png" class="form-control max-wide EmpImg inputFile att-margin" style="display: none;">
                                                <button type="button" class="btn btn-info" style="width: 50px;" onclick="document.getElementById('addAttachCB').click();"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
                                                <%--Copy function Addattach จาก ITPortal -> Maintain ITTAG--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        <div class="row form-group">
                                            <table class="table  table-striped">
                                                <thead>
                                                </thead>
                                                <tbody id="ListAttachCB">
                                                </tbody>
                                                <tbody id="ListAttachCB_OLD">
                                                </tbody>
                                            </table>
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
    <%------End Modal Calibration-------%>


    <div class="modal fade" id="ModalMA" role="dialog" data-backdrop="static" data-keyboard="false" style="align-content: center; margin-top: 15px;">
        <div class="modal-dialog modal-md" style="margin: auto;">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="col-md-7 col-lg-7 col-sm-12">
                            <h4 class="modal-title" id="ModalTitleMA"></h4>
                        </div>
                        <div class="col-md-5 col-lg-5 col-sm-12" style="text-align: right;">
                            <button type="button" class="btn btn-warning" id="btnSaveMA" data-attr="">Save</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
                <%--End modal Header--%>
                <div class="modal-body" style="overflow-y: auto; max-height: 38em; max-width: 100%;">
                    <div class="panel-group">
                        <div class="col-md-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 style="font-weight: bold;">Repair</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        <div class="row ">
                                            <div class="col-md-12 form-group" style="display:none">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Repair ID : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <input id="textMA_ID" class="form-control max-wide " type="text" autocomplete="off" disabled>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Reason :</label>
                                                </div>
                                                <div class="col-md-9">
                                                    <select id="textMA_RepairType" class="form-control max-wide">
                                                        <option value="">===Plase Select Repair Type===</option>
                                                        <option value="ซ่อมภายใน">ซ่อมภายใน</option>
                                                        <option value="ซ่อมภายนอก">ซ่อมภายนอก</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Repair date : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <input id="textMA_RepairDate" class="form-control max-wide " placeholder="dd/mm/yyyy" type="text" autocomplete="off">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Vendor : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <input id="textMA_Supplier" class="form-control max-wide " type="text" autocomplete="off">
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">Cost : </label>
                                                </div>
                                                <div class="col-md-9">
                                                    <input type="text" id="textMA_Cost" class="form-control "  pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" data-type="currency" style="min-width: 100%" autocomplete="off" />
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 form-group">
                                                <div class="col-md-3">
                                                    <label class="control-label" style="font-size: 13px">PO Number :</label>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <input type="text" id="textMA_PO_Number" class="form-control max-wide" autocomplete="off">
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default Browse_modal" type="button" data-type="PONumber_MA">
                                                                <i class="glyphicon glyphicon-search"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 form-group">
                                                <div class="col-md-3 col-xs-12">
                                                    <label class="control-label" style="font-size: 13px">Remark :</label>
                                                </div>
                                                <div class="col-md-9 col-xs-12">
                                                    <div class="form-group">
                                                        <textarea class="form-control max-wide" id="textMA_Remark" rows="3"></textarea>
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
    <%------End Modal Calibration-------%>

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


    <script type="text/javascript">

        $(document).ready(function () {
            var site_ref = getAllUrlParams("site_ref");
            var tableMA = $('#tableMA').DataTable({
                searching: false,
                lengthChange: false,
                responsive: true
            });

            var tableCalibration = $('#tableCalibration').DataTable({
                searching: false,
                lengthChange: false,
                responsive: true
            });

            var tableHistory = $('#tableHistory').DataTable({
                searching: false,
                lengthChange: false,
                responsive: true
            });


            var GETParams_ToolTag = getAllUrlParams("ToolTag");
            SetDatePicker();
            //SetLocation()

            if (GETParams_ToolTag) {
                $("#btnSubmitToolTag").css("display", "none");
                Get_VW_ToolTag_Master(GETParams_ToolTag);
                Get_TB_ToolTag_MA(GETParams_ToolTag);
                Get_TB_ToolTag_Calibration(GETParams_ToolTag);
                Get_TabHistory_VW_ToolTag_Transaction(GETParams_ToolTag);
                checkStatusInActive();
                    $("#div-Tab").show();
                //show hide Status InActive
            } else {
                $("#btnSaveToolTag").css("display", "none");
                    $("#div-Tab").hide();
            }

            $(document).on("click", ".btnModal_Calibration", function () {
                
                if ($("#checkbox_Calibration").is(':checked')) {
                    $("#ListAttachCB").empty();
                    var type = $(this).attr("data-action");
                    if (type == "New") {
                        $("#textCB_ID").val(0);
                        $("#textCB_StartDate").val('');
                        $("#textCB_StartEnd").val('');
                        $("#textCB_Remark").val('');
                        $("#btnSaveCalibration").attr('data-action', "Insert");
                    } else if (type == "Edit") {
                        var tr = $(this).closest("tr");
                        var ID = $(this).attr("data-id");
                        var StartDate = tr.find("td:nth-child(1)").text();
                        var StartEnd = tr.find("td:nth-child(2)").text();
                        var Remark = tr.find("td:nth-child(3)").text();
                        $("#textCB_ID").val(ID);
                        $("#textCB_StartDate").val(StartDate);
                        $("#textCB_StartEnd").val(StartEnd);
                        $("#textCB_Remark").val(Remark);
                        $("#btnSaveCalibration").attr('data-action', "Edit");
                        GET_TB_ToolTag_Calibration_Attach(ID)
                    }
                    $("#ModalTitleCalibration").text(type);
                    $("#ModalCalibration").modal("show");
                } else {
                    swal('Tag นี้ไม่ลงทะเบียน Calibration', '', 'error');
                }
                
            });

            $(document).on("click", ".btnModal_MA", function () {
                var type = $(this).attr("data-action");
                if (type == "New") {
                    $("#textMA_ID").val(0);
                    $("#textMA_RepairType").val('');
                    $("#textMA_RepairDate").val('');
                    $("#textMA_Supplier").val('');
                    $("#textMA_Cost").val('');
                    $("#textMA_PO_Number").val('');
                    $("#textMA_Remark").val('');
                    $("#btnSaveMA").attr('data-action',"Insert");
                } else if (type == "Edit") {
                    var tr = $(this).closest("tr");
                    var RepairType = tr.find("td:nth-child(1)").text();
                    var RepairDate = tr.find("td:nth-child(2)").text();
                    var Vendor_Code = tr.find("td:nth-child(3)").text();
                    var Cost = tr.find("td:nth-child(4)").text();
                    var PO_Number = tr.find("td:nth-child(5)").text();
                    var Remark = tr.find("td:nth-child(6)").text();
                    var ID = $(this).attr("data-ID");
                    $("#textMA_ID").val(ID);
                    $("#textMA_RepairType").val(RepairType);
                    $("#textMA_RepairDate").val(RepairDate);
                    $("#textMA_Supplier").val(Vendor_Code);
                    $("#textMA_Cost").val(removeCurrency(Cost));
                    $("#textMA_PO_Number").val(PO_Number);
                    $("#textMA_Remark").val(Remark);
                    $("#btnSaveMA").attr('data-action',"Edit");
                }

                $("#ModalTitleMA").text(type);
                $("#ModalMA").modal("show");
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
                else if (Type == 'PONumber_MA') {
                   ModalPoNumber_MA('');
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


                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                //$("#modalBrowseSearch").modal("show");

            });
            //Modal Browse

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
                Get_BrowseSize(GroupCode, GroupTypeName, search);
            });

            $(document).on("change", "#textStatus", function () {
                $("#textDate_Inactive").val("")
                $("#textReason").val("")
                checkStatusInActive();
                console.log('Status : ' + $(this).val())
            });
            
            $(document).on("change", "#search_PONumber", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                ModalPoNumber(search);
                $("#modalBrowseSearch").modal("show");
            });
            
            $(document).on("change", "#search_PONumber_MA", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                ModalPoNumber_MA(search);
                $("#modalBrowseSearch").modal("show");
            });
            
            $(document).on("change", "#search_ToolTag", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                 BrowseToolTag(search)
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

            //-------Chage Search Browse------

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

            $(document).on("click", ".clickselecttext_ToolTag", function () {
                var ToolTagCode = $(this).closest("tr").find("td:nth-child(1)").text();
                
                window.location.href = './MaintainToolTag.aspx?site_ref='+site_ref+'&ToolTag=' + ToolTagCode;
                // $("#btnSubmitToolTag").css("display", "none");
                // $("#btnSaveToolTag").css("display", "");
                //Get_VW_ToolTag_Master(ToolTagCode);
                //Get_TB_ToolTag_MA(ToolTagCode);
                //Get_TB_ToolTag_Calibration(ToolTagCode);
                //checkStatusInActive();
                //    $("#div-Tab").show();
                ////show hide Status InActive
                //$("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecttext_BUGroup", function () {
                var Group = $(this).closest("tr").find("td:nth-child(1)").text();
                var GroupDesc = $(this).closest("tr").find("td:nth-child(2)").text();
                $("#textBUGroup").val(Group);
                $("#textBUGroupName").val(GroupDesc);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecttext_PO", function () {
                var textPO_No = $(this).closest("tr").find("td:nth-child(1)").text();
                var textVender = $(this).closest("tr").find("td:nth-child(2)").text();
                var textVender_Name = $(this).closest("tr").find("td:nth-child(3)").text();
                var textDate_Purchase = $(this).closest("tr").find("td:nth-child(4)").text();
                var textPurchase_Price = $(this).closest("tr").find("td:nth-child(5)").text();
                var textQTY = $(this).closest("tr").find("td:nth-child(6)").text();
                $("#textPO_No").val(textPO_No);
                $("#textVender").val(textVender);
                $("#textVender_Name").val(textVender_Name);
                $("#textDate_Purchase").val(textDate_Purchase);
                $("#textPurchase_Price").val(textPurchase_Price);
                $("#textQTY").val(textQTY);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecttext_PO_MA", function () {
                var textPO_No = $(this).closest("tr").find("td:nth-child(1)").text();
                var textVender = $(this).closest("tr").find("td:nth-child(2)").text();
                var textVender_Name = $(this).closest("tr").find("td:nth-child(3)").text();
                var textDate_Purchase = $(this).closest("tr").find("td:nth-child(4)").text();
                var textPurchase_Price = $(this).closest("tr").find("td:nth-child(5)").text();
                var textQTY = $(this).closest("tr").find("td:nth-child(6)").text();
                $("#textMA_PO_Number").val(textPO_No);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecttext_Location", function () {
                var Location = $(this).closest("tr").find("td:nth-child(1)").text();
                var LocationDescription = $(this).closest("tr").find("td:nth-child(2)").text();
                $("#textLocation").val(Location);
                $("#textLocation_Description").val(LocationDescription);
                $("#modalBrowseSearch").modal("hide");
            });
            //-------select Browse------

            $(document).on("click", "#btnNewToolTag", function () {
                window.location.href = './MaintainToolTag.aspx?site_ref='+site_ref;

            });

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
                                    Checkbox_Calibration_Master = '<td><a class="clickselectType_Browse" data-calibration_Master="'+Calibration_Master+'"  href="javascript:void(0)"><span class="glyphicon glyphicon-ok" aria-hidden="true" style="margin-left: 20px;color: green;"></span></a></td>'
                                } else {
                                    Checkbox_Calibration_Master = '<td><a class="clickselectType_Browse" data-calibration_Master="'+Calibration_Master+'"  href="javascript:void(0)"><span class="glyphicon glyphicon-remove" aria-hidden="true" style="margin-left: 20px;color: red;"></span></a></td>'
                                }
                                //Set Icon Calibration
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselectType_Browse" href="javascript:void(0)" data-calibration_Master="'+Calibration_Master+'"  >' + TypeCode + '</a></td>';
                                fragment += '<td><a class="clickselectType_Browse" href="javascript:void(0)"  data-calibration_Master="'+Calibration_Master+'"  >' + TypeName + '</a></td>';
                                fragment += Checkbox_Calibration_Master;
                                fragment += '<td><a class="clickselectType_Browse" href="javascript:void(0)" data-calibration_Master="'+Calibration_Master+'"  >' + Status + '</a></td>';
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
                        data: JSON.stringify({ search: search }),
                        success: function (response) {
                            if (response.d.length > 0) {
                                $.each(response.d, function (index, val) {
                                    //[siteref], [PONumber], [PODate], [PODueDate], [ItemCode]
                                    //    , [ItemDescription], [UOM], [Qty], [UnitPrice]
                                    //    , [TotalAmount], [Cur], [exchangerate], [VendorCode]
                                    //    , [Vendor], [DestinationType], [Project], [WareHouse]
                                    //    , [WarehouseName], [Product], [BU], [Buyer], [SpecialNote]
                                    //    , [BUFinalApprovedDate], [PaymentCondition], [PaymentConditionDesc]
                                    //    , [MonthPO], [Location], [POType], [ItemGroup], [ItemType], [Buyer_]
                                    //    , [BusinessGroup], [type], [PRNo]
                                     var siteref = val[0];
                                    var PONumber = val[1];
                                    var PODate = val[2];
                                    var PODueDate = val[3];
                                    var ItemCode = val[4];
                                    var ItemDescription = val[5];
                                    var UOM = val[6];
                                    var Qty = val[7];
                                    var UnitPrice = val[8];
                                    var TotalAmount = val[9];
                                    var Cur = val[10];
                                    var exchangerate = val[11];
                                    var VendorCode = val[12];
                                    var Vendor = val[13];
                                    var DestinationType = val[14];
                                    var Project = val[15];
                                    var WareHouse = val[16];
                                    var BUFinalApprovedDate = val[17];
                                    var PaymentCondition = val[18];
                                    var PaymentConditionDesc = val[19];
                                    var MonthPO = val[20];
                                    var Location = val[21];
                                    var POType = val[22];
                                    var ItemGroup = val[23];
                                    var ItemType = val[24];
                                    var Buyer_ = val[25];
                                    var BusinessGroup = val[26];
                                    var type = val[27];
                                    var PRNo = val[87];
                                    fragment += '<tr>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + PONumber + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + VendorCode + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + Vendor + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + PODate.substr(0,10) + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + UnitPrice.split('.')[0] + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + Qty.split('.')[0] + '</a></td>';
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

            function ModalPoNumber_MA(search) {
                $("#Titlebrowse").text('Search Po Number');
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-lg');
                fragmentHeader = `<th>Po No.</th>
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
                        data: JSON.stringify({ search: search }),
                        success: function (response) {
                            if (response.d.length > 0) {
                                $.each(response.d, function (index, val) {
                                    //[siteref], [PONumber], [PODate], [PODueDate], [ItemCode]
                                    //    , [ItemDescription], [UOM], [Qty], [UnitPrice]
                                    //    , [TotalAmount], [Cur], [exchangerate], [VendorCode]
                                    //    , [Vendor], [DestinationType], [Project], [WareHouse]
                                    //    , [WarehouseName], [Product], [BU], [Buyer], [SpecialNote]
                                    //    , [BUFinalApprovedDate], [PaymentCondition], [PaymentConditionDesc]
                                    //    , [MonthPO], [Location], [POType], [ItemGroup], [ItemType], [Buyer_]
                                    //    , [BusinessGroup], [type], [PRNo]
                                     var siteref = val[0];
                                    var PONumber = val[1];
                                    var PODate = val[2];
                                    var PODueDate = val[3];
                                    var ItemCode = val[4];
                                    var ItemDescription = val[5];
                                    var UOM = val[6];
                                    var Qty = val[7];
                                    var UnitPrice = val[8];
                                    var TotalAmount = val[9];
                                    var Cur = val[10];
                                    var exchangerate = val[11];
                                    var VendorCode = val[12];
                                    var Vendor = val[13];
                                    var DestinationType = val[14];
                                    var Project = val[15];
                                    var WareHouse = val[16];
                                    var BUFinalApprovedDate = val[17];
                                    var PaymentCondition = val[18];
                                    var PaymentConditionDesc = val[19];
                                    var MonthPO = val[20];
                                    var Location = val[21];
                                    var POType = val[22];
                                    var ItemGroup = val[23];
                                    var ItemType = val[24];
                                    var Buyer_ = val[25];
                                    var BusinessGroup = val[26];
                                    var type = val[27];
                                    var PRNo = val[87];
                                    fragment += '<tr>';
                                    fragment += '<td><a class="clickselecttext_PO_MA" href="javascript:void(0)">' + PONumber + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO_MA" href="javascript:void(0)">' + VendorCode + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO_MA" href="javascript:void(0)">' + Vendor + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO_MA" href="javascript:void(0)">' + PODate.substr(0,10) + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO_MA" href="javascript:void(0)">' + UnitPrice.split('.')[0] + '</a></td>';
                                    fragment += '<td><a class="clickselecttext_PO_MA" href="javascript:void(0)">' + Qty.split('.')[0] + '</a></td>';
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
            }
            //Get_Location
            
            function BrowseToolTag(search) {
                $("#Titlebrowse").text('Search ToolTag');
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-lg');
                fragmentHeader = `<th>Tag Code</th>
                                     <th>Band</th>
                                    <th>Modal</th>
                                    <th>Group</th>`;
                    $("#IMGUpload").modal("show");
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/BrowseVW_ToolTag_Master") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({ search: search }),
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
                                var Calibration_Date = val[19];
                                var GroupCode = val[20];
                                var GroupName = val[21];
                                var TypeCode = val[22];
                                var TypeName = val[23];
                                var SizeCode = val[24];
                                var SizeName = val[25];
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
                    $("#IMGUpload").modal("hide");
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                
            }
            //BrowseToolTag
            function Get_VW_ToolTag_Master(ID) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/VW_ToolTag_Master") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ ToolTag_Code: ID }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                            //[ToolTag_Code],[Description],[Brand],[Model],[Vendor_Code],[Vendor_Name],[Purchase_Price],[Market_Price],[Status],[Date_Inactive],[Reason],[Location]
                            //,[Asset_No],[Serial_No],[Picture],[BUGroup],[PO_No],[Date_Purchase],[Calibration],[Calibration_Date],[GroupCode],[GroupName],[TypeCode],[TypeName],[SizeCode],[SizeName],[Location_Name]
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
                                var Calibration_Date = val[19];
                                var GroupCode = val[20];
                                var GroupName = val[21];
                                var TypeCode = val[22];
                                var TypeName = val[23];
                                var SizeCode = val[24];
                                var SizeName = val[25];
                                var Location_Name = val[26];
                                $("#textToolTag_Code").val(ToolTag_Code);
                                $("#textDescription").val(Description);
                                $("#textBrand").val(Brand);
                                $("#textModel").val(Model);
                                $("#textVender").val(Vendor_Code);
                                $("#textVender_Name").val(Vendor_Name);
                                $("#textPurchase_Price").val(Purchase_Price);
                                $("#textMarket_Price").val(Currency(Market_Price));
                                $("#textStatus").val(Status);
                                $("#textDate_Inactive").val(Date_Inactive);
                                $("#textReason").val(Reason);
                                $("#textLocation").val(Location);
                                $("#textLocation_Description").val(Location_Name);
                                $("#textAsset_No").val(Asset_No);
                                $("#textSerial_No").val(Serial_No);
                                //$("#textPicture").val(Picture);
                                $("#textBUGroup").val(BUGroup);
                                Get_BUGroupName(BUGroup)
                                //Show BUGroupName
                                $("#textPO_No").val(PO_No);
                                $("#textDate_Purchase").val(Date_Purchase.substr(0, 10));
                                $("#checkbox_Calibration").prop('checked', Calibration == 'True' ? true : false);
                                //if (Calibration == 'True') {
                                //    $("#divCalibrationDate").show();
                                //}
                                //$("#textCalibration_Date").val(Calibration_Date.substr(0, 10));
                                $("#textGroupCode").val(GroupCode);
                                $("#textGroupName").val(GroupName);
                                $("#textTypeCode").val(TypeCode);
                                $("#textTypeName").val(TypeName);
                                $("#textSizeCode").val(SizeCode);
                                $("#textSizeName").val(SizeName);
                               
                                $('#Click_Image .img-preview').attr('src', 'http://portalapp01/' + Picture);

                            });
                        }
                    }
                });
            }
            
            //$(document).on("change", "#checkbox_Calibration", function () {
            //    if ($(this).is(':checked')) {
            //        $("#divCalibrationDate").show();
            //    } else {
            //        $("#divCalibrationDate").hide();
            //    }
            //});

            //Get Master Data 
            $(document).on("click", "#btnSubmitToolTag", function () {
                var GroupCode = $("#textGroupCode").val();
                var TypeCode = $("#textTypeCode").val();
                var SizeCode = $("#textSizeCode").val();
                var Description = $("#textDescription").val();
                var Brand = $("#textBrand").val();
                var Model = $("#textModel").val();
                var Vender = $("#textVender").val();
                var Purchase_Price = $("#textPurchase_Price").val() == "" ? 0 : $("#textPurchase_Price").val();
                var Market_Price = $("#textMarket_Price").val() == "" ? 0 : $("#textMarket_Price").val();
                var Status = $("#textStatus").val();
                var Date_Inactive = $("#textDate_Inactive").val();
                var Reason = $("#textReason").val();
                var Location = $("#textLocation").val();
                var Asset_No = $("#textAsset_No").val();
                var Serial_No = $("#textSerial_No").val();
                var ToolTag_Code = '';
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
                console.log(Convert_Market_Price);
                    if (GroupCode != "" && TypeCode != "" && SizeCode != "") {
                        SP_ToolTag_Master(ToolTag_Code, GroupCode, TypeCode, SizeCode, Description,
                            Brand, Model, Vender, Convert_Purchase_Price, Convert_Market_Price, Status, Date_Inactive,
                            Reason, Location, Asset_No, Serial_No, Picture, BUGroup, PO_No, Date_Purchase, Calibration, Calibration_Date, Action);
                    }
                    else {
                        swal('Error', 'กรุณาเลือก Group, Type, Size', 'error');
                    }

                

            });

            $(document).on("click", "#btnSaveToolTag", function () {
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
                    var Asset_No = $("#textAsset_No").val();
                    var Serial_No = $("#textSerial_No").val();
                    var ToolTag_Code = $("#textToolTag_Code").val();
                    var Picture = 'Yes';
                    var BUGroup = $("#textBUGroup").val();
                    var PO_No = $("#textPO_No").val();
                    var Date_Purchase = $("#textDate_Purchase").val();
                    var Action = 'Edit';
                    var Convert_Purchase_Price = Purchase_Price != '' ? removeCurrency(Purchase_Price) : 0;
                    var Convert_Market_Price = Market_Price != '' ? removeCurrency(Market_Price) : 0;
                    var Calibration = $("#checkbox_Calibration").is(':checked') ? 1 : 0;
                    //var Calibration_Date = $("#textCalibration_Date").val();
                    var Calibration_Date = '';
                

                    if (GroupCode != "" && TypeCode != "" && SizeCode != "") {
                        SP_ToolTag_Master(ToolTag_Code, GroupCode, TypeCode, SizeCode, Description,
                            Brand, Model, Vendor_Code, Convert_Purchase_Price, Convert_Market_Price, Status, Date_Inactive,
                            Reason, Location, Asset_No, Serial_No, Picture, BUGroup, PO_No, Date_Purchase, Calibration, Calibration_Date, Action);
                    }
                    else {
                        swal('Error', 'กรุณาเลือก Group, Type, Size', 'error');
                    }

            });

            $(document).on("click", "#btnSaveCalibration", function () {
                var StartCalibrationDate = $("#textCB_StartDate").val();
                var EndCalibrationDate = $("#textCB_StartEnd").val();
                var Detail = $("#textCB_Remark").val();
                var ID = $("#textCB_ID").val();
                var Action = $(this).attr("data-action");
                var ToolTag_Code = $("#textToolTag_Code").val();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/SP_ToolTag_Calibration") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ ID: ID, ToolTag_Code: ToolTag_Code, StartCalibrationDate: StartCalibrationDate, EndCalibrationDate: EndCalibrationDate, Detail: Detail, Action: Action }),
                    success: function (response) {
                        var returnID = response.d;
                        saveAttachCB(ToolTag_Code, returnID);
                        swal('Complete', 'บันทึกการ Calibration สำเร็จ', 'success');
                        Get_TB_ToolTag_Calibration(ToolTag_Code)
                        $("#ModalCalibration").modal("hide");
                    }
                });
            });

            $(document).on("click", ".btnDeleteCB_Image", function () {
                var ID = parseInt($(this).attr("data-id"));
                var tr = $(this).closest("tr");
                if (ID != 0) {
                    var TotalPath = $(this).attr("data-Path");
                }
                console.log(ID);
                console.log(TotalPath);
                swal({
                    title: 'ยืนยันการลบไฟล์แนบ?',
                    text: " ",
                    icon: 'warning',
                    buttons: {
                        cancel: true,
                        confirm: true,
                    },
                }).then(function (confirm) {
                    if (confirm) {
                        $.ajax({
                            type: "post",
                            async: false,
                            url: "<%= ResolveUrl("Default.aspx/SP_ToolTag_Calibration_Attach")%>",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            data: JSON.stringify({ ID: ID, Calibration_ID: 0, Path: '', Action: 'Status' }),
                            success: function (response) {
                                UpLoadFileDelete(TotalPath);
                            }
                        });
                        tr.remove();
                    }
                    })

            });

            $(document).on("click", "#btnSaveMA", function () {
                var RepairType = $("#textMA_RepairType").val();
                var RepairDate = $("#textMA_RepairDate").val();
                var Supplier = $("#textMA_Supplier").val();
                var Cost = $("#textMA_Cost").val() == "" ? 0 : $("#textMA_Cost").val();
                var PO_Number = $("#textMA_PO_Number").val();
                var Remark = $("#textMA_Remark").val();
                var ID = $("#textMA_ID").val();
                var Action = $(this).attr("data-action");
                var ToolTag_Code = $("#textToolTag_Code").val();
                Cost = removeCurrency(Cost);
                console.log(Cost);
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/SP_ToolTag_MA") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ID:ID, RepairType:RepairType, RepairDate:RepairDate, Supplier:Supplier, Cost:Cost,Remark:Remark, PO_No:PO_Number, ToolTag_Code:ToolTag_Code, Action:Action}),
                    success: function (response) {
                        swal('Complete', 'บันทึกการ Repair สำเร็จ', 'success');
                        Get_TB_ToolTag_MA(ToolTag_Code)
                        $("#ModalMA").modal("hide");
                    }
                });
            });
            //btn Save

            function SP_ToolTag_Master(ToolTag_Code, GroupCode, TypeCode, SizeCode, Description,
                Brand, Model, Vendor_Code, Purchase_Price, Market_Price, Status, Date_Inactive,
                Reason, Location, Asset_No, Serial_No, Picture, BUGroup, PO_No, Date_Purchase,Calibration,Calibration_Date, Action) {
                 var site_ref = getAllUrlParams("site_ref");
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
                        , Picture: Picture, BUGroup: BUGroup, PO_No: PO_No, Date_Purchase: Date_Purchase, Calibration: Calibration, Calibration_Date: Calibration_Date
                        , site_ref: site_ref, Action: Action
                    }),
                    success: function (response) {
                        var ToolTag_code = response.d;
                        console.log(ToolTag_code);
                        saveAttachTooltag(ToolTag_code);
                        swal('Complete', 'บันทึกข้อมูลเสร็จสิ้น', 'success').then(() => {
                        });
                        swal({
                            title: "Complete",
                            text: "บันทึกข้อมูลเสร็จสิ้น",
                            icon: "success",
                            //button: "!",
                        }).then(() => {
                            window.location.href = './MaintainToolTag.aspx?site_ref='+site_ref+'&ToolTag=' + ToolTag_code;
                        });
                    }
                });
            }

            //Save Master Data

            function Get_TB_ToolTag_Calibration(ToolTag_Code) {
                tableCalibration.clear().draw();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_ToolTag_Calibration") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ ToolTag_Code: ToolTag_Code }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[ToolTag_Code],[StartCalibrationDate],[EndCalibrationDate],[Detail]
                                var ID = val[0];
                                var ToolTag_Code = val[1];
                                var StartCalibrationDate = val[2];
                                var EndCalibrationDate = val[3];
                                var Detail = val[4];
                                tableCalibration.row.add([StartCalibrationDate.substr(0,10), EndCalibrationDate.substr(0,10), Detail,
                                    '<td><button type="button" class="btn btn-warning btnModal_Calibration" data-id="'+ID+'" data-action="Edit">Edit</button></td>']).draw().node();
                            });
                        }
                    }
                });
            }
            
            function GET_TB_ToolTag_Calibration_Attach(CB_ID) {
                $("#ListAttachCB_OLD").empty();
                $.ajax({
                    type: "POST",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GET_TB_ToolTag_Calibration_Attach") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ Calibration_ID: CB_ID }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            var fragment = '';
                            $.each(response.d, function (index, val) {
                                //[ID],[Calibration_ID],[Path]
                                var ID = val[0];
                                var Calibration_ID = val[1];
                                var Path = val[2];
                                var showName = Path.substring(32);
                                console.log(Path);
                                fragment += '<tr>';
                                fragment += '<td><a href="http://portalapp01/' + Path.substr(3) + '" target="_blank">' + showName.substr(11) + '</a></td>';
                                fragment += '<td></td>';
                                fragment += '<td><button type="button" class="btn btn-danger btnDeleteCB_Image" data-id="' + ID + '" data-Path="' + Path + '" ><i class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></i></button></td>';
                                fragment += '</tr>';

                            });
                            $('#ListAttachCB_OLD').append(fragment);
                        }
                    }
                });
            }
            //Get Tab CB

            function Get_TB_ToolTag_MA(ToolTag_Code) {
                tableMA.clear().draw();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TB_ToolTag_MA") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ ToolTag_Code: ToolTag_Code }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ID],[RepairType],[RepairDate],[Vendor_Code],[Cost],[Remark],[PO_No],[ToolTag_Code]
                                var ID = val[0];
                                var RepairType = val[1];
                                var RepairDate = val[2];
                                var Vendor_Code = val[3];
                                var Cost = val[4];
                                var Remark = val[5];
                                var PO_No = val[6];
                                var ToolTag_Code = val[7];
                                tableMA.row.add([RepairType, RepairDate.substr(0,10), Vendor_Code, Currency(Cost), PO_No, Remark,
                                    ' <td><button type="button" class="btn btn-warning btnModal_MA" data-id="' + ID + '" data-action="Edit">Edit</button></td>']).draw().node();
                            });
                        }
                    }
                });
            }   
            //Get Tab MA

            function Get_TabHistory_VW_ToolTag_Transaction(ToolTag_Code) {
                tableHistory.clear().draw();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/TabHistory_VW_ToolTag_Transaction") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ ToolTag_Code: ToolTag_Code }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var site_ref = val[0]
                                var ToolNumberBorrow = val[1]
                                var Ref_Type = val[2]
                                var ToolTag_Code = val[3]
                                var Reference = val[4]
                                var BU_Group = val[5]
                                var Location = val[6]
                                var Borrower = val[7]
                                var Borrowfor = val[8]
                                var CostCenter = val[9]
                                var K2Borrow = val[10]
                                var BorrowDate = val[11]
                                var ToolNumberReturn = val[12]
                                var Returner = val[13]
                                var Returnfor = val[14]
                                var K2Return = val[15]
                                var ReturnDate = val[16]
                                var Status_Tool = val[17]
                                var WFIDBorrow = val[18]
                                var WFIDReturn = val[19]

                                tableHistory.row.add([Borrowfor, Borrower, BorrowDate.substr(0, 10),
                                    '<a href="http://pk-flow/application_Software_Space/IC-Item%20Code/IC13-ToolRequest.aspx?WT=IC13&Site_Ref='+site_ref+'&ID='+WFIDBorrow+'&K2='+K2Borrow+'&TypeK2=K2&FlowType=M" target="_blank">' + K2Borrow + '<a/>'
                                    , Returner, ReturnDate.substr(0, 10),
                                    '<a href="http://pk-flow/application_Software_Space/IC-Item%20Code/IC13-ToolRequest.aspx?WT=IC13&Site_Ref='+site_ref+'&ID='+WFIDReturn+'&K2='+K2Return+'&TypeK2=K2&FlowType=M" target="_blank">' + K2Return + '<a/>'
                                    , Status_Tool]).draw().node();
                            });
                        }
                    }
                });
            }
            //Get Tab HisTory

            <%--function SetLocation() {
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
            
            function Get_BUGroupName(BUGroup) {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/Get_BUGroup") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: BUGroup }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var Uf_Group = val[0];
                                var GroupDesc = val[1];
                                $("#textBUGroupName").val(GroupDesc);
                            });
                        }
                    }
                });
            }//Get BuGroup


            $("input[data-type='currency']").on({
                keyup: function () {
                    formatCurrency($(this));
                },
                blur: function () {
                    formatCurrency($(this), "blur");
                }
            });
            //New Currency

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
            //Old Currency
            //-----------  Currency


            function SetDatePicker() {
                  $('#textDate_Inactive').datepicker({ format: 'dd/mm/yyyy', autoHide: true });
                $('#textDate_Purchase').datepicker({ format: 'dd/mm/yyyy', autoHide: true });
                $('#textCB_StartEnd').datepicker({ format: 'dd/mm/yyyy', autoHide: true });
                $('#textCB_StartDate').datepicker({ format: 'dd/mm/yyyy', autoHide: true });
                $('#textMA_RepairDate').datepicker({ format: 'dd/mm/yyyy', autoHide: true });
                //$('#textCalibration_Date').datepicker({
                //    format: 'dd/mm/yyyy', autoHide: true ,
                //    beforeShow: function (textbox, instance) {
                //        var txtBoxOffset = $(this).offset();
                //        var top = txtBoxOffset.top;
                //        var left = txtBoxOffset.left;
                //        var textBoxWidth = $(this).outerWidth();
                //        console.log('top: ' + top + 'left: ' + left);
                //        setTimeout(function () {
                //            instance.dpDiv.css({
                //                top: top - 100, //you can adjust this value accordingly
                //                left: left + textBoxWidth//show at the end of textBox
                //            });
                //        }, 0);

                //    }
                //});
              
            }
            //------------ DatePicker


            function checkStatusInActive() {
                var textStatus = $("#textStatus").val();
                if (textStatus == "InActive") {
                    //$("#div-statusInActive").show();
                    $('#div-statusInActive').css('display', 'block');
                } else {
                    //$("#div-statusInActive").hide();
                    $('#div-statusInActive').css('display', 'none');
                }
            }//Show Hide Div StatusInActive



            function saveAttachTooltag(ToolTag_code) {
                if ($("#Input_Image").val() != "") {
                    var data = $("#Input_Image")[0].files[0];
                    var name = ToolTag_code;
                    var folder = 'PictureTool';
                    var Type = 'PNG';
                    insertFileToolTag(data, name, folder, Type);
                }
            }//Save Image Profile ToolTag


            var filenum_CB = 1;
            $(document).on("change", "#addAttachCB", function () {
                var fragment = '';
                var clone = $("#addAttachCB").clone();
                var filename = clone[0].files[0]["name"];
                clone.attr("id", "XXXXXXX" + filenum_CB);
                //console.log(filename);
                fragment += '<tr>';
                fragment += '<td>' + filename + '</td> ';
                fragment += '<td id="fileMA' + filenum_CB + '"></td> ';
                fragment += '<td><button type="button" class="btn btn-danger att-margin" onclick="deleteRow(this)" ><i class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></i></button></td>';
                fragment += '</tr>';
                $('#ListAttachCB').append(fragment);
                $("#fileMA" + filenum_CB).append(clone);
                filenum_CB++;
            });
            //=============== Attach file ไฟล์แนบเอกสาร==================
            
            function saveAttachCB(ToolTagCode, CB_ID) {
                var arrName = [];
                var num = "(copy)";
                //var ITTAG = ITTAG;
                var folder = '\\Calibration\\'+ToolTagCode+"\\" + CB_ID; // Set id/floder
                $("#ListAttachCB tr").each(function () {
                    if ($(this).find("td:nth-child(2)").find("input[type=file]").val() != "") {
                        var data = $(this).find("td:nth-child(2)").find("input[type=file]")[0].files[0];
                        var imgName = $(this).find("td:nth-child(2)").find("input[type=file]")[0].files[0]["name"];
                        var Path = "..\\ToolTag_Attach\\Calibration\\"+ ToolTagCode +"\\" + CB_ID + "\\" + imgName;
                        if (arrName.includes(imgName)) {
                            arrName.push(imgName);
                            imgName = imgName + num;
                        } else {
                            arrName.push(imgName);
                        }
                        $.ajax({
                            type: "post",
                            async: false,
                            url: "<%= ResolveUrl("Default.aspx/SP_ToolTag_Calibration_Attach")%>",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            data: JSON.stringify({ ID: 0, Calibration_ID: CB_ID, Path: Path, Action: 'Insert' }),
                            success: function (response) {
                                insertFileToolTag(data, imgName, folder,'');
                            }
                        });
                    }
                });
            }



        });
        //End Document Ready
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
        
        function UpLoadFileDelete(path) {
            var formData = new FormData();
            formData.append('folderName', path);
            $.ajax({
                type: 'post',
                url: './UpLoadfileDelete.ashx',
                //ต้องสร้างใหม่เป็นของ PATAG
                data: formData,
                async: false,
                success: function (status) {
                    //alert("Upload Complete");
                    swal('Delete file Complete', '', 'success');
                },
                processData: false,
                contentType: false,
                error: function () {
                }
            });
        }
    </script>
</asp:Content>
