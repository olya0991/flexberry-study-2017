﻿<%--flexberryautogenerated="true"--%>
<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="VyborPrioritetaE.aspx.cs" Inherits="IIS.Product_58826.ВыборПриоритетаE" %>
<%@ Import namespace="NewPlatform.Flexberry.Web.Page" %>
<%-- Autogenerated section start [Register] --%>
<%-- Autogenerated section end [Register] --%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="<%= Constants.FormCssClass %> <%= Constants.EditFormCssClass %>">
        <h2 class="<%= Constants.FormHeaderCssClass %> <%= Constants.EditFormHeaderCssClass %>">Выбор приоритета</h2>
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
  <asp:Label CssClass="descLbl" ID="ctrlСтудентLabel" runat="server" Text="Студент" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlСтудент" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlСтудентValidator" runat="server" ControlToValidate="ctrlСтудент"
ErrorMessage="Не указано: Студент" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlСтудент_ФИОLabel" runat="server" Text="ФИО" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlСтудент_ФИО" runat="server" ReadOnly="true">
</asp:TextBox>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlСтудент_ЛогинLabel" runat="server" Text="Логин" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlСтудент_Логин" runat="server" ReadOnly="true">
</asp:TextBox>

<asp:RequiredFieldValidator ID="ctrlСтудент_ЛогинValidator" runat="server" ControlToValidate="ctrlСтудент_Логин"
ErrorMessage="Не указано: Студент.Логин" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlМодульLabel" runat="server" Text="Модуль" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlМодуль" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlМодульValidator" runat="server" ControlToValidate="ctrlМодуль"
ErrorMessage="Не указано: Модуль" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlМодуль_НазваниеLabel" runat="server" Text=" " EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlМодуль_Название" runat="server" ReadOnly="true">
</asp:TextBox>

<asp:RequiredFieldValidator ID="ctrlМодуль_НазваниеValidator" runat="server" ControlToValidate="ctrlМодуль_Название"
ErrorMessage="Не указано: Модуль.Название" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlПриоритетLabel" runat="server" Text="Приоритет" EnableViewState="False">
</asp:Label>
<ac:AlphaNumericTextBox CssClass="descTxt" ID="ctrlПриоритет" Type="Numeric" runat="server">
</ac:AlphaNumericTextBox>

<asp:RequiredFieldValidator ID="ctrlПриоритетValidator" runat="server" ControlToValidate="ctrlПриоритет"
ErrorMessage="Не указано: Приоритет" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlАктуальностьLabel" runat="server" Text="Актуальность" EnableViewState="False">
</asp:Label>
<asp:CheckBox ID="ctrlАктуальность" CssClass="descTxt" runat="server" Text=""/>
</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlМодульВыбранLabel" runat="server" Text="Выбран для обучения" EnableViewState="False">
</asp:Label>
<asp:CheckBox ID="ctrlМодульВыбран" CssClass="descTxt" runat="server" Text=""/>
</div>

</div>
<!-- autogenerated end -->
            <%-- Autogenerated section end [Controls] --%>
        </div>
    </div>
</asp:Content>
