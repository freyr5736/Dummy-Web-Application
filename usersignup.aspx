<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Project_02_Web_Application_C_Sharp_07_07_24.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <!--CARD START-->
    <div class="container mt-4">
        <div class="row">
            <!--LOGIN CARD START-->
            <div class="col-md-8 mx-auto">
             
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
                                    <h4>User Sign Up</h4>
                                </center>
                            </div>
                        </div>

                        <!--Indent Line Start-->
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <!--Indent Line End-->

                        <!--INPUT BARS STARTS-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox_FullName" runat="server" 
                                                  placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date-of-Birth</label>
                                    <!-- Removed placeholder for native date picker -->
                                    <asp:TextBox CssClass="form-control" ID="TextBox_Date" runat="server" 
                                                  TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Contact</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox_Contact" runat="server" 
                                                  placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email ID</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox_EmailID" runat="server" 
                                                  placeholder="Email ID" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList_State" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        <asp:ListItem Text="Select" Value="select"/>
                                        <asp:ListItem Text="New York" Value="NY"/>
                                        <asp:ListItem Text="California" Value="CA"/>
                                        <asp:ListItem Text="Texas" Value="TX"/>
                                        
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox_City" runat="server" 
                                                  placeholder="City" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pincode</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox_Pincode" runat="server" 
                                                  placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox_Address" runat="server" 
                                                  placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Member ID</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox_MemberID" runat="server" 
                                                  placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox_Password" runat="server" 
                                                  placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <!--BUTTONS START-->
                        <div class="form-group">
                            <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1"
                                        runat="server" Text="Submit" OnClick="Button1_Click" />
                        </div>
                        <!--BUTTONS END-->

                    </div>
                    <!--INPUT BARS END-->
                </div>
            </div> 
            <!--LOGIN CARD END-->

            <a href="homepage.aspx"> << Home </a> <br /><br />
        </div>
    </div>
   <!--CARD END-->

</asp:Content>
