<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DropDownListType.ascx.cs" Inherits="SinGooCMS.WebUI.h5.Controls.FieldControls.DropDownListType" %>
<asp:DropDownList ID="dropField" runat="server" class="form-control"></asp:DropDownList>
<!--Ajax数据-->
<%if (base.Settings.DataFrom.Equals("AjaxData")){%>
    <script type="text/javascript">
        $.get("<%=base.Settings.DataSource %>", {}, function (data) {
            var json = eval('(' + data + ')');
            jQuery.each(json, function (i, item) {
                if (item.KeyValue == "<%=this.Value %>")
                    jQuery("#<%=dropField.ClientID%>").append("<option selected='selected' value=" + item.KeyValue + ">" + item.KeyValue + "</option>");
                else
                    jQuery("#<%=dropField.ClientID%>").append("<option value=" + item.KeyValue + ">" + item.KeyValue + "</option>");
            });
        });
    </script> 
<%} %>