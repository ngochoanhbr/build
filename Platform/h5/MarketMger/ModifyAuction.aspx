﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Platform/h5/MasterPage/MasterDefault.Master"
    AutoEventWireup="true" CodeBehind="ModifyAuction.aspx.cs" Inherits="SinGooCMS.WebUI.Platform.h5.MarketMger.ModifyAuction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/platform/h5/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
    <script src="/platform/h5/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <script src="/platform/h5/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid all">
        <div class="sidebar" id="left-panel">
        </div>
        <div class="profile-wrapper">
            <ol class="breadcrumb breadcrumb-quirk">
                <%=ShowNavigate()%>
            </ol>
            <ul id="myTab" class="nav nav-tabs container-fluid">
                <li><a href="javascript:;" data-toggle="tab" onclick="location='Auction.aspx?CatalogID=<%=base.CurrentCatalogID %>&Module=<%=base.CurrentModuleCode %>&action=View'">
                    Bán đấu giá</a></li>
                <li class="active"><a href="javascript:;" data-toggle="tab">Sửa Bán đấu giá</a></li>
            </ul>
            <div class="profile-body mb-20 areacolumn">
                <div class="datafrom">
                    <h2 class="title">
                        <%=Action == "Add" ? "ThêmBán đấu giá" : "Chỉnh sửa Bán đấu giá"%></h2>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            <em>*</em>Lựa chọn Các mặt hàng</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" required="required"
                                Enabled="false"></asp:TextBox>
                            <asp:HiddenField ID="hdf_ProID" runat="server" />
                        </div>
                        <div class="col-md-4">
                            <input id="btn_selectlist" type="button" value="Lựa chọn Các mặt hàng" class="btn btn-default" onclick="$.dialog.open('../Selector/GoodsForActSelect.aspx?CatalogID=<%=base.CurrentCatalogID %>&Module=<%=base.CurrentModuleCode %>&type=single&elementid=null&attr=dowork&backtype=ids',{title:'Lựa chọn Các mặt hàng',width:680,height:470},false);" /></div>
                    </div>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            <em>*</em>Tên hiển thị</label>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" required="required"
                                placeholder="Nhập vào tên hàng hóa để hiển thị" MaxLength="100"></asp:TextBox>
                        </div>
                        <i class="iconfont ml-20" data-toggle="tooltip" data-placement="right" title="Tên hiển thị khác với tên hàng hóa ban đầu">
                            &#xe613;</i>
                    </div>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            <em>*</em>Thời gian có hiệu lực</label>
                        <div class="col-md-6">
                            <div class="fl w200">
                                <div class="input-group">
                                    <span class="input-group-addon">Bắt đầu</span>
                                    <asp:TextBox Style="width: 160px;" ID="TextBox4" runat="server" CssClass="form-control"
                                        date-selector='true'></asp:TextBox></div>
                            </div>
                            <div class="fl w200 ml-20">
                                <div class="input-group">
                                    <span class="input-group-addon">Kết thúc</span>
                                    <asp:TextBox Style="width: 160px;" ID="TextBox5" runat="server" CssClass="form-control"
                                        date-selector='true'></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            Hiển thị hình ảnh</label>
                        <div class="col-md-4">
                            <div class="images_model">
                                <div class="box-hd">
                                    <i class="iconfont" onclick="h5.openUploadTool('single','<%=TextBox3.ClientID %>,<%=Image1.ClientID %>,<%=Image1.ClientID %>','value,src,data-original');">
                                        &#xe682;</i>
                                </div>
                                <div class="box-bd">
                                    <div class="figure-img">
                                        <jweb:FullImage ID="Image1" runat="server" viewer='true'/>
                                    </div>
                                    <span class="hidden">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            Giá khởi điểm</label>
                        <div class="col-md-2">
                            <div class="input-group">
                                
                                <jweb:H5TextBox Mode="Number" ID="TextBox8" runat="server" CssClass="form-control"
                                    Text="0.00"></jweb:H5TextBox><span class="input-group-addon">đ</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            Mức tăng giá</label>
                        <div class="col-md-2">
                            <div class="input-group">
                                
                                <jweb:H5TextBox Mode="Number" ID="TextBox9" runat="server" CssClass="form-control"
                                    Text="0.00"></jweb:H5TextBox><span class="input-group-addon">đ</span>
                            </div>
                        </div>
                        <i class="iconfont ml-20" data-toggle="tooltip" data-placement="right" title="Số tiền mỗi lần tăng">
                            &#xe613;</i>
                    </div>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            Giá dự trữ</label>
                        <div class="col-md-2">
                            <div class="input-group">
                                
                                <jweb:H5TextBox Mode="Number" ID="TextBox10" runat="server" CssClass="form-control"
                                    Text="0.00"></jweb:H5TextBox><span class="input-group-addon">đ</span>
                            </div>
                        </div>
                        <i class="iconfont ml-20" data-toggle="tooltip" data-placement="right" title="Giá tối thiểu của đấu giá là dưới giá tồn kho">
                            &#xe613;</i>
                    </div>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            Giá trần</label>
                        <div class="col-md-2">
                            <div class="input-group">
                                
                                <jweb:H5TextBox Mode="Number" ID="TextBox11" runat="server" CssClass="form-control"
                                    Text="0.00"></jweb:H5TextBox><span class="input-group-addon">đ</span>
                            </div>
                        </div>
                        <i class="iconfont ml-20" data-toggle="tooltip" data-placement="right" title="Giá trần không được nhập 0">
                            &#xe613;</i>
                    </div>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            Tiền đặt cọc</label>
                        <div class="col-md-2">
                            <div class="input-group">
                                
                                <jweb:H5TextBox Mode="Number" ID="TextBox12" runat="server" CssClass="form-control"
                                    Text="0.00"></jweb:H5TextBox><span class="input-group-addon">đ</span>
                            </div>
                        </div>
                        <i class="iconfont ml-20" data-toggle="tooltip" data-placement="right" title="Không được đặt là 0">
                            &#xe613;</i>
                    </div>
                    <div class="form-group mt-20 fix">
                        <label for="firstname" class="col-md-3 control-label">
                            Tóm tắt thông tin hoạt động</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="TextBox7" TextMode="MultiLine" Rows="3" Columns="60" runat="server"
                                CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="profile-body">
                    <div class="datafrom text-right">
                        <asp:Button ID="btnok" Text="Xác nhận" runat="server" class="btn btn-danger" OnClick="btnok_Click" />
                        <input id="btncancel" onclick="location='Auction.aspx?CatalogID=<%=base.CurrentCatalogID %>&Module=<%=base.CurrentModuleCode %>&action=View'"
                            type="button" value="Hủy bỏ" class="btn btn-default" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $("#<%=TextBox4.ClientID %>,#<%=TextBox5.ClientID %>").datetimepicker({ minView: 0, startView: 2, weekStart: 1, todayBtn: true, todayHighlight: true, forceParse: true, showMeridian: true, autoclose: true, language: 'zh-CN', pickerPosition: "top-left", format: "yyyy-mm-dd hh:ii:ss" });
        function dowork(params) {
            $.getJSON("/Platform/h5/Ajax/AjaxMethod.aspx?type=getpro&pid=" + params + "&temp=" + Math.random(), function (data) {
                $("#<%=TextBox1.ClientID %>").val(data.ProductName);
                $("#<%=hdf_ProID.ClientID %>").val(data.AutoID);
                $("#<%=TextBox2.ClientID %>").val(data.ProductName);
                $("#<%=Image1.ClientID %>").attr("src", data.ProImg);
                $("#<%=TextBox3.ClientID %>").val(data.ProImg);
                $("#<%=TextBox8.ClientID %>").val(data.SellPrice);
            });
        }
    </script>
</asp:Content>
