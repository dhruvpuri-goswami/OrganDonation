<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row contact-rooo no-margin">
        <div class="container">
            <div class="row">

                <div style="padding:20px" class="col-sm-9">
                    <h2 >Registration Form</h2> <br>
                    <div class="row cont-row">
                         
                         <div  class="col-sm-3"><label>Enter Name </label><span>:</span></div>
                         <div class="col-sm-6"> <asp:TextBox ID="txt_name" runat="server" placeholder="Enter Name" class="form-control input-sm"></asp:TextBox></div>
                        
                         <div class="col-sm-3">
                             <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                             <asp:RequiredFieldValidator ID="txt_vname" runat="server" ErrorMessage="Name Required" Display="Dynamic" ControlToValidate="txt_name" SetFocusOnError="True" Font-Overline="False" Text="Name Required" ForeColor="Red"></asp:RequiredFieldValidator></div>    
                    </div>
                    <div class="row cont-row">
                        
                         <div  class="col-sm-3"><label>Address</label><span>:</span></div>
                        <div class="col-sm-6"> <asp:TextBox ID="txt_address" runat="server" placeholder="Enter Address" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3"><asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                            <asp:RequiredFieldValidator ID="txt_vaddress" runat="server" ErrorMessage="Address Required" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txt_address" ForeColor="Red"></asp:RequiredFieldValidator></div>
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
                            <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                            <asp:RequiredFieldValidator ID="txt_vmobile_no" runat="server" ErrorMessage="Mobile.No Required" ControlToValidate="txt_mobile_no" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="txt_vrmobileno" runat="server" ErrorMessage="Invalid Mobile Number" ControlToValidate="txt_mobile_no" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^[1-9]{1}[0-9]{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Password</label><span>:</span></div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password" placeholder="Enter Password" class="form-control input-sm"></asp:TextBox>
                            
                        </div>
                        
                        <div class="col-sm-3"><asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                            <asp:RequiredFieldValidator ID="txt_vpassword" runat="server" ErrorMessage="Password Required" ControlToValidate="txt_password" Display="Dynamic" SetFocusOnError="True" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator></div>
                    </div>
                    
                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Confirm Password</label><span>:</span></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_confirm_password" runat="server" placeholder="Re-enter Password" TextMode="Password" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                            <asp:RequiredFieldValidator ID="txt_vconfirm_password" runat="server" ErrorMessage="Confirm The Password" ControlToValidate="txt_confirm_password" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="txt_vcpassword" runat="server" ErrorMessage="Password Not Match" ControlToValidate="txt_confirm_password" ControlToCompare="txt_password" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                        </div>
                    </div>

                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Security Question 1 :</label></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_answer" runat="server" placeholder="Enter Your First School Name ?" TextMode="singleline" class="form-control input-sm"></asp:TextBox></div>   
                        <div class="col-sm-3">
                            <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Answer" ControlToValidate="txt_answer" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                         </div>
                         <div  class="col-sm-3"><label>Security Question 2 :</label></div>             
                        <div class="col-sm-6"><asp:TextBox ID="txt_ans" runat="server" placeholder="What is your Nick Name ?" TextMode="singleline" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Answer" ControlToValidate="txt_ans" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                        </div>
                    </div>

                    <div style="margin-top:10px;" class="row">
                        <div style="padding-top:10px;" class="col-sm-3"><label></label></div>
                        <div class="col-sm-6">
                            <asp:Button ID="btn_register1" runat="server" Text="Register" class="btn btn-primary btn-sm" OnClick="btn_register1_Click"/>
                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-primary btn-sm" OnClick="btn_cancel_Click" CausesValidation="False" />                      
                        </div>
                         <asp:Label runat="server" Text="* Field Are Mandatory" ForeColor="Red"></asp:Label>
                    </div>
                    
             </div>
        </div>
       </div>
    </div>
</asp:Content>