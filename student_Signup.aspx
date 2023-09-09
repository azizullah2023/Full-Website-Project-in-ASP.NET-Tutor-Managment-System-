<%@ Page Title="" Language="C#" MasterPageFile="~/FWP_Site1.Master" AutoEventWireup="true" CodeBehind="student_Signup.aspx.cs" Inherits="FUll_Website_Project.student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container" style="box-shadow:2px 2px 6px rgba(0,0,0,0.6)">
        <br />
<div class="row" >
    <div class="col-md-12" >
        <h1 class="jumbotron bg-primary text-white text-center" >Student SignUp</h1>

        
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:TextBox ID="nameTextBox" placeholder="Enter Name" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="nameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your name is required"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="fathernameTextBox" placeholder="Enter FatherName" CssClass="form-control" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="fathernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your fathername is required"></asp:RequiredFieldValidator>

            <br />
            <asp:TextBox ID="surnameTextBox" placeholder="Enter SurName" CssClass="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="surnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your Surname is required"></asp:RequiredFieldValidator>
        
            <br />
            <asp:DropDownList ID="genderDropDownList" CssClass="form-control" runat="server">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="genderDropDownList" SetFocusOnError="true" Display="Dynamic"  InitialValue="Select Gender" runat="server" ErrorMessage="Your Gender Is Required"></asp:RequiredFieldValidator>     
            <br />
            <asp:TextBox ID="ageTextBox" placeholder="Enter Age" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="ageTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your age is required"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" ControlToValidate="ageTextBox" Type="Integer" MinimumValue="6" MaximumValue="40" runat="server" ErrorMessage="Age should be 6 to 40"></asp:RangeValidator>
            <br />
                <asp:TextBox ID="CountryTextBox" placeholder="Enter Country Name" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your Country name is required"></asp:RequiredFieldValidator>

        </div>

        <div class="col-md-4">
                <asp:TextBox ID="cityTextBox" placeholder="Enter City Name" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="cityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your City name is required"></asp:RequiredFieldValidator>
           
            <br />
                       <asp:TextBox ID="adrressTextarea" TextMode="MultiLine" Rows="3" Columns="8" placeholder="Enter Your Address ..." CssClass="form-control" style="resize:none;" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="adrressTextarea" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your Adrress is required"></asp:RequiredFieldValidator>
          
            <br />   
            <asp:TextBox ID="standardTextBox" placeholder="Enter Class" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="standardTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your Standard is required"></asp:RequiredFieldValidator>
          
            <br />
            <asp:DropDownList ID="goingtoDropDownList" CssClass="form-control" runat="server">
                <asp:ListItem>Select Going TO</asp:ListItem>
                <asp:ListItem>School</asp:ListItem>
                <asp:ListItem>College</asp:ListItem>
                <asp:ListItem>University</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
                       <asp:RequiredFieldValidator InitialValue="Select Going TO" ID="RequiredFieldValidator10" ControlToValidate="goingtoDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your GoingTO is required"></asp:RequiredFieldValidator>

            <br />
                        <asp:TextBox ID="subjectTextBox" placeholder="Enter Subject You Want To Explore" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="subjectTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your Subject is required"></asp:RequiredFieldValidator>

     
        </div>
        <div class="col-md-4">
             <asp:TextBox ID="contactTextBox" placeholder="Enter Your Phone no" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="contactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your Contact no is required"></asp:RequiredFieldValidator>
      
            <br />
            <asp:DropDownList ID="TutiontypeDropDownList" CssClass="form-control" runat="server">
    <asp:ListItem>Select Tution Type</asp:ListItem>
    <asp:ListItem>Online</asp:ListItem>
    <asp:ListItem>Physical</asp:ListItem>
</asp:DropDownList>
            <asp:RequiredFieldValidator  InitialValue="Select Tution Type" ID="RequiredFieldValidator12" ControlToValidate="TutiontypeDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your Tution Type is required"></asp:RequiredFieldValidator>

<br />
<asp:DropDownList ID="tutorpreferedDropDownList" CssClass="form-control" runat="server">
    <asp:ListItem>Select Tutor Prefered</asp:ListItem>
        <asp:ListItem>Graduate </asp:ListItem>
    <asp:ListItem>Master </asp:ListItem>
    <asp:ListItem>MPHIL</asp:ListItem>
    <asp:ListItem>PHD</asp:ListItem>
</asp:DropDownList>
             <asp:RequiredFieldValidator  InitialValue="Select Tutor Prefered" ID="RequiredFieldValidator13" ControlToValidate="tutorpreferedDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your Tutor Preference is required"></asp:RequiredFieldValidator>
        
            <br />
            <asp:TextBox ID="usernameTextBox" placeholder="Enter Your Username" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="usernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your username is required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="usernameTextBox" SetFocusOnError="true" Display="Dynamic" ForeColor="Red" runat="server" ErrorMessage="Enter the correct Username"></asp:RegularExpressionValidator>     
            <br />
                        <asp:TextBox ID="PasswordTextBox" TextMode="Password" placeholder="Enter Password" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Your Password is required"></asp:RequiredFieldValidator>
           
            <br />
                        <asp:TextBox ID="ConfirmPasswordTextBox" TextMode="Password" placeholder="Re-Enter Password" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  runat="server" ErrorMessage="Please Re-Enter Your Password"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"  runat="server" ErrorMessage="Wrong Password"></asp:CompareValidator>


        </div>

    </div>
   
</div>
        <br />
         <div class="row">
     <div class="col-md-6 mx-auto">
         <asp:Button ID="studentsignupbtn" OnClick="studentsignupbtn_Click" CssClass="btn btn-primary btn-block" runat="server" Text="SignUp" />
     </div>
 </div>
 <br />
                <div class="row">
            <div class="col-md-6 mx-auto text-center" >
<a href="student_Signup.aspx" class="btn btn-success ">SignUP As Student </a>
<a href="tutor_signup.aspx"  class="btn btn-info">SignUP As Tutor </a>
            </div>
        </div>
        <br />
</div>
    <br />
</div>
    <br />
</asp:Content>
