﻿<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link href="../Content/NEW.css" rel="stylesheet" />


    <h1 style="color:white"><%: Title %>.</h1>

   <div class="row" style="opacity: 1 " > 
        <div class="col-md-5"  >
             <div class="panel panel-default" style="opacity: 0.8 ; margin:5%; " > 
               <div class="panel-body"> 
                    <section id="loginForm">
                        <div class="form-horizontal">
                            <h4 style="color: black; margin-top: 5%;">Use a local account to log in.</h4>
                            <hr />
                            <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                                <p class="text-danger">
                                    <asp:Literal runat="server" ID="FailureText" />
                                </p>
                            </asp:PlaceHolder>


                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="IdNumber" CssClass="col-md-2 control-label"> Id Number </asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox runat="server" ID="IdNumber" CssClass=" form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="IdNumber"
                                        CssClass="text-danger" ErrorMessage="The email field is required." />
                                </div>
                            </div>


                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label" >Password</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-offset-2 col-md-10">
                                    <asp:Label runat="server" CssClass="text-danger" ID="ErrorLabel" Visible="false">משתמש לא קיים במערכת</asp:Label>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-offset-2 col-md-10">
                                    <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default"  />
                                </div>
                            </div>
                        </div>
                        <p>
                            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                        </p>
                        <p>
                            <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                            --%>
                        </p>
                    </section>
                </div>
            </div>
        </div> 
    </div>

</asp:Content>
