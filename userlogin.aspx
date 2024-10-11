<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Project_02_Web_Application_C_Sharp_07_07_24.UserLogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


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
                                    <h3>User Login</h3>
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
                                    <label>User ID</label>
                                    <asp:TextBox CssClass="form-control" ID="MemberIdInput_TextBox" runat="server"
                                        placeholder="User ID" ></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox CssClass="form-control" ID="MemberPwInput_TextBox" runat="server" 
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <!--BUTTONS START-->
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1"
                                        runat="server" Text="LogIn" OnClick="Button1_Click" />
                                </div>


                                <div class="form-group">
                                    <a href="usersignup.aspx">
                                        <input class="btn btn-info btn-block btn-lg" 
                                        id="Button2" type="button" value="SignUp" />
                                    </a>
                                </div> 

                                <div class="form-group">
                                    <asp:Button class="btn btn-block btn-lg" ID="Button3"
                                        runat="server" Text="Admin LogIn" OnClick="Button3_Click" />
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
