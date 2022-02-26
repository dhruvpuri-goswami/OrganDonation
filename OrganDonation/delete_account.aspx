<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="delete_account.aspx.cs" Inherits="delete_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row contact-rooo no-margin">
        <div class="container">
            <div class="row">
                <div style="padding:20px" class="col-sm-7">
                    <h2 >Remove Account</h2> <br>
                    
                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Mobile no.</label><span>:</span></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_mobile_no" runat="server" placeholder="Enter Mobile Number" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                           
                        </div>
                    </div>

                    <div  class="row cont-row">
                        <div  class="col-sm-3"><label>Password</label><span>:</span></div>
                        <div class="col-sm-6"><asp:TextBox ID="txt_password" runat="server" TextMode="password" placeholder="Enter Password" class="form-control input-sm"></asp:TextBox></div>
                        <div class="col-sm-3">
                            <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                           
                        </div>
                    </div>

                     <div  class="row cont-row">
                        <div class="col-sm-3">
                            <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                           
                        </div>
                    </div>

                    <div style="margin-top:10px;" class="row">
                        <div style="padding-top:10px;" class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <asp:Button ID="btn_delete" runat="server" Text="Delete Account"  class="btn btn-primary btn-sm" OnClick="btn_delete_account"/>
                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-primary btn-sm" OnClick="btn_cancel_Click" CausesValidation="False" />                                           
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

