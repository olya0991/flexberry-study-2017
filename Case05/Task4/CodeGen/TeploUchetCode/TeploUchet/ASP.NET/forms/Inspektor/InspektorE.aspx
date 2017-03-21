﻿<%--flexberryautogenerated="true"--%>
<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="InspektorE.aspx.cs" Inherits="TeploCorp.TeploUchet.ИнспекторE" %>
<%@ Import namespace="NewPlatform.Flexberry.Web.Page" %>
<%-- Autogenerated section start [Register] --%>
<%-- Autogenerated section end [Register] --%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="<%= Constants.FormCssClass %> <%= Constants.EditFormCssClass %>">
        <h2 class="<%= Constants.FormHeaderCssClass %> <%= Constants.EditFormHeaderCssClass %>">Инспектор</h2>
        <div class="<%= Constants.FormToolbarCssClass %> <%= Constants.EditFormToolbarCssClass %> <%= Constants.StickyCssClass %>">
            <asp:ImageButton ID="SaveBtn" runat="server" SkinID="SaveBtn" OnClick="SaveBtn_Click" AlternateText="<%$ Resources: Resource, Save %>" ValidationGroup="savedoc" />
            <asp:ImageButton ID="SaveAndCloseBtn" runat="server" SkinID="SaveAndCloseBtn" OnClick="SaveAndCloseBtn_Click" AlternateText="<%$ Resources: Resource, Save_Close %>" ValidationGroup="savedoc" />
            <asp:ImageButton ID="CancelBtn" runat="server" SkinID="CancelBtn" OnClick="CancelBtn_Click" AlternateText="<%$ Resources: Resource, Cancel %>" />
        </div>
        <div class="<%= Constants.FormControlsCssClass %> <%= Constants.EditFormControlsCssClass %>">
            <%-- Autogenerated section start [Controls] --%>
<!-- autogenerated start -->
<div>
	<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlIDLabel" runat="server" Text="ID" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlID" runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator ID="ctrlIDValidator" runat="server" ControlToValidate="ctrlID"
ErrorMessage="Не указано: ID" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlФамилияLabel" runat="server" Text="Фамилия" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlФамилия" runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator ID="ctrlФамилияValidator" runat="server" ControlToValidate="ctrlФамилия"
ErrorMessage="Не указано: Фамилия" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlИмяLabel" runat="server" Text="Имя" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlИмя" runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator ID="ctrlИмяValidator" runat="server" ControlToValidate="ctrlИмя"
ErrorMessage="Не указано: Имя" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlОтчествоLabel" runat="server" Text="Отчество" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlОтчество" runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator ID="ctrlОтчествоValidator" runat="server" ControlToValidate="ctrlОтчество"
ErrorMessage="Не указано: Отчество" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlЛогинLabel" runat="server" Text="Логин" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlЛогин" runat="server">
</asp:TextBox>

<asp:RequiredFieldValidator ID="ctrlЛогинValidator" runat="server" ControlToValidate="ctrlЛогин"
ErrorMessage="Не указано: Логин" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlРайонLabel" runat="server" Text="Район" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlРайон" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

</div>

</div>
<!-- autogenerated end -->
            <%-- Autogenerated section end [Controls] --%>
        </div>
    </div>
</asp:Content>
