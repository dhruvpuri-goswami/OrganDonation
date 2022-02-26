<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="request_organ.aspx.cs" Inherits="request_organ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -webkit-box-flex: 0;
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row contact-rooo no-margin">
        <div class="container">
            <div class="row">

                <div style="padding:20px" class="col-sm-9">
                    <h2 >Request for organ</h2> <br>             
                    <div class="row cont-row">    
                         <div  class="col-sm-3"><label>Name </label><span>:</span></div>
                         <div class="col-sm-6"> <asp:TextBox ID="txt_name" runat="server" placeholder="Enter Name" class="form-control input-sm"></asp:TextBox></div>
                        
                         <div class="col-sm-3">
                             <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                             <asp:RequiredFieldValidator ID="txt_vname" runat="server" ErrorMessage="Name Required" Display="Dynamic" ControlToValidate="txt_name" SetFocusOnError="True" Font-Overline="False" Text="Name Required" ForeColor="Red"></asp:RequiredFieldValidator></div>    
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

                    <div class="row cont-row">
                         
                         <div  class="col-sm-3"><label>City</label><span>:</span></div>
                         <div class="col-sm-6"> <asp:TextBox ID="txt_city" runat="server" placeholder="Enter City" class="form-control input-sm"></asp:TextBox></div>
                        
                         <div class="col-sm-3">
                             <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name Required" Display="Dynamic" ControlToValidate="txt_name" SetFocusOnError="True" Font-Overline="False" Text="Name Required" ForeColor="Red"></asp:RequiredFieldValidator></div>    
                    </div>
                    <div class="row cont-row">
                         
                         <div  class="col-sm-3"><label>State</label><span>:</span></div>
                         <div class="col-sm-6"> <asp:TextBox ID="txt_state" runat="server" placeholder="Enter State" class="form-control input-sm"></asp:TextBox></div>
                        
                         <div class="col-sm-3">
                             <asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Name Required" Display="Dynamic" ControlToValidate="txt_name" SetFocusOnError="True" Font-Overline="False" Text="Name Required" ForeColor="Red"></asp:RequiredFieldValidator></div>    
                    </div>
                     <div class="row cont-row">
                         <div class="col-sm-3"><label>Enter Organ you want</label><span>:</span></div>
                         <div class="col-sm-6"><asp:TextBox ID="organ_want" runat="server" placeholder="Enter organ you want" class="form-control input-sm"></asp:TextBox></div>
                     </div>
                         
                         
                         
                        
                         <div class="auto-style1">
                             <asp:Label ID="Label17" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                        </div>                      
                    </div>
                     <div style="margin-top:10px;" class="row">
                        <div style="padding-top:10px;" class="col-sm-3"><label></label></div>
                        <div class="col-sm-6">
                            <asp:Button ID="btn_request" runat="server" Text="Request" class="btn btn-primary btn-sm" OnClick="btn_request_Click" CausesValidation="False" />
                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-primary btn-sm" OnClick="btn_cancel_Click" CausesValidation="False" />                      
                            
                        </div>
                         <asp:Label runat="server" Text="* Field Are Mandatory" ForeColor="Red"></asp:Label>
                         <br />
                         &nbsp;<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                             <EditRowStyle BackColor="#999999" />
                             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#E9E7E2" />
                             <SortedAscendingHeaderStyle BackColor="#506C8C" />
                             <SortedDescendingCellStyle BackColor="#FFFDF8" />
                             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                         </asp:GridView>
                    </div>
                  
                </div>
            </div>       
        </div>
</asp:Content>

