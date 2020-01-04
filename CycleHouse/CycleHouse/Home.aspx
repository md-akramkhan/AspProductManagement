<%@ Page Title="" Language="C#" MasterPageFile="~/CycleHouse.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CycleHouse.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="col-md-12">
                    <h2 class="text-center">Welcome to Cycle House</h2>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<a href="Home.aspx">Home.aspx</a>