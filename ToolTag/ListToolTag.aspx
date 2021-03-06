<%@ Page Title="List ToolTag" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListToolTag.aspx.cs" Inherits="ToolTag.ListToolTag" %>

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
        <asp:TextBox runat="server" ID="snsToolTag_Code" />
        <asp:TextBox runat="server" ID="snsType" />
        <asp:TextBox runat="server" ID="snsGroup" />
        <asp:TextBox runat="server" ID="snsSize" />
        <asp:TextBox runat="server" ID="snsStatus" />
        <asp:TextBox runat="server" ID="snsAsset_No" />
        <asp:TextBox runat="server" ID="snssite_ref" />
       <%--Export C# Transaction--%>>
    </div>

    <div class="page-header">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4" style="text-align: left;">
                <h2>List ToolTag</h2>
            </div>
            <div class="col-md-8 col-sm-8 col-xs-8" style="text-align: right">
            </div>
        </div>
        
        <div class="row ">
            <div class="col-md-12">
                <div class="col-md-4" style="text-align: left;">
                </div>

                <div class="col-md-8" style="text-align: right">
                    <button id="btnNewToolTag" class="btn btn-success" type="button">New</button>
                </div>
            </div>
        </div>
    </div>

    <div class="panel-group">
        <div class="panel panel-default" style="margin-top: 1em;">
            <div class="panel-body">
                <div class="col-md-12">
                    <div class="row">
                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                            <span style="font-weight: bold;" class="col-md-3 col-xs-12 ">Tag Code</span>
                            <div class="col-md-9 col-xs-12">
                                    <input type="text" id="textTagCode" class="form-control" style="min-width: 100%" autocomplete="off" />
                            </div>
                        </div>
                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                            <span style="font-weight: bold;" class="col-md-3 col-xs-12 ">Group</span>
                            <div class="col-md-9 col-xs-12">
                                <div class="input-group">
                                    <input type="text" id="textGroup" class="form-control" style="min-width: 100%" autocomplete="off" />
                                    <div class="input-group-btn">
                                        <button class="btn btn-default Browse_modal" data-type="Group" type="button">
                                            <i class="glyphicon glyphicon-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--END Row-->
                    <div class="row">
                        <div class="form-group col-md-6 col-xs-12">
                            <span style="font-weight: bold;" class="col-md-3 col-xs-12 ">Type</span>
                            <div class="col-md-9 col-xs-12">
                                <div class="input-group">
                                    <input type="text" id="textType" class="form-control" style="min-width: 100%" autocomplete="off" />
                                    <div class="input-group-btn">
                                        <button class="btn btn-default Browse_modal" data-type="Type" type="button">
                                            <i class="glyphicon glyphicon-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-6 col col-xs-12">
                            <span style="font-weight: bold;" class="col-md-3 col-xs-12 ">Size</span>
                            <div class="col-md-9 col-xs-12">
                                <div class="input-group">
                                    <input type="text" id="textSize" class="form-control" style="min-width: 100%" autocomplete="off" />
                                    <div class="input-group-btn">
                                        <button class="btn btn-default Browse_modal" data-type="Size" type="button">
                                            <i class="glyphicon glyphicon-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--END Row-->
                    <div class="row">
                        <div class="form-group col-md-6 col col-xs-12">
                            <span style="font-weight: bold;" class="col-md-3 col-xs-12 ">Asset No.</span>
                            <div class="col-md-9 col-xs-12">
                                <div class="input-group">
                                    <input type="text" id="textAsset_No" class="form-control" style="min-width: 100%" autocomplete="off" />
                                    <div class="input-group-btn">
                                        <button class="btn btn-default Browse_modal" data-type="AssetNumber" type="button">
                                            <i class="glyphicon glyphicon-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-md-6 col-xs-12">
                            <span style="font-weight: bold;" class="col-md-3 col-xs-12 ">Status</span>
                            <div class="col-md-9 col-xs-12">
                                <select id="textStatus" class="form-control max-wide">
                                    <option value="">=== Plase Select Status ===</option>
                                    <option value="Active">Active</option>
                                    <option value="InActive">InActive</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!--END Row-->
                </div>

                <div class="col-md-12">
                    <div class="row">
                        <div class="form-group col-md-12 col-sm-12 col-xs-12">
                            <div class="col-md-8 col-xs-12">
                            </div>
                            <div class="col-md-2 col-xs-12">
                                <button type="button" id="btnSearch_Clear" class="btn btn-warning btn-block" style="float: right;">Clear</button>
                            </div>
                            <div class="col-md-2 col-xs-12">
                                <button type="button" id="btnSearch" class="btn btn-info btn-block" style="float: right;">Search</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--panel-body-->
        </div>
        <!--panel-default-->
        <div class="panel panel-default" style="margin-top: 1em;">
            <div class="panel-body">
                <div class="row" style="margin-bottom: 5px">
                    <div class="col-md-12">
                        <div class="col-md-10">
                        </div>
                        <div class="col-md-2">
                            <asp:Button runat="server" class="btn btn-block btn-Excel-dowlaod"
                                Text="Export Excel" ID="Export_LisToolTag"
                                OnClick="Export_LisToolTag_Click" UseSubmitBehavior="false" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-hover" id="TbToolTag" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Tag Code</th>
                                        <th>Group</th>
                                        <th>Type</th>
                                        <th>Size</th>
                                        <th>Asset Number</th>
                                        <th>Brand</th>
                                        <th>Model</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody id="ListToolTag">
                                   <%-- <tr>
                                        <td>KTSA2900-001</td>
                                        <td>ชุดตะขอเกี่ยวFullBody</td>
                                        <td>Nike</td>
                                        <td>GT1234</td>
                                        <td>TST</td>
                                        <td>Active</td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--panel-body-->
        </div>
        <!--panel-default-->
    </div>
    <!--Panel-Group -->

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
                    <h4 id="text_po_is_empty" style="text-align: center; display: none">Please input in Textbox for searching Asset Number</h4>
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
        //CheckPermission('Maintain ToolTag');
        $(document).ready(function () {

            var site_ref = "";
            if (getAllUrlParams("site_ref")) {
                site_ref = getAllUrlParams("site_ref");
            }

            var CheckPage = CheckPermission('Maintain ToolTag',site_ref);
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
            } 
            //Check Permission

             var site_ref = getAllUrlParams("site_ref");

            var TbToolTag = $('#TbToolTag').DataTable({
                searching: false,
                lengthChange: true,
                responsive: true,
                "columnDefs": [
                    { "width": "20%", "targets": 2 }
                ]
            });
            $("#MainContent_snssite_ref").val(site_ref);
            ListToolTag_VW_ToolTag_Master('', '', '', '','','');

        $(document).on("click", ".Browse_modal", function () {
            var fragment = '';
            var fragmentHeader = '';
            var Type = $(this).attr("data-type");
            $("#Titlebrowse").text(Type);
            $("#TBbodyBrowse").empty();
            $("#TBheaderBrowse").empty();
            $("#search_box").empty();
            $("#search_box").append('<input type="text" id="search_' + Type + '" placeholder="Search.." class="form-control max-wide" autocomplete="off">');
            
            if (Type == 'Group') {
                Get_BrowseGroup('');
            }//End 
            else if (Type == 'Type') {
                var GroupCode = $("#textGroup").val();
                Get_BrowseType(GroupCode,'');
            }//End 
            else if (Type == 'Size') {
                var GroupCode = $("#textGroup").val();
                var GroupTypeName = $("#textType").val();
                Get_BrowseSize(GroupCode,GroupTypeName,'');
            }//End 
            else if (Type == 'AssetNumber') {
                ModalAssetNumber('');
            }//End 


            $("#TBheaderBrowse").append(fragmentHeader);
            $("#TBbodyBrowse").append(fragment);
            $("#modalBrowseSearch").modal("show");
            //Modal Browse
            
            });
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
                    url: "<%= ResolveUrl("Default.aspx/GET_TB_ToolTag_MainGroup") %>",
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

            function Get_BrowseType(GroupCode,search) {
                $("#Titlebrowse").text('Search Type');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                //size Modal
                fragmentHeader = `<th>Type Name</th>
                                     <th>Status</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GETBrowse_TB_ToolTag_MainType") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({GroupCode:GroupCode, search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                 //[GroupCode] ,[GroupName] ,[Status]
                                var TypeCode = val[0];
                                var TypeName = val[1];
                                var Status = val[2];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselectType_Browse" href="javascript:void(0)"  >' + TypeName + '</a></td>';
                                fragment += '<td><a class="clickselectType_Browse" href="javascript:void(0)"  >' + Status + '</a></td>';
                                fragment += '</tr>';
                            });
                        }
                    }
                });
                $("#TBheaderBrowse").append(fragmentHeader);
                $("#TBbodyBrowse").append(fragment);
            }
            //Get Browse Type

            function Get_BrowseSize(GroupCode,TypeName,search) {
                $("#Titlebrowse").text('Search Size');
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var fragmentHeader = '';
                var fragment = '';
                $("#modalSize").attr('class', 'modal-dialog modal-md');
                //size Modal
                fragmentHeader = `<th>Size Name</th>
                                     <th>Status</th>`;
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/GETBrowse_VW_ToolTag_MainSize") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({GroupCode:GroupCode,TypeName:TypeName, search: search }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                 //[GroupCode] ,[GroupName] ,[Status]
                                var TypeCode = val[0];
                                var TypeName = val[1];
                                var Status = val[2];
                                fragment += '<tr>';
                                fragment += '<td><a class="clickselectSize_Browse" href="javascript:void(0)"  >' + TypeName + '</a></td>';
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

            function ModalAssetNumber(search) {
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
                } else {
                    $("#text_po_is_empty").show();
                }
                    $("#IMGUpload").modal("hide");
                    $("#TBbodyBrowse").append(fragment);

            }
            //Get Browse Asset Number

            $(document).on("change", "#search_Group", function () {
                var search = $(this).val();
                console.log(search);
                Get_BrowseGroup(search);
            });

            $(document).on("change", "#search_Type", function () {
                var search = $(this).val();
                var GroupCode = $("#textGroup").val();
                console.log(search);
                console.log(GroupCode);
                Get_BrowseType(GroupCode,search);
            });

            $(document).on("change", "#search_Size", function () {
                var search = $(this).val();
                var GroupCode = $("#textGroup").val();
                var GroupTypeName = $("#textType").val();
                console.log(search);
                console.log(GroupCode);
                console.log(GroupTypeName);
                Get_BrowseSize(GroupCode,GroupTypeName,search);
            });

            $(document).on("change", "#search_AssetNumber", function () {
                $("#TBheaderBrowse").empty();
                $("#TBbodyBrowse").empty();
                var search = $(this).val();
                console.log(search);
                ModalAssetNumber(search);
                $("#modalBrowseSearch").modal("show");
            });
            
            //-------Chage Search Browse------
            
            $(document).on("click", ".clickselectGroup_Browse", function () {
                var GroupCode = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#search_Group").val("");
                $("#textGroup").val(GroupCode);
                $("#modalBrowseSearch").modal("hide");
            });
            $(document).on("click", ".clickselectType_Browse", function () {
                var TypeName = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#search_Type").val("");
                $("#textType").val(TypeName);
                $("#modalBrowseSearch").modal("hide");
            });
            $(document).on("click", ".clickselectSize_Browse", function () {
                var SizeName = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#search_Size").val("");
                $("#textSize").val(SizeName);
                $("#modalBrowseSearch").modal("hide");
            });
            $(document).on("click", ".clickselecttext_AssetNumber", function () {
                var AssetNumber = $(this).closest("tr").find("td:nth-child(1)").text();
                $("#search_AssetNumber").val("");
                $("#textAsset_No").val(AssetNumber);
                $("#modalBrowseSearch").modal("hide");
            });
            //-------select Browse------
            $(document).on("click", "#btnSearch_Clear", function () {
                $("#textTagCode").val("");
                $("#textGroup").val("");
                $("#textType").val("");
                $("#textSize").val("");
                $("#textStatus").val("");
                $("#textAsset_No").val("");

                $("#MainContent_snsToolTag_Code").val("");
                $("#MainContent_snsGroup").val("");
                $("#MainContent_snsType").val("");
                $("#MainContent_snsSize").val("");
                $("#MainContent_snsStatus").val("");
                $("#MainContent_snsAsset_No").val("");

                ListToolTag_VW_ToolTag_Master( '', '',  '',  '','','') 
            });
            $(document).on("click", "#btnSearch", function () {
                var ToolTag_Code = $("#textTagCode").val();
                var GroupCode = $("#textGroup").val();
                var TypeName = $("#textType").val();
                var SizeName = $("#textSize").val();
                var Status = $("#textStatus").val();
                var Asset_No = $("#textAsset_No").val();

                $("#MainContent_snsToolTag_Code").val(ToolTag_Code);
                $("#MainContent_snsGroup").val(GroupCode);
                $("#MainContent_snsType").val(TypeName);
                $("#MainContent_snsSize").val(SizeName);
                $("#MainContent_snsStatus").val(Status);
                $("#MainContent_snsAsset_No").val(Asset_No);

                ListToolTag_VW_ToolTag_Master( ToolTag_Code, GroupCode,  TypeName,  SizeName,Status,Asset_No) 
            });
            //-------Search------
            
            $(document).on("click", "#btnNewToolTag", function () {
                window.location.href = './MaintainToolTag.aspx?site_ref=' + site_ref ;

            });
            
            function ListToolTag_VW_ToolTag_Master(ToolTag_Code, GroupCode, TypeName, SizeName,Status,Asset_No) {
                TbToolTag.clear().draw();
                $.ajax({
                    type: "post",
                    async: false,
                    url: "<%= ResolveUrl("Default.aspx/ListToolTag_VW_ToolTag_Master") %>",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: JSON.stringify({
                        ToolTag_Code: ToolTag_Code, GroupCode: GroupCode, TypeName: TypeName,
                        SizeName: SizeName,Asset_No:Asset_No, Status: Status, site_ref: site_ref
                    }),
                    success: function (response) {
                        if (response.d.length > 0) {
                            $.each(response.d, function (index, val) {
                                //[ToolTag_Code],[Description],[Brand],[Model],[Supplier],[Purchase_Price],[Book_Value],[Status],[Date_Inactive],[Reason],[Location],[Asset_No],[Serial_No],[Picture]
                                //,[BUGroup],[PO_No],[Date_Purchase],[GroupCode],[GroupName],[TypeCode],[TypeName],[SizeCode],[SizeName]
                                var ToolTag_Code = val[0];
                                var Brand = val[1];
                                var Model = val[2];
                                var Status = val[3];
                                var Asset_No = val[4];
                                var GroupName = val[5];
                                var TypeName = val[6];
                                var SizeName = val[7];
                                //var ToolTag_Code = val[0];
                                //var Description = val[1];
                                //var Brand = val[2];
                                //var Model = val[3];
                                //var Vendor_Code = val[4];
                                //var Vendor_Name = val[5];
                                //var Purchase_Price = val[6];
                                //var Market_Price = val[7];
                                //var Status = val[8];
                                //var Date_Inactive = val[9];
                                //var Reason = val[10];
                                //var Location = val[11];
                                //var Asset_No = val[12];
                                //var Serial_No = val[13];
                                //var Picture = val[14];
                                //var BUGroup = val[15];
                                //var PO_No = val[16];
                                //var Date_Purchase = val[17];
                                //var Calibration = val[18];
                                //var GroupCode = val[19];
                                //var GroupName = val[20];
                                //var TypeCode = val[21];
                                //var TypeName = val[22];
                                //var SizeCode = val[23];
                                //var SizeName = val[24];

                                TbToolTag.row.add([
                                    '<a  href="./MaintainToolTag.aspx?site_ref=' + site_ref + '&ToolTag=' + ToolTag_Code + '" >' + ToolTag_Code + '</a>'
                                    , GroupName
                                    , TypeName
                                    , SizeName
                                    , Asset_No
                                    , Brand
                                    , Model
                                    , Status]).draw().node();
                            });
                        }
                    }
                });
            }

            
        });
        //End Document Ready
    </script>

</asp:Content>
