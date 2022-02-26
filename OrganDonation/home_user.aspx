<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="home_user.aspx.cs" Inherits="home_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="slider">
        <!-- Set up your HTML -->
        <div class="owl-carousel ">
            <div class="slider-img">
                <div class="item">
                    <div class="slider-img"><img src="assets/images/slider/slider-7.jpg" alt=""></div>
                    
                </div>
            </div>
            <div class="item">
                <div class="slider-img"><img src="assets/images/slider/slider-5.jpg" alt=""></div>
                
            </div>
            <div class="item">
                <div class="slider-img"><img src="assets/images/slider/slider-6.jpg" alt=""></div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">
                            <div class="slider-captions ">
                                <h1 class="slider-title">Live Life Then Give Life</h1>
                                <p class="slider-text hidden-xs">You Where Born With The Ability To Change Someone's Life. Don't Ever Waste It.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  ************************* About Us Starts Here ************************** -->    
       
<div class="about-us container-fluid">
    <div class="container">

        <div class="row natur-row no-margin w-100">
            <div class="text-part col-md-6">
                <h2>About Our Donation</h2>
                <p>Organ donation is the entire practice of retrieving a human organ from a living or deceased person, 
                   who is referred to as a donor, and transplanting it into a recipient. The recipient 
                   will be a patient who is suffering from organ failure and who will not 
                   survive unless he/she receives an organ replacement. 
                   The process of recovering organs is called Retrieval.</p>
                   
                <p>Unfortunately, mostly due to awareness and prejudices, there is huge shortage of organs that needed for transplant. 
                    It is estimated that the total number of brain stem deaths due to accidents in India is nearly 15 lakhs annually.
                    Other causes of brain stem deaths would potentially add many more numbers. However, our organ donation rate is 0.86 per million population. The total number of deceased donors in India in 2017 was only 905. 
                    Contrast that to the demand for human organ donation. There is a need of approximately 5 lakh organ annually 
                    Barely 2-3% of demand is met, and many people die of organ failure every year across India.</p>

                </div>
            <div class="image-part col-md-6">
                <div class="about-quick-box row">
                    <div class="col-md-6">
                        <div class="about-qcard">
                           <i class="fas fa-user"></i>
                            <p>Refer And Get Benefit</p>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="about-qcard ">
                           <i class="fas fa-search-dollar red"></i>
                            <p>Quick Search</p>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="about-qcard ">
                           <i class="fas fa-donate yell"></i>
                            <p>Give Donation</p>
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="about-qcard ">
                           <i class="fas fa-hands-helping blu"></i>
                            <p>Help Someone</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>   
    <!-- ################# Mission Vision Start Here #######################--->
  
  <section class="container-fluid mission-vision">
      <div class="container">
          <div class="row mission">
              <div class="col-md-6 mv-det">
                  <h1>Our Mission</h1>
                    "Not everyone has the chance to save a life of someone"
                     </br>Our main aims are:
                  <ul>
                     <li>To spread awareness about organ donation among the people..</li> 
                     <li>To give a hope for a new life to the people who have given up.. </li>
                     <li>To convince and remove the fear from the people's mind about organ donation through already pledged donors...</li>
                     <li>Networking with hospitals who transplant the organs, with ngo's who are working for this type of activities.</li>
                     <li>"With awareness comes knowledge and with knowledge comes change"</li>
                  </ul>
                     
              </div>
              <div class="col-md-6 mv-img">
                  <img src="assets/images/mission.png" alt="">
              </div>
          </div>
          <div class="row vision">
              <div class="col-md-6 mv-img">
                   <img src="assets/images/vission.jpg" alt="">
              </div>
              <div class="col-md-6 mv-det">
                   <h1>Our Vision</h1>
                   <p>
                     Our vision is to bridge between the peoples who need organs and the peoples who donate organs.. 
                     We need to ensure that maximum number of people pledge for organ donation...
                     There are so many people who declared brain dead, and if their organs get transplanted at right time then that will give so many people a hope for a new life... 
                     We want to ensure that large number of people come forward for a pledge 
                     and also tell your family and friends to do the same,
                     this is how we can prevent large number of deaths because of organ failure.<br /> 
                     "your organ will live longer in someone in the form of hope for a new life"...</p>
              </div>
          </div>
      </div>
</asp:Content>

