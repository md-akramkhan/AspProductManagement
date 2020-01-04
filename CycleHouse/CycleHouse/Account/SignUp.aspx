<%@ Page Title="" Language="C#" MasterPageFile="~/CycleHouse.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CycleHouse.Account.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">]
    <div class="container">
        <h4>Sign Up Here</h4>
        <br />
        <div class="row text-left">
            <div class="col-sm-6">

                <div class="form-group">
                    <asp:Label ID="EmailLabel" runat="server" CssClass="control-label col-sm-4" Text="Email"></asp:Label>

                    <div class="col-sm-8">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                
                <div class="form-group">
                    <asp:Label ID="PasswordLabel" runat="server" CssClass="control-label col-sm-4" Text="Password"></asp:Label>

                    <div class="col-sm-8">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
    
                <div class="form-group">
                    <asp:Label ID="ConfirmPasswordLabel" runat="server" CssClass="control-label col-sm-4" Text="Confirm Password"></asp:Label>

                    <div class="col-sm-8">
                        <asp:TextBox ID="ConfirmPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
               
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-10">
                        <asp:Button ID="SignUp" runat="server" OnClick="SignUp_Click" Text="Sign Up" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
