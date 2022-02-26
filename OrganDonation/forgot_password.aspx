<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgot_password.aspx.cs" Inherits="forgot_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:Panel runat="server" ID="panel1">
     <div class="row contact-rooo no-margin">
        <div class="container">
            <div class="row">
                <div style="padding:20px" class="col-sm-7">
                    <h2 >Forgot Password</h2> <br>
                    
                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Mobile Number</label></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_mobile_no" runat="server" placeholder="Enter Mobile Number" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                           
                        </div>
                    </div>
                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Security Question 1</label></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_answer" runat="server" placeholder="Enter Your First School Name ?" TextMode="singleline" class="form-control input-sm"></asp:TextBox></div>   
                        <div class="col-sm-3">
                            <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Answer" ControlToValidate="txt_answer" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                         </div>
                         <div  class="col-sm-3"><label>Security Question 2</label></div>             
                        <div class="col-sm-6"><asp:TextBox ID="txt_ans" runat="server" placeholder="What is your Nick Name ?" TextMode="singleline" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Answer" ControlToValidate="txt_ans" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                        </div>
                    </div>

                    <div style="margin-top:10px;" class="row">
                        <div style="padding-top:10px;" class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <asp:Button ID="btn_forgot" runat="server" Text="Reset Password" class="btn btn-primary btn-sm" OnClick="btn_forgot_click"/>
                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-primary btn-sm" OnClick="btn_cancel_Click" CausesValidation="False" />                                           
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
 </asp:Panel>
  <asp:Panel runat="server" ID="panel2" Visible="false">
      <div class="row contact-rooo no-margin">
        <div class="container">
            <div class="row">
                <div style="padding:20px" class="col-sm-7">
                    <h2 >Reset Password</h2> <br>
       <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Password</label><span>:</span></div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password" placeholder="Enter New Password" class="form-control input-sm"></asp:TextBox>
                            
                        </div>
                        
                        <div class="col-sm-3"><asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                            <asp:RequiredFieldValidator ID="txt_vpassword" runat="server" ErrorMessage="Password Required" ControlToValidate="txt_password" Display="Dynamic" SetFocusOnError="True" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator></div>
                    </div>
                    
                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Confirm Password</label><span>:</span></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_confirm_password" runat="server" placeholder="Re-enter New Password" TextMode="Password" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label>
                            <asp:RequiredFieldValidator ID="txt_vconfirm_password" runat="server" ErrorMessage="Confirm The Password" ControlToValidate="txt_confirm_password" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="txt_vcpassword" runat="server" ErrorMessage="Password Not Match" ControlToValidate="txt_confirm_password" ControlToCompare="txt_password" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                        </div>
                    </div>
                    <div style="margin-top:10px;" class="row">
                        <div style="padding-top:10px;" class="col-sm-3"><label></label></div>
                        <div class="col-sm-6">
                            <asp:Button ID="btn_reset" runat="server" Text="Reset Password" class="btn btn-primary btn-sm" OnClick="btn_reset_Click"/>
                            <asp:Button ID="Button1" runat="server" Text="Cancel" class="btn btn-primary btn-sm" OnClick="btn_cancel_Click" CausesValidation="False" />                      
                        </div>
                         <asp:Label ID="Label1" runat="server" Text="* Field Are Mandatory" ForeColor="Red"></asp:Label>
                    </div>
                    </div>
                </div>
            </div>
          </div>
  </asp:Panel>
</asp:Content>

