<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="moddetail.aspx.cs" Inherits="Project_02_Web_Application_C_Sharp_07_07_24.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(".table").find("tr:first"))).dataTables();
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--CARD START-->
    <div class="container">
        <div class="row">
            <!--LEFT CARD START-->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <!--Title-->
                        <div class="row">
                            <div class="col">
                                <center><h4>Mod Details</h4></center>
                            </div>
                        </div>

                        <!--Img-->
                        <div class="row">
                            <div class="col">
                                <center><img src="imgs/100x100%20Sample.png" /></center>
                            </div>
                        </div>

                        <!--Indent Line Start-->
                        <div class="row">
                            <div class="col"><hr /></div>
                        </div>
                        <!--Indent Line End-->

                        <!--INPUT BAR STARTS-->
                        <div class="row">
                            <div class="col-md-4">
                                <label>Mod Code</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox_ModID" runat="server" 
                                                     placeholder="E123GH" ReadOnly="False"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Mod_Go_btn" runat="server" Text="Go" OnClick="Mod_Go_btn_Click" />
                                    </div>
                                </div>                       
                            </div>

                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Mod Name</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox_ModName" runat="server" 
                                                 placeholder="Moderator Name" TextMode="SingleLine" ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <!--BUTTONS START-->
                        <div class="row">
                            <div class="col-4 ">
                                <asp:Button class="btn btn-lg btn-block btn-success" ID="Mod_Add_btn"
                                    runat="server" Text="Add" OnClick="Mod_Add_btn_Click" />
                            </div>
                            <div class="col-4 ">
                                <asp:Button class="btn btn-lg btn-block btn-warning" ID="Mod_Update_btn"
                                    runat="server" Text="Update" OnClick="Mod_Update_btn_Click" />
                            </div>
                            <div class="col-4 ">
                                <asp:Button class="btn btn-lg btn-block btn-danger" ID="Mod_Delete_btn"
                                    runat="server" Text="Delete" OnClick="Mod_Delete_btn_Click" />
                            </div>
                        </div>
                        <!--BUTTONS END-->

                    </div>
                </div>
            </div>
            <!--LEFT CARD END-->

            <!--RIGHT CARD START-->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <!--Title-->
                        <div class="row">
                            <div class="col">
                                <center><h4>Mod List</h4></center>
                            </div>
                        </div>

                        <!--Indent Line Start-->
                        <div class="row">
                            <div class="col"><hr /></div>
                        </div>
                        <!--Indent Line End-->

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project_02_DBConnectionString %>" 
                                               ProviderName="<%$ ConnectionStrings:Project_02_DBConnectionString.ProviderName %>" 
                                               SelectCommand="SELECT * FROM [moddb]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView CssClass="table table-dark"
                                              ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                              AutoGenerateColumns="False" DataKeyNames="mod_id">
                                    <Columns>
                                        <asp:BoundField DataField="mod_id" HeaderText="Mod ID" ReadOnly="True" SortExpression="mod_id"></asp:BoundField>
                                        <asp:BoundField DataField="mod_name" HeaderText="Mod Name" SortExpression="mod_name"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--RIGHT CARD END-->
        </div>
    </div>
    <!--CARD END-->
</asp:Content>
