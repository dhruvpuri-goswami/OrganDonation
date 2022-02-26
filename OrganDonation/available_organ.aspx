<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="available_organ.aspx.cs" Inherits="available_organ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row contact-rooo no-margin">
        <div class="container">
            <div class="row">

                <div style="padding:20px" class="col-sm-9">
                    <h2 >Available Organs</h2> <br>             
                    <div class="row cont-row">    
                         <div  class="col-sm-3"><label>Search Organ</label><span> : </span></div>
                         <div class="col-sm-6"> <asp:TextBox ID="txt_search_organ" runat="server" placeholder="Enter organ" class="form-control input-sm"></asp:TextBox></div>
                        
                         <div class="col-sm-3">
                             <asp:Button ID="btn_search" runat="server" Text="Search" class="btn btn-primary btn-sm" OnClick="btn_search_Click"/>
                             <br />
                             <br />
                             <asp:HyperLink ID="request" runat="server" NavigateUrl="~/request_organ.aspx" ForeColor="Blue" Font-Underline="True">Request An Organ</asp:HyperLink>
                             <br />
                         <br /><br />    
                            </div>
                        
                <asp:GridView ID="GridView1" runat="server" Width="740px" CellPadding="4" ForeColor="#333333" Height="150px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="None">
                             <AlternatingRowStyle BackColor="White" />
                             <EditRowStyle BackColor="#7C6F57" />
                             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#E3EAEB" />
                             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#F8FAFA" />
                             <SortedAscendingHeaderStyle BackColor="#246B61" />
                             <SortedDescendingCellStyle BackColor="#D4DFE1" />
                             <SortedDescendingHeaderStyle BackColor="#15524A" />
                         </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

