<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Project_02_Web_Application_C_Sharp_07_07_24.AdminLogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--CARD START-->
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <!--LOGIN CARD START-->
                <div class="card">
                    <div class="card-body">
                        <!--Img-->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/100x100%20Sample.png" />
                                </center>
                            </div>
                        </div>

                        <!--Title-->
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>

                        <!--Indent Line-->
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <!--INPUT BARS START-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="AdminIdInput_TextBox" runat="server" placeholder="Admin ID"></asp:TextBox>
                                </div>

                                <div class="form-group">                                    
                                    <asp:TextBox CssClass="form-control" ID="AdminPwInput_TextBox" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <!--BUTTONS START-->
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="LogIn" OnClick="Button1_Click" />
                                </div>
                                <!--BUTTONS END-->
                            </div>
                            <!--INPUT BARS END-->
                        </div>
                    </div>
                </div>
                <!--LOGIN CARD END-->

                <a href="homepage.aspx"> << Home </a> <br /><br />
            </div>
        </div>
    </div>
    <!--CARD END-->
</asp:Content>
