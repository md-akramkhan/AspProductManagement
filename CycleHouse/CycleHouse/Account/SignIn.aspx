<%@ Page Title="" Language="C#" MasterPageFile="~/CycleHouse.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="CycleHouse.Account.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="container">
        <h4>Sign In</h4>
        <br />
        <div class="row text-left">
            <div class="col-sm-6">

                <div class="form-group">
                    <asp:Label ID="UserNameLabel" runat="server" CssClass="control-label col-sm-4">User Name</asp:Label>
                 
                    <div class="col-sm-8">
                        <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="PasswordLabel" runat="server" CssClass="control-label col-sm-4">Password</asp:Label>
                
                    <div class="col-sm-8">
                        <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-10">
                         <asp:Button ID="SignIn" runat="server" CommandName="SignIn" Text="Sign In" ValidationGroup="SignIn1" OnClick="SignIn_Click" />
                    </div>
                </div>
            </div>
        </div> 
    </div>    
</asp:Content>
