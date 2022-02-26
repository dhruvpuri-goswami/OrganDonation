<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--  ************************* Page Title Starts Here ************************** -->
        
   <div class="container">
         		<div class="row session-title">
        			<h2>Contact Us</h2>
        			
        		</div>
    </div>
    
  <!--  ************************* Contact Us Starts Here ************************** -->


    <div style="margin-top:0px;" class="row no-margin">

        <iframe style="width:100%" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d249759.19784092825!2d79.10145254589841!3d12.009924873581818!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1448883859107"  height="450" frameborder="0" style="border:0" allowfullscreen></iframe>


    </div>

    <div class="row contact-rooo no-margin">
        <div class="container">
            <div class="row">


                <div style="padding:20px" class="col-sm-7">
                    <h2 ><b>Contact Form</b></h2> <br>
                    <div class="row cont-row">
                        
                         <div  class="col-sm-3"><label>Enter Name </label><span>:</span></div>
                         <div class="col-sm-6"> <asp:TextBox ID="txt_name" runat="server" placeholder="Enter Name" class="form-control input-sm"></asp:TextBox></div>
                        
                         <div class="col-sm-3">
                             <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                             <asp:RequiredFieldValidator ID="txt_vname" runat="server" ErrorMessage="Name Required" Display="Dynamic" ControlToValidate="txt_name" SetFocusOnError="True" Font-Overline="False" Text="Name Required" ForeColor="Red"></asp:RequiredFieldValidator></div>    
                    </div>
                    <div  class="row cont-row">
                         <div  class="col-sm-3"><label>Email Address </label><span>:</span></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_email_id" runat="server" placeholder="Enter Email Address" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                            <asp:RequiredFieldValidator ID="txt_vemail" runat="server" ErrorMessage="Email Id Required" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txt_email_id" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="txt_vremail" runat="server" ErrorMessage="Email Id Invalid" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt_email_id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        
                    </div>
                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Mobile Number</label><span>:</span></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_mobile_no" runat="server" placeholder="Enter Mobile Number" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            
                            <asp:RegularExpressionValidator ID="txt_vrmobileno" runat="server" ErrorMessage="Invalid Mobile Number" ControlToValidate="txt_mobile_no" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^[1-9]{1}[0-9]{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row cont-row">
                        
                         <div  class="col-sm-3"><label>Message</label><span>:</span></div>
                        <div class="col-sm-6"> <asp:TextBox ID="txt_message" runat="server" placeholder="Enter Message" class="form-control input-sm" TextMode="MultiLine"></asp:TextBox></div>
                        <div class="col-sm-3"><asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                            <asp:RequiredFieldValidator ID="txt_vaddress" runat="server" ErrorMessage="Address Required" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txt_message" ForeColor="Red"></asp:RequiredFieldValidator></div>
                    </div>
                    <div style="margin-top:10px;" class="row">
                        <div style="padding-top:10px;" class="col-sm-3"><label></label></div>
                        <div class="col-sm-8">
                            <asp:Button ID="btn_send_message" class="btn btn-primary btn-sm" runat="server" OnClick="btn_send_message_Click" Text="Send Message" />
                             <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-primary btn-sm" OnClick="btn_cancel_Click" CausesValidation="False" />   
                        </div>
                    </div>
                </div>
                <div class="col-sm-5">

                    <div style="margin:50px" class="serv">

                        <h2 style="margin-top:10px;">Address</h2>

                       <address class="md-margin-bottom-40">
                        Caritas Organization <br>
                        Rander, Surat<br>
                        Gujarat, India <br>
                        Phone: +91 +91 987 666 5433 <br>
                        Email: caritas@gmail.com<br>
                        Web: www.Caritas.in
                    </address>






                    </div>


                </div>

            </div>
        </div>

    </div>
  
</asp:Content>

