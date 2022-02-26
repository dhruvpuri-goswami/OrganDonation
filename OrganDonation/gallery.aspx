<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--  ************************* Page Title Starts Here ************************** -->
        
    <div class="container">
         		<div class="row session-title">
        			<h2>Gallery </h2>
        			<p>Take a look at what people say about us </p>
        		</div>
    </div>
     	
 <!--  ************************* Gallery Starts Here ************************** -->
    
        <div id="portfolio" class="gallery">    
           <div class="container">
              
              <div class="row">
        <br/>
            <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter hdpe">
                <img src="assets/images/events/gallary-1.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter sprinkle">
                <img src="assets/images/events/gallary-2.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter hdpe">
                <img src="assets/images/events/image_01.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter irrigation">
                <img src="assets/images/events/image_03.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter spray">
                <img src="assets/images/events/image_04.jpg" class="img-responsive">
            </div>

          

            <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter spray">
                <img src="assets/images/events/image_05.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter irrigation">
                <img src="assets/images/events/image_06.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-3 col-xs-6 filter irrigation">
                <img src="assets/images/events/image_07.jpg" class="img-responsive">
            </div>

            
        </div>
    </div> 
       </div>
        <!-- ######## Gallery End ####### -->    

</asp:Content>

