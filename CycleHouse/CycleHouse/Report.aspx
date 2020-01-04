<%@ Page Title="" Language="C#" MasterPageFile="~/CycleHouse.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="CycleHouse.Report" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="aspnet_client/system_web/4_0_30319/crystalreportviewers13/js/crviewer/crv.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <asp:DropDownList ID="ddlCompanyName" runat="server" DataSourceID="sdsCycleCompany" DataTextField="CompanyName" DataValueField="CompanyName">
        
    </asp:DropDownList>

    <asp:SqlDataSource ID="sdsCycleCompany" runat="server" ConnectionString="<%$ ConnectionStrings:CycleHouseConnectionString %>" SelectCommand="SELECT DISTINCT [CompanyName] FROM [tblProduct]"></asp:SqlDataSource>
    <asp:Button runat="server" id="btnSave" text="Show" OnClick="btnSave_Click" />
    <CR:CrystalReportViewer ID="crvCycleType" runat="server" AutoDataBind="true" />
</asp:Content>
