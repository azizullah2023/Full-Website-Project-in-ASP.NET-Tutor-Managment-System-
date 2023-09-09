<%@ Page Title="" Language="C#" MasterPageFile="~/FWP_Site1.Master" AutoEventWireup="true" CodeBehind="tutor_login.aspx.cs" Inherits="FUll_Website_Project.tutor_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
       <br /> <br />
    <div class="container heighti" >
    <div class="row" >
        <div class="col-md-5 mx-auto" style="box-shadow: -2px 2px 29px 1px rgb(0, 0, 0,0.4);" >
           <br /> 
            <div class="jumbotron text-center text-white bg-primary" >
               <br /> <br />
                <h1>Tutor Login </h1>
                
            </div>
            <br /> 
            <asp:TextBox ID="usernameTextBox" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ForeColor="Red" Display="Dynamic" ControlToValidate="usernameTextBox"  ErrorMessage="enter your Username" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br /> <br /> 
            <asp:TextBox ID="passwordTextBox" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ForeColor="Red" Display="Dynamic" ControlToValidate="passwordTextBox"  ErrorMessage="enter your Username" SetFocusOnError="True"></asp:RequiredFieldValidator>

            <br /> <br /> 
            <asp:Button ID="tutorloginbtn"  OnClick="tutorloginbtn_Click"  Class="btn btn-block btn-primary btn-hover" runat="server" Text="Login" />
           <div  class="text-center text-primary " >
               <a href="student_login.aspx" Cssclass="text-primary " >Login AS Student</a>
           </div>
            <br />
        </div>
        <br />
    </div>
<br /><br />
</div>

</asp:Content>
