<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Project_02_Web_Application_C_Sharp_07_07_24.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--CARD START-->
 <div class="container-fluid">
     <div class="row">
         <!--LEFT CARD START-->
         <div class="col-md-8">
           
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
                                 <h4>Your Profile</h4>
                                 <span></span>
                                 <asp:Label class="badge badge-pill badge-info" ID="Label1" 
                                     runat="server" Text="Active"></asp:Label>
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

                     <!--INPUT BART STARTS-->
                     <div class="row">
                         <div class="col-md-6">
                             <div class="form-group">
                                 <label>Full Name</label>
                                 <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" 
                                               placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                             </div>
                        
                             </div>
                         <div class="col-md-6">
                             <div class="form-group">
                                 <label>Date-of-Birth</label>
                                 <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                               placeholder="DDMMYYYY" TextMode="Date" ReadOnly="True"></asp:TextBox>
                             </div>
                         </div>
                     </div>

                     <div class="row">
                         <div class="col-md-6">
                             <div class="form-group">
                                 <label>Contact</label>
                                 <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" 
                                               placeholder="Phone Number" TextMode="Number"></asp:TextBox>
                             </div>
                        
                             </div>
                         <div class="col-md-6">
                             <div class="form-group">
                                 <label>Email ID</label>
                                 <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" 
                                               placeholder="Email ID" TextMode="SingleLine"></asp:TextBox>
                             </div>
                         </div>
                     </div>

                     <div class="row">
                         <div class="col-md-4">
                             <div class="form-group">
                                 <label>Sate</label>
                                 <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                     <asp:ListItem Text="select" Value="select"/>
                                     <asp:ListItem Text="select" Value="select"/>
                                     <asp:ListItem Text="select" Value="select"/>
                                 </asp:DropDownList>
                             </div>
                        
                             </div>
                         <div class="col-md-4">
                             <div class="form-group">
                                 <label>City</label>
                                 <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" 
                                               placeholder="City" TextMode="SingleLine"></asp:TextBox>
                             </div>
                         </div>
                         <div class="col-md-4">
                             <div class="form-group">
                                 <label>Pincode</label>
                                 <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" 
                                               placeholder="Pincode" TextMode="Number"></asp:TextBox>
                             </div>
                       </div>
                     </div>

                     <div class="row">
                         <div class="col">
                             <label>Full Address</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                               placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                             </div>
                         </div>
                     </div>

                             <!--BUTTONS START-->
                             <div class="row">
                                 <div class="col-4 mx-auto">
                                     <center>
                                         <div class="form-group">
                                             <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" 
                                                 runat="server" Text="Update" />
                                         </div>
                                     </center>
                                 </div>
                             </div>
                             <!--BUTTONS END-->

                         </div>
                         <!--INPUT BARS END-->

                     </div>
                 </div>
          <!--LEFT CARD END-->

         <!--RIGTH CARD START-->
         <div class="col-md-4">
           
             <div class="card">
                 <div class="card-body">
                     <!--Img-->
                     <div class="row">
                         <div class="col">
                             <center>
                                 <img src="imgs/250x250%20Sample.png" />
                             </center>
                         </div>
                     </div>

                     <!--Title-->
                     <div class="row">
                         <div class="col">
                             <center>
                                 <h4>Insert Text</h4>
                                 <span></span>
                                 <asp:Label class="badge badge-pill badge-info" ID="Label2" 
                                     runat="server" Text="title"></asp:Label>
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

                     <div class="row">
                         <div class="col">
                             <asp:GridView class="table-dark" 
                                 ID="GridView1" runat="server"></asp:GridView>
                         </div>
                     </div>

                     </div>
                 </div>
     </div>
 </div>
<!--CARD END-->
</asp:Content>
