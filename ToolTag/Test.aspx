<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="ToolTag.Test" %>
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
    </style>
    <div class="page-header">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4" style="text-align: left;">
                <h2>Test</h2>
            </div>
            <div class="col-md-8 col-sm-8 col-xs-8" style="text-align: right">
            </div>
        </div>
    </div>


    <div class="panel-group">
        <div class="panel panel-default" style="margin-top: 1em;">
            <div class="panel-body">
                <div class="col-md-12">
                     <select class="form-control max-wide" id="textSiteRef">
                      
                     </select>
            <!--panel-body-->
                </div>
             </div>
        </div>
        <!--panel-default-->
    </div>
    <!--Panel-Group -->


    <script type="text/javascript" >
        $(document).ready(function () {
            GetSiteRef();
        });


        function GetSiteRef() {
            var siteRef = '<option value="">=======Please Select a company=======</option>';
            $.ajax({
                type: "post",
                async: false,
                url: "<%=ResolveUrl("Default.aspx/GetSite_ref_HRPortal")%>",
                contentType: "application/json; charset = utf-8",
                dataType: "json",
                success: function (response) {
                    if (response.d.length > 0) {
                        $.each(response.d, function (index, val) {
                            var ID = val[0];
                            var company = val[1];
                            siteRef += '<option value="' + ID + '">' + company + '</option>';
                        });
                        $("#textSiteRef").append(siteRef);
                    }
                }
            });
        }
    </script>
</asp:Content>
