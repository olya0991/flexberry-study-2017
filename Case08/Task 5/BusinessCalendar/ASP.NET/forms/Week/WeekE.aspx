﻿<%--flexberryautogenerated="true"--%>
<%@ Page Language="C#" MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="WeekE.aspx.cs" Inherits="IIS.BusinessCalendar.WeekE" %>
<%@ Import namespace="NewPlatform.Flexberry.Web.Page" %>
<%-- Autogenerated section start [Register] --%>
<%-- Autogenerated section end [Register] --%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="<%= Constants.FormCssClass %> <%= Constants.EditFormCssClass %>">
        <h2 class="<%= Constants.FormHeaderCssClass %> <%= Constants.EditFormHeaderCssClass %>">Стандартная рабочая неделя</h2>
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
  <asp:Label CssClass="descLbl" ID="ctrlNameLabel" runat="server" Text="Название" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlName" runat="server">
</asp:TextBox>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlIsDefaultLabel" runat="server" Text="Стандартная" EnableViewState="False">
</asp:Label>
<asp:CheckBox ID="ctrlIsDefault" CssClass="descTxt" runat="server" Text=""/>
</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlCalendarLabel" runat="server" Text="Календарь" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlCalendar" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlCalendarValidator" runat="server" ControlToValidate="ctrlCalendar"
ErrorMessage="Не указано: Calendar" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlCalendar_NameLabel" runat="server" Text="Название календаря" EnableViewState="False">
</asp:Label>
<asp:TextBox CssClass="descTxt" ID="ctrlCalendar_Name" runat="server" ReadOnly="true">
</asp:TextBox>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlMondayLabel" runat="server" Text="Понедельник" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlMonday" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlMondayValidator" runat="server" ControlToValidate="ctrlMonday"
ErrorMessage="Не указано: Monday" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlTuesdayLabel" runat="server" Text="Вторник" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlTuesday" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlTuesdayValidator" runat="server" ControlToValidate="ctrlTuesday"
ErrorMessage="Не указано: Tuesday" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlWednesdayLabel" runat="server" Text="Среда" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlWednesday" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlWednesdayValidator" runat="server" ControlToValidate="ctrlWednesday"
ErrorMessage="Не указано: Wednesday" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlThursdayLabel" runat="server" Text="Четверг" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlThursday" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlThursdayValidator" runat="server" ControlToValidate="ctrlThursday"
ErrorMessage="Не указано: Thursday" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlFridayLabel" runat="server" Text="Пятница" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlFriday" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlFridayValidator" runat="server" ControlToValidate="ctrlFriday"
ErrorMessage="Не указано: Friday" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlSaturdayLabel" runat="server" Text="Суббота" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlSaturday" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlSaturdayValidator" runat="server" ControlToValidate="ctrlSaturday"
ErrorMessage="Не указано: Saturday" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>
<div class="clearfix">
  <asp:Label CssClass="descLbl" ID="ctrlSundayLabel" runat="server" Text="Воскресенье" EnableViewState="False">
</asp:Label>
<ac:MasterEditorAjaxLookUp ID="ctrlSunday" CssClass="descTxt" runat="server" ShowInThickBox="True" Autocomplete="true" />

<asp:RequiredFieldValidator ID="ctrlSundayValidator" runat="server" ControlToValidate="ctrlSunday"
ErrorMessage="Не указано: Sunday" EnableClientScript="true" ValidationGroup="savedoc">*</asp:RequiredFieldValidator>

</div>

</div>
<!-- autogenerated end -->
            <%-- Autogenerated section end [Controls] --%>
        </div>
    </div>
</asp:Content>
