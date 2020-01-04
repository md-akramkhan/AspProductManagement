<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WUCCycleHouse.ascx.cs" Inherits="CycleHouse.WUCCycleHouse" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="row">
            <div class="col-md-12">
                <h3 class="text-center">Product</h3>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="sdsCycleHouse" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="ProductId" HeaderText="Product Id" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                        <asp:BoundField DataField="ProductModel" HeaderText="Product Model" SortExpression="ProductModel" />
                        <asp:TemplateField HeaderText="Product Type">
                            <EditItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Vertical" RepeatLayout="Flow" SelectedValue='<%# Bind("ProductType") %>'>
                                    <asp:ListItem>Mountain Bike</asp:ListItem>
                                    <asp:ListItem>Road Bike</asp:ListItem>
                                </asp:RadioButtonList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProductType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  CausesValidation="false" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="sdsCycleHouse" runat="server" ConnectionString="<%$ ConnectionStrings:CycleHouseConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [tblProduct] ([ProductName], [ProductModel], [ProductType], [CompanyName]) VALUES (@ProductName, @ProductModel, @ProductType, @CompanyName)" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProductModel] = @ProductModel, [ProductType] = @ProductType, [CompanyName] = @CompanyName WHERE [ProductId] = @ProductId">
                    <DeleteParameters>
                        <asp:Parameter Name="ProductId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductModel" Type="String" />
                        <asp:Parameter Name="ProductType" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductModel" Type="String" />
                        <asp:Parameter Name="ProductType" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="ProductId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            <div class="col-md-12">
                <h3 class="text-center">Add New</h3>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered" AutoGenerateRows="False" DefaultMode="Insert" DataSourceID="sdsCycleHouse" DataKeyNames="ProductId">
                    <Fields>
                        <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" InsertVisible="false" SortExpression="ProductId"/>

                        <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                        <asp:BoundField DataField="ProductModel" HeaderText="Product Model" SortExpression="ProductModel" />
                        <asp:TemplateField HeaderText="Product Type">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ProductType") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Vertical" RepeatLayout="Flow" SelectedValue='<%# Bind("ProductType") %>'>
                                    <asp:ListItem>Mountain Bike</asp:ListItem>
                                    <asp:ListItem>Road Bike</asp:ListItem>
                                </asp:RadioButtonList>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProductType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>