<%@ Page Title="" Language="C#" MasterPageFile="~/FWP_Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FUll_Website_Project.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    
    
    
    
    <script type="text/javascript" >
        function successcontact() {
        Swal.fire(
            'Completed!',
            'Your Form Has Been Submitted!',
            'success'
            )

        }
    </script>


  
   <script type="text/javascript">
       function errorcontact() {
           Swal.fire(
               'Failed',
               'Your Form Has Failed!',
               'error'

       }

   </script>
    
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- ======= Contact Section ======= -->
<section id="contact" class="contact">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Contact</h2>
      <p>Contact Us</p>
    </div>

    <div>
      <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" allowfullscreen></iframe>
    </div>

    <div class="row mt-5">

      <div class="col-lg-4">
        <div class="info">
          <div class="address">
            <i class="bi bi-geo-alt"></i>
            <h4>Location:</h4>
            <p>Islamabad Wahcantt wahcantt OpalChowk </p>
          </div>

          <div class="email">
            <i class="bi bi-envelope"></i>
            <h4>Email:</h4>
            <p>azizullah.wah.com</p>
          </div>

          <div class="phone">
            <i class="bi bi-phone"></i>
            <h4>Call:</h4>
            <p>03495614170</p>
          </div>

        </div>

      </div>

      <div class="col-lg-8 mt-5 mt-lg-0">

        <form action="forms/contact.php" method="post" role="form" class="php-email-form">
          <div class="row">
            <div class="col-md-6 form-group">
              <%--<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>--%>
                <asp:TextBox ID="nameTextBox" class="form-control" placeholder="Your Name " runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="true" Display="Dynamic" ControlToValidate="nameTextBox" ForeColor="Red" runat="server" ErrorMessage="Please enter your name."></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6 form-group mt-3 mt-md-0">
              <%--<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>--%>
                <asp:TextBox ID="emailTextBox" class="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="true" Display="Dynamic" ControlToValidate="emailTextBox" ForeColor="Red" runat="server" ErrorMessage="Please enter your E-mail."></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="true" Display="Dynamic" ControlToValidate="emailTextBox" ForeColor="Red" runat="server" ErrorMessage="Please Enter A Correct E-mail"></asp:RegularExpressionValidator>
                </div>
          </div>
          <div class="form-group mt-3">
            <%--<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>--%>
              <%--<asp:TextBox ID="subjectTextBox" class="form-control" placeholder="Subject"  runat="server"></asp:TextBox>--%>
              <asp:DropDownList ID="SubjectDropDownList" class="form-control"  runat="server">
                  <asp:ListItem>Select Subject</asp:ListItem>
                  <asp:ListItem>Suggestion</asp:ListItem>
                  <asp:ListItem>Complain</asp:ListItem>
                  <asp:ListItem>Feedback</asp:ListItem>
              </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="Select Subject" SetFocusOnError="true" Display="Dynamic" ControlToValidate="SubjectDropDownList" ForeColor="Red" runat="server" ErrorMessage="Please Select a Subject."></asp:RequiredFieldValidator>

          </div>
          <div class="form-group mt-3">
            <%--<textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>--%>
              <asp:TextBox ID="messageTextBox" TextMode="MultiLine" Columns="50" Rows="7" class="form-control" placeholder="Message" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="true" Display="Dynamic" ControlToValidate="messageTextBox" ForeColor="Red" runat="server" ErrorMessage="Please Enter your Message."></asp:RequiredFieldValidator>
          </div>
          <div class="my-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your message has been sent. Thank you!</div>
          </div>
          <div class="text-center"> <asp:Button ID="submitbtn" Class="btn btn-info btn-hover" runat="server" Text="submit" OnClick="submitbtn_Click" /></div>

        </form>

      </div>

    </div>

  </div>
</section><!-- End Contact Section -->
    
    
</asp:Content>
