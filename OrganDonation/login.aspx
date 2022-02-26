<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row contact-rooo no-margin">
        <div class="container">
            <div class="row">
                <div style="padding:20px" class="col-sm-7">
                    <h2 >Login Form</h2> <br>
                    
                    <div  class="row cont-row">
                         <div  class="col-sm-3"><label>Email Address </label><span>:</span></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_email_id1" runat="server" placeholder="Enter Email Address" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            <asp:RequiredFieldValidator ID="txt_vemail1" runat="server" ErrorMessage="Email Id Required" Display="Dynamic" SetFocusOnError="True" ControlToValidate="txt_email_id1" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="txt_vremail1" runat="server" ErrorMessage="Email Id Invalid" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt_email_id1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                 
                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Password</label><span>:</span></div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_password1" runat="server" TextMode="Password" placeholder="Enter Password" class="form-control input-sm"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="txt_vpassword1" runat="server" ErrorMessage="Password Required" ControlToValidate="txt_password1" Display="Dynamic" SetFocusOnError="True" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div style="margin-top:10px;" class="row">
                        <div style="padding-top:10px;" class="col-sm-3"><label></label></div>
                        <div class="col-sm-6">
                            <asp:Button ID="btn_login" runat="server" Text="Login" class="btn btn-primary btn-sm" OnClick="btn_login_Click"/>
                            <asp:Button ID="btn_cancel1" runat="server" Text="Cancel" class="btn btn-primary btn-sm" OnClick="btn_cancel1_Click" CausesValidation="False" />                      
                        </div>  
                        <asp:HyperLink ID="hl_forget_password" runat="server" NavigateUrl="forgot_password.aspx" Font-Underline="True" ForeColor="Blue">Forgot Password?</asp:HyperLink>
                    </div>
                    
                </div>  
            </div>
        </div>
    </div>
</asp:Content>

