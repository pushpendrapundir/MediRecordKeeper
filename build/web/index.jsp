<%-- 
    Document   : index.jsp
    Created on : 09-Aug-2020, 12:07:14 AM
    Author     : Windows
--%>

<%@page import="com.medi.docs.helper.Message"%>
<%@page import="java.sql.*"%>
<%@page import="com.medi.docs.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="icon" href="pics/logo.png" style="height:30px;width:30px";>
        <title>
             MediSolution</title>
          <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
         
         <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha256-4+XzXVhsDmqanXGHaHvgh1gMQKX40OUvDEBTu8JcmNs=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
      <script src='https://kit.fontawesome.com/a076d05399.js'></script>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <script src="https://code.jquery.com/jquery-1.12.4.js" integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
       
       
       
    </head>
    <body>
      
        <!--top header--->
        <div class="container main_header mt-2 ml-2">
           
            
            
            <hr>
        </div>
         <!--brand photo and navbar -->
        <nav class="navbar navbar-expand-lg navbar-light ml-2" style="background: #606c88;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #3f4c6b, #606c88);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #3f4c6b, #606c88); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
">
  <a class="navbar-brand" href="#">
            <img src="pics/hos31.png" alt="brand.logo" class="img-fluid" style="width:250px;height:100px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse ml-3" id="navbarSupportedContent" style="font-size:25px;" >
    <ul class="navbar-nav mr-auto" style="font-size:20px;font-weight: bolder;">
      <li class="nav-item  ml-5">
        <a class="nav-link" href="#" style="color:white;font-size:20px;"><b>HOME</b></a>
      </li>
      <li class="nav-item ml-5">
        <a class="nav-link" href="ComingSoon.jsp" style="color:white;font-size:20px;"><b>OPD</b></a>
      </li>
     
      <li class="nav-item ml-5">
        <a class="nav-link " href="ComingSoon.jsp" tabindex="-1" aria-disabled="true" style="color:white;font-size:20px;"><b>PATIENT CARE</b></a>
      </li>
        <li class="nav-item ml-5">
        <a class="nav-link " href="ContactUs.jsp" tabindex="-1" aria-disabled="true" style="color:white;font-size:20px;"><b>CONTACT</b></a>
      </li>
      
        <li class="nav-item ml-5">
        <a class="nav-link" href="UserLogin_page.jsp" tabindex="-1" aria-disabled="true" style="color:white;font-size:20px;"><b>LOGIN</b></a>
      </li>
    </ul>
    
  </div>
</nav>
        <br>
        
        <!--About Website--->
        <div class="container-fluid maincontent text-items-align">
            <article class="wrapper">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-5 ">
             <img src="pics/logo.png" style="width:50px;height:50px" class="img-fluid mt-3">
                   <span style="font-size:25px; mt-5"><b>MEDISOLUTION FOR HOSPITALS</b></span>
                </div>
                
                </div>
            <div class="row">
                <div class="col-sm-3"><img src="pics/children2.jpg" style="width:350px;height:250px" class="img-fluid mt-3"></div>
                <div class="col-md-9">
                   <h5 class="ml-2">Hospitals are under pressure.<br><br></h5> 
                    <h5 class="ml-2"> MEDISOLUTION technology integrates within hospitals and is proven to:<br></h5> 

                    <h5 class="ml-2"> – Reduce patients’ time spent in acute care, driving down delayed discharges<br></h5> 
                    <h5 class="ml-2"> – Reduce patients’ risk of re-admission resulting from substandard post acute care<br></h5> 
                    <h5 class="ml-2"> – Maximize patients’ care, safety, choice and satisfaction<br></h5> 
                     <h5 class="ml-2">– Deliver real-time analytics driving long term hospital service optimization<br></h5> 
                     <br><br>
                     <center>  <a href="register_page.jsp" class="btn btn-warning" style="font-family:monospace;font-size:18px;"> Register</a>
                         <a href="AdminSignUp_page.jsp" class="btn btn-warning"style="font-family:monospace;font-size:18px;">Admin</a></center>
        </div>
                
            </div>     
            </article>
            
        </div>
       
        <br>
        <br>
         <!--find hospital search bar--->
        <div class="container-fluid search_bar" style="background-color:#26c6da;width:1500px;height:100px;">
           <center> <h3 class="display:3px m-2">Here is a quick search for you...</h3></center>
           
        <form>
  <div class="row m-2">
    <div class="col-md-4 c1">
      <input type="text " class="form-control" placeholder="Find A Doctor">
   
    </div>
    <div class="col-md-4 c2">
      <input type="text" class="form-control" placeholder="Find A Hospital">
       
    </div>
      <div class="col-md-3 c3">
      <input type="text" class="form-control" placeholder="Find A Specialist">
          
    </div>   
      
 <button class="btn my-2 my-sm-0"  style="background-color: #ffb74d ;width:100px;" type="submit">Search</button>
         
          
  </div>
