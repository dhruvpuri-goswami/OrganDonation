<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="add_organ.aspx.cs" Inherits="add_organ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row contact-rooo no-margin">
        <div class="container" >
            <div class="row">
                <div class="row cont-row">
                         
                         
                    </div>
                <div style="padding:20px" class="col-sm-9">
                    <h2 >Add Organ</h2> <br>
                    <div class="row cont-row">
                         <div  class="col-sm-3"><label>Organ Id</label><span>:</span></div>
                         <div class="col-sm-6"> <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Organ ID" class="form-control input-sm"></asp:TextBox></div>
                        
                         <div class="col-sm-3">
                             <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Donor Id Required" Display="Dynamic" ControlToValidate="txt_did" SetFocusOnError="True" Font-Overline="False" Text="Donor Id Required" ForeColor="Red"></asp:RequiredFieldValidator></div>    
                         <div  class="col-sm-3"><label>Organs:</label></div>
                         
                         <div class="col-sm-6"><asp:DropDownList runat="server" class="col-sm-12" id="dd_organ">
                            <asp:listitem text="All Organs" value="1"></asp:listitem>
                            <asp:listitem text="Eyes" value="Eyes"></asp:listitem>
                             <asp:listitem text="Kidneys" value="Kidneys"></asp:listitem>
                             <asp:listitem text="Heart" value="Heart"></asp:listitem>
                             <asp:listitem text="Lungs" value="Lungs"></asp:listitem>
                             <asp:listitem text="Liver" value="Liver"></asp:listitem>
                             <asp:listitem text="Blood" value="Blood"></asp:listitem>
                             <asp:listitem text="Pancreas" value="Pancrease"></asp:listitem>
                             <asp:listitem text="Skin" value="Skin"></asp:listitem>
                              <asp:listitem text="Plasma" value="Plasma"></asp:listitem>
                             </asp:DropDownList> 
                        
                         </div>
                   </div>
                    <div><br /></div>
                  <div class="row cont-row">
                         
                         <div  class="col-sm-3"><label>Hospital Id</label><span>:</span></div>
                         <div class="col-sm-6"> <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Hospital ID" class="form-control input-sm"></asp:TextBox></div>
                        
                         <div class="col-sm-3">
                             <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Donor Id Required" Display="Dynamic" ControlToValidate="txt_did" SetFocusOnError="True" Font-Overline="False" Text="Donor Id Required" ForeColor="Red"></asp:RequiredFieldValidator></div>    
                    </div>

                    <div class="row cont-row">
                         
                         <div  class="col-sm-3"><label>Donor Id</label><span>:</span></div>
                         <div class="col-sm-6"> <asp:TextBox ID="txt_did" runat="server" placeholder="Enter Donar ID" class="form-control input-sm"></asp:TextBox></div>
                        
                         <div class="col-sm-3">
                             <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Font-Bold="true"></asp:Label> 
                             <asp:RequiredFieldValidator ID="txt_vname" runat="server" ErrorMessage="Donor Id Required" Display="Dynamic" ControlToValidate="txt_did" SetFocusOnError="True" Font-Overline="False" Text="Donor Id Required" ForeColor="Red"></asp:RequiredFieldValidator></div>    
                    </div>
                    <div style="margin-top:10px;" class="row">
                        <div style="padding-top:10px;" class="col-sm-3"><label></label></div>
                        <div class="auto-style1">
                            <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary btn-sm" OnClick="btn_submit_Click"/>
                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" class="btn btn-primary btn-sm" OnClick="btn_cancel_Click" CausesValidation="False" />                      
                        </div>
                         
                         
                    </div>
                    <asp:Label ID="Label2" runat="server" Text="* Field Are Mandatory" ForeColor="Red"></asp:Label>
                    <br />
                    <br /> <div style="text-align:center; width:100%;"> 
                     <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Visible="False"></asp:Label>
                        </div>

                </div>
                
                <asp:GridView ID="gd" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1048px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            </div>
        </div>
       
        
    </div>
</asp:Content>

