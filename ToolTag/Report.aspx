<%@ Page Title="Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="ToolTag.Report" %>

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
        <%--<asp:TextBox runat="server" ID="snsTrans_EmpNum" />
        <asp:TextBox runat="server" ID="snsTrans_Costcenter" />
        <asp:TextBox runat="server" ID="snsTrans_BU" />
        <asp:TextBox runat="server" ID="snsTrans_ToolTagCode" />
        <asp:TextBox runat="server" ID="snsTrans_Type" />
        <asp:TextBox runat="server" ID="snsTrans_sDate" />
        <asp:TextBox runat="server" ID="snsTrans_eDate" />
        <asp:TextBox runat="server" ID="snssite_ref" />--%>
        <%--Export C# Transaction--%>>
        
        <asp:TextBox runat="server" ID="snssTagCode" />
        <asp:TextBox runat="server" ID="snseTagCode" />
        <asp:TextBox runat="server" ID="snssAssetNo" />
        <asp:TextBox runat="server" ID="snseAssetNo" />
        <asp:TextBox runat="server" ID="snsPO" />

        <%--Export C# Print Label--%>>
    </div>

    
    <div class="page-header">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-4 col-xs-4" style="text-align: left; font-size: 30px;">
                    <h2>Report</h2>
                </div>
                <div class="col-md-8 col-xs-8" style="text-align: right">
                </div>
            </div>
        </div>

    </div>
    <!----End Header---->

    <div class="panel-group">
        <div class="panel nav-tab panel-default" style="margin-top: 2em;">
            <ul class="nav nav-tabs" style="margin-top: 1em; margin-left: 1em; margin-right: 1em;">
                <li class="nav-item ">
                    <a href="#TAB1" class="nav-link" role="tab" data-toggle="tab">Export Use&Count</a>
                </li>
                <li class="nav-item active">
                    <a href="#TAB2" class="nav-link" data-toggle="tab" role="tab">Print Label</a>
                </li>
            </ul>

            <div class="panel-body">
                <div class="tab-content">
                    <div class="tab-pane fade" role="tabpanel" id="TAB1">
                        <div class="panel-group">
                            <div class="panel  panel-default">
                                <div class="panel-heading">
                                    <h4 style="font-weight: bold;">Export Use&Count</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div style="max-width: 100%;">
                                                <div class="col-md-12 col-sm-12">
                                                    <div class="col-md-6 col-xs-6" style="text-align: left;">
                                                        <div style="text-align: right;">
                                                            <asp:Button runat="server" class="btn btn-block btn-Excel-dowlaod"
                                                                Style="min-width: 100%; height: 80px; font-size: 24px; font-weight: bold;"
                                                                Text="Export Use" ID="btnExport_User" OnClick="btnExport_Use_Click"
                                                                UseSubmitBehavior="false" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-xs-6" style="text-align: right;">
                                                        <div style="text-align: right;">
                                                            <asp:Button runat="server" class="btn btn-block btn-Excel-dowlaod"
                                                                Style="min-width: 100%; height: 80px; font-size: 24px; font-weight: bold;"
                                                                Text="Export Count" ID="btnExport_Store" OnClick="btnExport_Count_Click"
                                                                UseSubmitBehavior="false" />
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
                    <!--================End Tab 1====================-->
                    <div class="tab-pane active" role="tabpanel" id="TAB2">
                        <div class="row">
                            <div class="col-md-12">
                                <div id="smartwizard">
                                    <ul>
                                        <li class="check" data-step="Step1"><a href="#step-1">Select ToolTag</a></li>
                                        <li class="check" data-step="Step2"><a href="#step-2">Print</a></li>
                                    </ul>
                                    <div class="row" style="margin-top:1em">
                                        <div id="step-1" class="">
                                            <div class="panel-group">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4>Select Tooltag</h4>
                                                    </div>
                                                    <div class="panel-body" >
                                                        <div class="form-group">
                                                            <div class="col-md-12 col-sm-12">
                                                                <div class="row" style="margin-bottom: 2rem;">
                                                                    <div class="col-md-12">
                                                                        <div class="form-group col-md-6 col-xs-12">
                                                                            <span class="col-md-4 col-xs-12" style="font-weight: bold;">Start Tool TAG :</span>
                                                                            <div class="col-md-8 col-xs-12">
                                                                                <div class="input-group">
                                                                                    <input type="text" class="form-control max-wide" id="sTagCode" autocomplete="off" readonly="readonly">
                                                                                    <div class="input-group-btn">
                                                                                        <button class="btn btn-default Browse_modal" data-type="sTagCode" type="button">
                                                                                            <i class="glyphicon glyphicon-search"></i>
                                                                                        </button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group col-md-6 col-xs-12">
                                                                            <span class="col-md-4 col-xs-12" style="font-weight: bold;">End Tool TAG :</span>
                                                                            <div class="col-md-8 col-xs-12">
                                                                                <div class="input-group">
                                                                                    <input type="text" class="form-control max-wide" id="eTagCode" autocomplete="off" readonly="readonly">
                                                                                    <div class="input-group-btn">
                                                                                        <button class="btn btn-default Browse_modal" type="button" data-type="eTagCode">
                                                                                            <i class="glyphicon glyphicon-search"></i>
                                                                                        </button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="form-group col-md-6 col-xs-12">
                                                                            <span class="col-md-4 col-xs-12" style="font-weight: bold;">Start Asset No. :</span>
                                                                            <div class="col-md-8 col-xs-12">
                                                                                <div class="input-group">
                                                                                    <input type="text" class="form-control max-wide" id="sAssetNo" autocomplete="off" readonly="readonly">
                                                                                    <div class="input-group-btn">
                                                                                        <button class="btn btn-default Browse_modal" type="button" data-type="sAssetNo">
                                                                                            <i class="glyphicon glyphicon-search"></i>
                                                                                        </button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group col-md-6 col-xs-12">
                                                                            <span class="col-md-4 col-xs-12" style="font-weight: bold;">End Asset No. :</span>
                                                                            <div class="col-md-8 col-xs-12">
                                                                                <div class="input-group">
                                                                                    <input type="text" class="form-control max-wide" id="eAssetNo" autocomplete="off" readonly="readonly">
                                                                                    <div class="input-group-btn">
                                                                                        <button class="btn btn-default Browse_modal" type="button" data-type="eAssetNo">
                                                                                            <i class="glyphicon glyphicon-search"></i>
                                                                                        </button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <div class="form-group col-md-6">
                                                                            <span class="col-md-4 col-xs-12" style="font-weight: bold;">PO No. :</span>
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
                                                                </div>

                                                                <div style="text-align: right">
                                                                    <div class="col-md-12">
                                                                        <div class="col-md-6">
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                             <button id="btnclear_PrintLabel" class="btn btn-default " type="button" data-toggle="modal" >Clear</button>
                                                                             <button id="nextPage2" class="btn btn-warning " type="button" data-toggle="modal" >Next</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--End panel-body--%>
                                        </div>
                                        <%--======End Step 3.1======--%>
                                        <div id="step-2" class="">
                                            <div class="panel-group">
                                                <div class="panel panel-default" style="margin-top: 1em;">
                                                    <div class="panel-heading">
                                                        <h4>PRINT Label</h4>
                                                    </div>
                                                    <div class="panel-body">
                                                        <div style="max-width: 100%;">
                                                            <div class="col-md-12 col-sm-12">
                                                                <div class="row">

                                                                    <div style="text-align: right;">
                                                                        <asp:Button runat="server" class="btn btn-block btn-Excel-dowlaod"
                                                                            Style="min-width: 100%; height: 80px; font-size: 24px; font-weight: bold;"
                                                                            Text="Print Label" ID="PrintLabel" OnClick="PrintLabel_Click"
                                                                            UseSubmitBehavior="false" />
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--======End Step 3.2 ======--%>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <!--================End Tab 2====================-->
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

            var site_ref = getAllUrlParams("site_ref");


            $('#smartwizard').smartWizard({
                theme: 'arrows',
                keyNavigation: false,
                showStepURLhash: false,
                selected: 0, //ใส่ 0 จะเริ่มที่ Step แรกสุด
                transitionEffect: 'slide',
                toolbarSettings: { toolbarPosition: 'none', showNextButton: 'false', showPreviousButton: 'false' }
            });
            
            $(document).on("click", "#nextPage2", function () {
                console.log('Page2');
                var sTagCode = $("#sTagCode").val();
                var eTagCode = $("#eTagCode").val();
                var sAssetNo = $("#sAssetNo").val();
                var eAssetNo = $("#eAssetNo").val();
                var PO_No = $("#textPO_No").val();
                $("#MainContent_snssTagCode").val(sTagCode);
                $("#MainContent_snseTagCode").val(eTagCode);
                $("#MainContent_snssAssetNo").val(sAssetNo);
                $("#MainContent_snseAssetNo").val(eAssetNo);
                $("#MainContent_snsPO").val(PO_No);
                $('#smartwizard').smartWizard("next");
            });
            
            $(document).on("click", "#btnclear_PrintLabel", function () {
                $("#sTagCode").val('');
                $("#eTagCode").val('');
                $("#sAssetNo").val('');
                $("#eAssetNo").val('');
                $("#textPO_No").val('');
                $("#MainContent_snssTagCode").val('');
                $("#MainContent_snseTagCode").val('');
                $("#MainContent_snssAssetNo").val('');
                $("#MainContent_snseAssetNo").val('');
                $("#MainContent_snsPO").val('');
                $('#smartwizard').smartWizard("reset"); 
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

                if (Type == 'PONumber') {
                    ModalPoNumber('');
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'sTagCode') {
                    BrowseToolTagCode('', site_ref, Type);
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'eTagCode') {
                    BrowseToolTagCode('', site_ref, Type);
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'sAssetNo') {
                    ModalAssetNumber('', site_ref, Type);
                    $("#modalBrowseSearch").modal("show");
                }//End 
                else if (Type == 'eAssetNo') {
                    ModalAssetNumber('', site_ref, Type);
                    $("#modalBrowseSearch").modal("show");
                }//End 

                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
                //$("#modalBrowseSearch").modal("show");

            });
            //Modal Browse

            $(document).on("change", "#search_PONumber", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                ModalPoNumber(search);
                $("#modalBrowseSearch").modal("show");
            });


            $(document).on("change", "#search_sTagCode", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                BrowseToolTagCode(search, site_ref, 'sTagCode')
                $("#modalBrowseSearch").modal("show");
            });


            $(document).on("change", "#search_eTagCode", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                BrowseToolTagCode(search, site_ref, 'eTagCode')
                $("#modalBrowseSearch").modal("show");
            });


            $(document).on("click", ".clickselecttext_PO", function () {
                var textPO_No = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#textPO_No").val(textPO_No);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselectsTagCode", function () {
                var TagCode = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#sTagCode").val(TagCode);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecteTagCode", function () {
                var TagCode = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#eTagCode").val(TagCode);
                $("#modalBrowseSearch").modal("hide");
            });


            $(document).on("click", ".clickselecttext_sAssetNumber", function () {
                var AssetNo = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#sAssetNo").val(AssetNo);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("click", ".clickselecttext_eAssetNumber", function () {
                var TagCode = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#eAssetNo").val(TagCode);
                $("#modalBrowseSearch").modal("hide");
            });

            $(document).on("change", "#search_sAssetNo", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                ModalAssetNumber(search, 'sAssetNo');
                $("#modalBrowseSearch").modal("show");
            });

            $(document).on("change", "#search_eAssetNo", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                ModalAssetNumber(search, 'eAssetNo');
                $("#modalBrowseSearch").modal("show");
            });


            function BrowseToolTagCode(search, site_ref, from) {
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
                    url: "<%= ResolveUrl("Default.aspx/PrintLabel_VW_ToolTag_Master") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({ search: search, site_ref: site_ref }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                var ToolTag_Code = val[0];
                                var Status = val[1];
                                var Location = val[2];
                                var BUGroup = val[3];
                                fragment += '<tr>';
                                if (from == "sTagCode") {
                                    fragment += '<td><a class="clickselectsTagCode" href="javascript:void(0)">' + ToolTag_Code + '</a></td>';
                                    fragment += '<td><a class="clickselectsTagCode" href="javascript:void(0)">' + BUGroup + '</a></td>';
                                    fragment += '<td><a class="clickselectsTagCode" href="javascript:void(0)">' + Location + '</a></td>';
                                    fragment += '<td><a class="clickselectsTagCode" href="javascript:void(0)">' + Status + '</a></td>';
                                }
                                else if (from == "eTagCode") {
                                    fragment += '<td><a class="clickselecteTagCode" href="javascript:void(0)">' + ToolTag_Code + '</a></td>';
                                    fragment += '<td><a class="clickselecteTagCode" href="javascript:void(0)">' + BUGroup + '</a></td>';
                                    fragment += '<td><a class="clickselecteTagCode" href="javascript:void(0)">' + Location + '</a></td>';
                                    fragment += '<td><a class="clickselecteTagCode" href="javascript:void(0)">' + Status + '</a></td>';
                                }
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
            }

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
                        data: JSON.stringify({ search: search, site_ref: site_ref }),
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
                                    fragment += '<td><a class="clickselecttext_PO" href="javascript:void(0)">' + poDate.substr(0, 10) + '</a></td>';
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

            function ModalAssetNumber(search, from) {
                $("#Titlebrowse").text('Search Asset Number');
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-lg');
                fragmentHeader = `<th>Asset No.</th>
                                     <th>Po No.</th>
                                     <th>item</th>
                                    <th>ExpenseDesc</th>`;
                $("#IMGUpload").modal("show");
                if (search != "") {
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "<%= ResolveUrl("Default.aspx/ListToolTag_GetAssetNumber_VW_PO_AllSite") %>",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        data: JSON.stringify({ search: search, site_ref: site_ref }),
                        success: function (response) {
                            if (response.d.length > 0) {
                                $.each(response.d, function (index, val) {
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
                                    if (from == "sAssetNo") {
                                        fragment += '<td><a class="clickselecttext_sAssetNumber" href="javascript:void(0)">' + Uf_AssetNumber + '</a></td>';
                                        fragment += '<td><a class="clickselecttext_sAssetNumber" href="javascript:void(0)">' + po_num + '</a></td>';
                                        fragment += '<td><a class="clickselecttext_sAssetNumber" href="javascript:void(0)">' + item + '</a></td>';
                                        fragment += '<td><a class="clickselecttext_sAssetNumber" href="javascript:void(0)">' + Uf_ExpenseDesc + '</a></td>';
                                    } else if (from == "eAssetNo") {
                                        fragment += '<td><a class="clickselecttext_eAssetNumber" href="javascript:void(0)">' + Uf_AssetNumber + '</a></td>';
                                        fragment += '<td><a class="clickselecttext_eAssetNumber" href="javascript:void(0)">' + po_num + '</a></td>';
                                        fragment += '<td><a class="clickselecttext_eAssetNumber" href="javascript:void(0)">' + item + '</a></td>';
                                        fragment += '<td><a class="clickselecttext_eAssetNumber" href="javascript:void(0)">' + Uf_ExpenseDesc + '</a></td>';
                                    }
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
                } else {
                    $("#text_po_is_empty").show();
                }
                $("#IMGUpload").modal("hide");
                $("#TBbodyBrowse").append(fragment);

            }
            //Get Browse Asset Number
        });

    </script>

</asp:Content>
