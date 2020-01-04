<%@ Page Title="" Language="C#" MasterPageFile="~/CycleHouse.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="CycleHouse.Products.Products" %>

<%@ Register Src="~/WUCCycleHouse.ascx" TagPrefix="uc1" TagName="WUCCycleHouse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <uc1:WUCCycleHouse runat="server" id="WUCCycleHouse" />
</asp:Content>