</form>
        </div>
    
        <br>
         <!--marquee--->
    
                            <br>


                            <br>
        <!--Bottom Cards--->
        <div class="card-deck">
        <div class="row m-1">
       <div class="col-md-4">
           
        <div class="card card-1" style="width:30rem;background-color: #8BC6EC;
background-image: linear-gradient(135deg, #8BC6EC 0%, #9599E2 100%);">
<center><img src="pics/doc1.png" class="card-img-top" alt="..." style="width:420px;height:200px; margin-top:20px;"></center> 
  <div class="card-body">
      <h5 class="card-title"><center><span class="fa fa-comments"></span><b> Take Our Services</b></center></h5>
    <p class="card-text">Your Service is our job . Put your all docs on a digital platfrom.
 Put Once,see anywhere. 
 Give a chance of service. We know you will not get better to us.
 We made life easy.
 </p>
 <div class="container text-center"><a href="register_page.jsp" class="btn btn-success"><b>Register here</b></a></div>
            </div>
  </div>
</div>
            
            <br>
            <div class="col-md-4">
        <div class="card card-2" style="width:30rem;background-color: #8BC6EC;
background-image: linear-gradient(135deg, #8BC6EC 0%, #9599E2 100%);height:450px;">
<center><img src="pics/hospitalcomic6.png" class="card-img-top" alt="..." style="width:420px;height:200px;margin-top:20px;"></center>
  <div class="card-body">
      <h5 class="card-title"><center><span class="fa fa-handshake"></span><b> Collabration With Top Hospitals</b></center> </h5>
    <p class="card-text"> We have been collaborated with top hospitals of India 
 like Apollo,fortis,etc.
 Move to any hospital,doctor, we will show your medical history.</p>
   
            </div>
  </div>
                <br><br>
</div>
             <div class="col-md-4">
        <div class="card card-3" style="width:30rem;background-color: #8BC6EC;
background-image: linear-gradient(135deg, #8BC6EC 0%, #9599E2 100%);height:450px;width:430px;

">
            <center><img src="pics/hospitalcomic4.png" class="card-img-top" alt="..." style="width:400px;height:180px; margin-top:20px;"></center>
  <div class="card-body">
      <h5 class="card-title"><center><span class="fa fa-book"></span> <b>Data At One Place</b></center></h5>
    <p class="card-text">With the time, hardcopies(papers) lost their condition . Now MediSolution
is the solution . Made pdf and save you precious data . We care because we know how
 important your data is for you. </p>
     
            </div>
  </div>
</div>
              </div>
        <br>
       
           <div class="row m-1">
       <div class="col-md-4">
        <div class="card card4" style="width:30rem;background-color: #8BC6EC;
background-image: linear-gradient(135deg, #8BC6EC 0%, #9599E2 100%);height:520px;

">
<center><img src="pics/hospitalcomic5.png" class="card-img-top m-2" alt="..." style="width:390px;height:270px;margin-top:20px;"></center> 
  <div class="card-body">
      <h5 class="card-title"><center><span class="fas fa-clipboard-list"></span><b> Live Free From Paper Hussule</b> </center></h5>
    <p class="card-text">Your Service is our job . Put your all docs on a digital platfrom.
 Put Once,see anywhere. 
 Give a chance of service. We know you will not get better to us.
 We made life easy.
 </p>
    
            </div>
  </div>
</div>
            
            <br>
            <div class="col-md-4">
        <div class="card card5" style="width:30rem;background-color: #8BC6EC;
background-image: linear-gradient(135deg, #8BC6EC 0%, #9599E2 100%);height:520px;

">
<center><img src="pics/hospitalcomic7.png" class="card-img-top" alt="..." style="width:390px;height:272px;margin-top:20px;"></center>
  <div class="card-body">
      <h5 class="card-title"><center><span class="fa fa-folder-open"></span><b> Integrate Your Doc With Us</b></center> </h5>
    <p class="card-text"> We have been collaborated with top hospitals of India 
 like Apollo,fortis,etc.
 Move to any hospital,doctor, we will show your medical history.</p>
   
            </div>
  </div>
</div>
             <div class="col-md-4">
        <div class="card card6" style="width:30rem;background-color: #8BC6EC;
background-image: linear-gradient(135deg, #8BC6EC 0%, #9599E2 100%);width:430px;

">
            <center><img src="pics/hospitalcomic1.jpg" class="card-img-top" alt="..." style="width:350px;height:250px;margin-top:20px;"></center>
  <div class="card-body">
      <h5 class="card-title"><center><span class="fa fa-lightbulb-o"></span> <b> We are Only Solution</b></center></h5>
    <p class="card-text">With the time, hardcopies(papers) lost their condition . Now MediSolution 
is the solution . Made pdf and save you precious data . We care because we know how
 important your data is for you. </p>
    <div class="container text-center"><a href="#" class="btn btn-success"><b>Quick Search</b></a></div>
            </div>
  </div>
</div>
               </div>
        
        
        
        
        
              </div>
        <br>
        <div class="container-fluid" >
            <marquee behavior="scroll" width="80%" direction="left" width="140" height="45"  vspace=30 style="width:1400px;height:130px;">
                <img src="pics/aiims delhi.png" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                  <img src="pics/aiims bhopal.jpg" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                    <img src="pics/aiims patna.jpg" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                      <img src="pics/fortis.png" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                        <img src="pics/aiims raipur.jpg" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                        <img src="pics/mgm logo.jpg" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                         <img src="pics/army.jpg" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                          <img src="pics/srmhosp.png" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                           <img src="pics/vit.jpg" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                            <img src="pics/cheeroke.jpg" alt="aiims delhi" style="width:200px;height:120px;margin-top:10px;padding-right:40px;">
                        
            </marquee>
        </div>
            <!--feedback option--->
        <div class="icon-bar">
            <a href="#" class="feedbackclass" data-toggle="modal" data-target="#exampleModal">FEEDBACK</a>
        </div>
      <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header"  style="background-color:#ffeb3b;color:black">
          <h5 class="modal-title" id="exampleModalLabel"><b>FeedBack Form</b></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="FeedbackServlet" method="post" id="reg-form" >
        <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
    <input type="text" class="form-control" id="exampleInputname" aria-describedby="name" placeholder="Name" name="fname">
   
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email Address" name="femail">

  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Mobile Number</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Mobile Number" name="fpass">
  </div>
         <div class="form-group">
    <label for="exampleFormControlTextarea1">Feedback</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="ffeed" placeholder="Enter your Feedback Here..." > </textarea>
  </div>
 
            <button type="submit" class="btn btn-block" style="background-color:teal;color:white;"><b>Submit</b></button>
</form>
          
      </div>
    
    </div>
  </div>
</div>

    
       
    
        
    <center><div class="container-fluid" style="font-size:20px;"><b>Developed By: Samarth Madhu Jain <span> &copy; Copyright 2020-2021</b></span></div></center>
        

                    <style>
                        .container .side_panel
                        {
                            top:50%;
                            transform:translateY();
                            -webkit-transform:translateY(-50%);
                            -ms-transform:translateY(-50%);
                            position:fixed;

                        }
                        .container .side_panel a
                        {
                             display: block;
                              text-align: center;
                              padding: 16px;
                              transition: all 0.3s ease;
                              color: white;
                              font-size: 20px;
                        }
                                        .container {
                                  position: relative;
                                  width: 100%;
                                  max-width: 1600px;
                                }

                                .container img {
                                  width: 100%;
                                  height: auto;
                                }

                                .container .btn1 {
                                  position: absolute;
                                  top: 79%;
                                  left: 24%;
                                  transform: translate(-50%, -50%);
                                  -ms-transform: translate(-50%, -50%);
                                  background-color: #e3f2fd ;
                                  color: black;
                                  font-size: 16px;
                                  padding: 12px 24px;
                                  border: none;
                                  cursor: pointer;
                                  border-radius: 5px;
                                  text-align: center;
                                }
                                .container .btn2 {
                                  position: absolute;
                                  top: 73%;
                                  left: 40%;
                                  transform: translate(-10%, -10%);
                                  -ms-transform: translate(-50%, -50%);
                                  background-color: #e3f2fd ;
                                  color: black;
                                  font-size: 16px;
                                  padding: 12px 24px;
                                  border:none;
                                  cursor: pointer;
                                  border-radius: 5px;
                                  text-align: center;
                                }

                                .container .btn1:hover {
                                  background-color: black;
                                    color:white;
                                }
                                .container .btn2:hover {
                                  background-color: black;
                                                color:white;
                                }
                                .maincontent {

                                  background: #2193b0;  
                                background: -webkit-linear-gradient(to right, #6dd5ed, #2193b0); 
                                background: linear-gradient(to right, #6dd5ed, #2193b0); 
                                                 width:1500px;
                                                 height:420px;
                                 }
                        .wrapper
                        {
                            width:100%;
                        }
                          footer
                        {
                            background: #2193b0;  
                            background: -webkit-linear-gradient(to right, #6dd5ed, #2193b0); 
                            background: linear-gradient(to right, #6dd5ed, #2193b0);
                            width:1500px;
                            height:500px;

                        }
                        @media all and (max-width:300px)
                        {
                            .main_header
                            {
                                float:none;
                                width:auto;
                                
                            }
                            .navbar
                            {
                                flex-direction: column;
                                font-size:20px;
                                font-weight:bold;
                            }
                            
                            .footer_container
                            {
                                width:100%;
                                height: auto;
                            }
                            .footer1
                            {
                                text-align: justify;
                                width:400px;
                            }
                            .card 
                            {
                                display:inline-block;
                                max-width:auto;
                                
                            }
                           
                          
                        }
                        

            
            </style>
        <style>
 .icon-bar {
  position: fixed;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
     width:50px;
     height:150px;
     right:0;
     background-color:#bdbdbd;
     color:black;
     z-index:9;
}

/* Style the icon bar links */
.icon-bar a {
  
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 27px;
    writing-mode: vertical-rl;
    z-index:-1;
    text-decoration: none;

}

/* Style the social media icons with color, if you want */
.icon-bar a:hover {
  background-color: #000;
}
*
{
    font-family:monospace;
}
body{






}
        </style>
        
       
            
    </body>
     <script>
        
                                    $(document).ready(function(){
                                        console.log("hurrrrr");
                                    $("#reg-form").on('submit',function(e) {
                                        e.preventDefault();
                                        
                                        let form=new FormData(this);
                                   
                                    $.ajax({
                                    url: "FeedbackServlet",
                                    type: "post",
                                    data:form,
                                    success : function(data){
                                    console.log(data);
                                   swal("FeedBack Form", "Submitted Succesfully");
                                   window.location("index.jsp");
                                         },
                                    error:function()
                                    {
                                        swal("Feedback Form", "Please retry to submit it");
                                    },
                                    processData:false,
                                    contentType:false
                                    });
                                    });
                                    });
            </script>
</html>
