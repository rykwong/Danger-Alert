<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
   <head>
      <title>Danger Alert</title>
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
      <link rel="stylesheet" type="text/css" href="css/style.css" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script>
         window.onload = function () { 
         var today = new Date();
          document.getElementById('dateDisplay').innerHTML=new Date().toDateString();
          }
          
         function myReportFeed() {
           var x = document.getElementById("ReportFeed");
           if (x.style.display === "none") {
         	x.setAttribute('style', 'display:block'); 
           } else {
           x.setAttribute('style', 'display:none'); 
           }
         }
      </script>
   </head>
   <body>
      <div id="wh_bg">
         <div id="bg_bg">
            <div id="top" style="display:none">
               <div class="top1"></div>
               <div class="top2" style="background-color:red;">  </div>
            </div>
            <div id="topMenu" >
               <div class="header">
                  <div class="search displayInline" style="width:100%; margin-top: 1%;">
                     <div class="displayInline paddingLft30px" style="width:25%;height:30px;">
                        <span id="menuTextForLogo"><img src="images/logo.png" width="300" height="100" class="flt" /></span>
                     </div>
                     <div class="displayInline" style="width:70%">
                        <div class="displayInline" style="width:25%">
                           <form method="get" id="search" action="#">
                              <span>
                              <input type="text" value="Search..." name="s" id="s" /> 
                              <input name="searchsubmit" type="image" src="images/search.png" value="Go" id="searchsubmit" class="btn btnSearch"  />
                              </span>
                           </form>
                        </div>
                        <!--/searchform -->
                        <div class="displayInline" style="width:15%">
                           <span>
                           <input name="searchsubmit" type="image" src="images/frnd.png" class="btn btnFrnd paddingLft10px"  />
                           <input name="searchsubmit" type="image" src="images/msg.png" class="btn btnMsg paddingLft10px"  />
                           <input name="searchsubmit" type="image" src="images/bell.png" class="btn btnBell paddingLft10px"  />
                           </span>
                        </div>
                        <div class="displayInline" id ="floatRht" style="width:40%;margin-top: -15px;">
                           <div class="navbar">
                              <a href="#AdminCP">AdminCP</a>
                              <a href="#Authorities">Authorities</a>
                              <div class="dropdown">
                                 <button class="dropbtn">Profile 
                                 <i class="fa fa-caret-down"></i>
                                 </button>
                                 <div class="dropdown-content">
                                    <a href="#">Link 1</a>
                                    <a href="#">Link 2</a>
                                    <a href="#">Link 3</a>
                                 </div>
                              </div>
                              <div class="dropdown">
                                 <button class="dropbtn">Account 
                                 <i class="fa fa-caret-down"></i>
                                 </button>
                                 <div class="dropdown-content">
                                    <a href="#">Link 1</a>
                                    <a href="#">Link 2</a>
                                    <a href="#">Link 3</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="clr"></div>
                  <div id="menu">
                     <div class="men_tp"> <a href="">HOME</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> <a href="">FRIENDS</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> <a href="">PAGES</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> <a href="">PHOTOS</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> <a href="">FORUM</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> <a href="">POLLS</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /> <a href="">VIDEOS</a> </div>
                     </div
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="columnProfile">
                  <div class="card">
                     <img src="images/abt_img.jpg" alt="John" style="width:100%">
                     <h1>${user.username}</h1>
                     <div class="card">
                        <div class="upcomeEvents"><span>Authorities Online</span></div>
                     </div>
					 <img src="images/fdept.png" alt="John" style="width:50%"class="btn btnFrnd paddingLft10px">
					 <div class="EmptyHeight"> </div>
					 <div class="card">
                        <div class="upcomeEvents"><span>Friends Online</span></div>
						<br>
						<br>
						<br>
                     </div>
                  </div>
               </div>
               <div class="columnFeed marginRgt5 marginLft">
			   <h1>Crime Feed</h1>
                  <div class="ReportFeed">
                     <div id="menu">
                        <div class="men_tp menuGrid"> <a onclick="myReportFeed()"> <input name="searchsubmit" type="image" src="images/report.png" class="btn btnFrnd paddingLft15px"  />Report</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:20px;" /><a href=""><input name="searchsubmit" type="image" src="images/report.png" class="btn btnFrnd paddingLft15px">Photo</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:10px;" /> <a href=""><input name="searchsubmit" type="image" src="images/link.png" class="btn btnFrnd paddingLft20px">Link</a> <img src="images/line.gif" width="2" height="14" alt="" class="flt" style="margin-left:10px;" /> <a href=""><input name="searchsubmit" type="image" src="images/poll.png" class="btn btnFrnd paddingLft15px">Poll</a></div>
                     </div>
                  </div>
                  <div class="ToogleReportFeed">
                     <div id="ReportFeed" class="ReportForm">
                        <form action="#">
                           <label for="title">Title:</label><br>
                           <input type="text" id="title" name="title" value=""><br>
                           <label for="IncidentType">Type of Incident:</label><br>
                           <select id="IncidentType" name="IncidentType">
                              <option value=""></option>
                              <option value="fire">Fire</option>
                              <option value="crime">Crime</option>
                              <option value="nc">Natural Calamity</option>
                              <option value="accident">Accident</option>
                              <option value="ab">Animal Abuse</option>
                              <option value="hh">Health Hazard</option>
                           </select>
                           <br>
                           <label for="date">Date:</label><br>
                           <input type="date" id="date" name="date" value=""><br>
                           <label for="time">Time:</label><br>
                           <input type="text" id="time" name="time" value=""><br>
                           <label for="location">Location:</label><br>
                           <input type="text" id="location" name="location" value=""><br>
                           <label for="description">Description:</label><br>
                           <input type="text" id="description" name="description" value=""><br>
                           <label for="AI">Authorities Involved:</label><br>
                           <input type="text" id="AI" name="title" AI=""><br><br>
                           <input type="submit" value="Submit">
                        </form>
                     </div>
                  </div>
				  <br>
				 <img src="images/fire.png" alt="fire" style="width:90%"> 
               </div>
               <div class="columnEvents" id="floatRht">
                  <div>
                     <p id="dateDisplay">&nbsp;</p>
                  </div>
                  <div class="card">
                     <div class="upcomeEvents"><span>Upcoming Events</span></div>
                     <div class="todayEvents"><span>Today's Events</span></div>
                  </div>
                  <div class="EmptyHeight"></div>
                  <div class="card">
                     <div class="upcomeEvents"><span>Saved Posts</span></div>
                  </div>
               </div>
            </div>
            <div class="footer">
               <div id="foot"></div>
               <span class="copy"><a href=""></a></span>
            </div>
         </div>
      </div>
      <div align=center><a href=''></a></div>
   </body>
</html>