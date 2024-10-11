<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Project_02_Web_Application_C_Sharp_07_07_24.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container-fluid p-0">
        <img src="imgs/1515x100%20Sample.png" class="img-fluid w-100" />
    </section>

    <!--FEATURE SECTION START-->
    <section class="container-fluid p-0">
        <div class="container">

            <div class="col-12">
                <center>
                    <h2>Our Features</h2>
                </center>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="imgs/250x250%20Sample.png" class="img-fluid" />
                        <h4>#1</h4>
                        <p class="text-justify">Sample Text Goes Here</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="imgs/250x250%20Sample.png" class="img-fluid" />
                        <h4>#2</h4>
                        <p class="text-justify">Sample Text Goes Here</p>
                    </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="imgs/250x250%20Sample.png" class="img-fluid" />
                        <h4>#3</h4>
                        <p class="text-justify">Sample Text Goes Here</p>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <!--FEATURE SECTION END-->

    <section class="container-fluid p-0">
        <img src="imgs/1515x100%20Sample.png" class="img-fluid w-100" />
    </section>
</asp:Content>
