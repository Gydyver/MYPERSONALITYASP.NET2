<%@ Page Language="C#" AutoEventWireup="true" CodeFile="infj_home.aspx.cs" Inherits="infj_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- css -->
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="User1.css">
    <link rel="stylesheet" type="text/css" href="tools/css/swiper.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- script -->
	<script src="tools/js/jquery.min.js"></script>
	<script src="bootstrap/bootstrap.min.js"></script>
	<!-- <script src="tools/js/swiper.min.js"></script> -->
	<title>MyPersonality - Personality test</title>
    <script>
	var history_api = typeof history.pushState !== 'undefined'

// The previous page asks that it not be returned to
if ( location.hash == '#no-back' ) {
  // Push "#no-back" onto the history, making it the most recent "page"
  if ( history_api ) history.pushState(null, '', '#stay')
  else location.hash = '#stay'

  // When the back button is pressed, it will harmlessly change the url
  // hash from "#stay" to "#no-back", which triggers this function
  window.onhashchange = function() {
    // User tried to go back; warn user, rinse and repeat
    if ( location.hash == '#no-back' ) {
      alert("You shall not pass!")
      if ( history_api ) history.pushState(null, '', '#stay')
      else location.hash = '#stay'
    }
  }
}
</script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="topnav" id="myTopnav"> 
        <p class="logo">MyPersonality</p>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal" style="background-color: firebrick; color: white">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                Logout
            </a>
        <a href="#">ABOUT</a> 
        <a href="PersonalityTypes.aspx">PERSONALITY TYPE</a>
        <%--<a href="INFJ_home.aspx" class="btn btn-info">HOME</a>--%>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>
    <div class="personalitycover">
        <img src="INFJ_public/diplomats_Advocate_INFJ_strengths.svg">
        <h1><center>INFJ Personality (“The Advocate”)</center></h1>
        <blockquote>
            <p><i>Treat people as if they were what they ought to be and you help them to become what they are capable of being.</i></p>
            <footer>JOHANN WOLFGANG VON GOETHE</footer>
        </blockquote>
        <br/><br/>
        <div class="row frame">
            <div class="col-md-4 ">
            	<div class="career">
            		<img src="icon/002-promotion.png" class="center" />
                    <center><asp:button class="btn btn-link text" ID="btnCareer" OnClick="btnCareer_Click" UseSubmitBehavior="false" runat="server" text="INFJ's CAREER" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
	            </div>
            </div>
            <div class="col-md-4 ">
            	<div class="romantic">
            		<img src="icon/003-love-letter.png" class="center" />
                    <center><asp:button class="btn btn-link text" ID="btnRomantic" OnClick="btnRomantic_Click" UseSubmitBehavior="false" runat="server" text="INFJ's RELATIONSHIP" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
            	</div>
            </div>
            <div class="col-md-4 ">
            	<div class="sw">
            		<img src="icon/001-carnival.png" class="center" />
                    <center><asp:button class="btn btn-link text" ID="btnsw" OnClick="btnsw_Click" UseSubmitBehavior="false" runat="server" text="INFJ's STRENGTHNESS & WEAKNESS" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
	            </div>
            </div>
        </div>
    </div><br/><br/>
    <div style="background-color: #f5f5f5;">
    	<p style="font-family: 'Good Feeling Sans Demo';font-size: 25px;margin-left: 50px;">Advocates You May Know</p>
    </div><br/><br/>
    <div class="swiper-container">
	    <div class="swiper-wrapper">
	      <div class="swiper-slide">
	            <img class="img-responsive" src="INFJ_public/diplomats_INFJ_alanis_morisette.svg">
	            <p class="celebname">Alanis Morisette</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive" src="INFJ_public/diplomats_INFJ_aragorn_the_lord_of_the_rings.svg">
				<p class="celebname">Aragorn</p>
              <h5>The Lord of The Rings</h5>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive" src="INFJ_public/diplomats_INFJ_martin_luther_king.svg">
				<p class="celebname">Martin Luther King</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive"  src="INFJ_public/diplomats_INFJ_mother_teresa.svg">
				<p class="celebname">Mother Teresa</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive"  src="INFJ_public/diplomats_INFJ_nelson_mandela.svg">
				<p class="celebname">Nelson Mandela</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive"  src="INFJ_public/diplomats_INFJ_rose_dewitt_bukater_titanic.svg">
				<p class="celebname">Rose Dewitt Bukater</p>
				<h5>Titanic</h5>
	      </div>
	    <!-- Add Pagination -->
	    <div class="swiper-pagination"></div>

	    <!-- Add Arrows -->
	    <div class="swiper-button-next"></div>
	    <div class="swiper-button-prev"></div>
	  </div>
	</div>
        <div class="footer">
	        <div>
		        <div class="footer-icons col-md-6 col-xs-10">
			        <a href="#"><img src="icon/002-twitter.png">mypersonality</a>
			        <a href="#"><img src="icon/001-facebook.png">MyPersonality ID</a>
			        <a href="#"><img src="icon/envelope.png">help@myprs.id</a>
		        </div>
		        <div class="copyright">
			        <center><p>Copyright &#169; 2018 MyPersonality Personality Online Test Inc. All right reserved</p></center></p>
		        </div>
	        </div>
        </div> 
<!-- 	modal career -->
    <div id="INFJCareer" class="modal fade" >
        <div class="modal-dialog mdcareer" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="INFJ_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Advocate Careers</center></h1>
                </div>
                <div class="modal-body modal-dialog-scrollable">
				    <div class="personalityinfo1">
				    <p>While many personality types may be comfortable with flexible work as consultants and sole proprietors, Advocates are much more focused on building long-term, stable careers. That’s not to say that Advocates can’t do that sort of work – many find themselves thinking about what’s on the other side of those cubical walls – but what they crave is dependability, and that is reflected in their choice of work perhaps more so than in any other part of their lives.</p>
				        <div class="scene">
				            <img alt="INFJ personality" src="INFJ_public/diplomats_Advocate_INFJ_career_path.svg" alt="INFJ personality">
				        </div>
				        <br>
				        <ul class="personalityinfo1">
				            <h2>Truth, Beauty, Purpose</h2>
                            <p>Advocate personalities need to find meaning in their work and to know that they are helping and connecting with people. An Advocate working as a Ferrari salesperson, for example, is highly unlikely.</p>
                            <p>Their desire to help and connect makes careers in healthcare – especially the more holistic varieties – very rewarding for Advocates. Roles as counselors, psychologists, doctors, life coaches, and spiritual guides are all attractive options.</p>                            <div class="description-pullout">
	                            For Advocates, money and Employee of the Month simply won’t cut it compared to living their values and principles.
                            </div>                            <h2>Two Roads Diverged In a Yellow Wood</h2>
                            <p>These needs are hard to meet in a corporate environment, where Advocates will be forced to manage someone else’s policies alongside their own. For this reason, people with the Advocate personality type are more likely to find independence in a leadership position, or by simply creating their own business.</p>
                            <p>If they choose to go the independent route, they will focus on applying their personal touch, creativity, and altruism to everything they do. This can be the most rewarding option for Advocate personalities. When they step out of the overly humble supporting and noncompetitive roles they are often drawn to, they can move into positions where they can grow and make a difference.</p>                            <p>Advocates often pursue expressive careers such as writing, effective communicators that they are, and author many popular blogs, stories, and screenplays. Music, photography, design, and art are viable options too, and they all can focus on deeper themes of personal growth, morality, and spirituality.</p>

<p>Where Advocates struggle is in work that doesn’t take personal needs into consideration, is overly repetitious, or promotes conflict. Jobs with these traits will leave Advocate personality types frustrated and unfulfilled. They can also struggle under the criticism and pressure that comes with jobs in corporate politics or sales.</p>

<p>Advocate personalities are clever and can do well in any of these fields. To be truly happy, however, they need to be able to work in a way that aligns with their values and allows them some independence. They need opportunities to learn and grow alongside the people they are helping and contribute to the well-being of humanity on a personal level.</p>
                        </ul>
				        </div>
		    	</div>
            </div>
        </div>
    </div>
<!--	modal romantic -->
	<div id="INFJRelationship" class="modal fade" >
        <div class="modal-dialog mdromantic" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="INFJ_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Advocate Relationships</center></h1>
                </div>
                <div class="modal-body modal-dialog-scrollable">
				    <div class="personalityinfo1">
				    	<p>Advocates are dependable through and through, and this trait is clearly expressed when it comes to their romantic relationships. Often representing the epitome of family values, people with the Advocate personality type are comfortable with, and often even encourage traditional household and gender roles, and look to a family structure guided by clear expectations and honesty. While their reserved nature often makes dating Advocates challenging, they are truly dedicated partners, willing to devote tremendous thought and energy to ensure stable and mutually satisfying relationships.</p>
 				   		<div class="scene">
				            <img alt="INFJ personality" src="INFJ_public/diplomats_Advocate_INFJ_romantic_relationships.svg" alt="INFJ personality">
			        	</div>
			        	<br>
				        <ul class="personalityinfo1">
				            <p>Getting to that point can sometimes be a challenge for potential partners, especially if they are impatient types, as Advocates are often perfectionistic and picky. People with this personality type aren’t easily talked into something they don’t want. If someone doesn’t pick up on that, they are unlikely to be forgiven, particularly in the early stages of dating.</p>

<p>Even worse is if their partner tries to resort to manipulation or lying, as Advocates will see right through it. If there’s anything they have a poor tolerance for in a relationship, it is a lack of authenticity.</p>

<h2>Is This for Real?</h2>

<p>Advocates will go out of their way to seek out people who share their desire for authenticity, and out of their way to avoid those who don’t, especially when looking for a partner. All that being said, people with the Advocate personality type often have the advantage of desirability. They are warm, friendly, caring, and insightful, seeing past facades and the obvious to understand others’ thoughts and emotions.</p>

<div class="description-pullout">
	One of the things Advocates find most important is establishing genuine, deep connections with the people they care about.
</div>

<p>Advocate personalities are enthusiastic in their relationships. There is a sense of wisdom behind their spontaneity, allowing them to pleasantly surprise their partners again and again. These types aren’t afraid to show their love, and they feel it unconditionally.</p>

<p>Advocates create a depth to their relationships that can hardly be described in conventional terms. Relationships with Advocates are not for the uncommitted or the shallow.</p>

<p>When it comes to intimacy, Advocates look for a connection that goes beyond the physical. They prefer to embrace the emotional and even spiritual connection they have with their partners. People with this personality type are passionate partners.</p>

<p>Advocates see intimacy as a way to express their love and to make their partners happy. They cherish not just the act of being in a relationship, but what it means to become one with another person in mind, body, and soul.</p>
                        </ul>
			        </div>
		    	</div>
            </div>
        </div>
    </div>
<!--	modal strength/weak -->
    <div id="INFJsw" class="modal fade" >
        <div class="modal-dialog mdsw" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="INFJ_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Advocate Strengths and Weaknesses</center></h1>
                </div>
                <div class="modal-body modal-dialog-scrollable">
                	<div class="personalityinfo1">
        				<p>The INFJ personality type is thought to be the most abundant, making up around 13% of the population. Their defining characteristics of integrity, practical logic and tireless dedication to duty make INFJs a vital core to many families, as well as organizations that uphold traditions, rules and standards, such as law offices, regulatory bodies and military. People with the INFJ personality type enjoy taking responsibility for their actions, and take pride in the work they do – when working towards a goal, INFJs hold back none of their time and energy completing each relevant task with accuracy and patience.</p>
        
	        	        <div class="scene">
				            <img alt="INFJ personality" src="INFJ_public/diplomats_Advocate_INFJ_strengths.svg" alt="INFJ personality">
				        </div>
					    <div class="personalitycover">
				            <h1>Advocate Strengths</h1>
				        </div>
				        <br>
				        <ul class="personalityinfo1">
				            <li><strong>Creative</strong> – Combining a vivid imagination with a strong sense of compassion, Advocates use their creativity to resolve not technical challenges, but human ones. People with the Advocate personality type enjoy finding the perfect solution for someone they care about. This strength makes them excellent counselors and advisors.</li>
	                        <li><strong>Insightful</strong> – Seeing through dishonesty and disingenuous motives, Advocates step past manipulation and sales tactics and into a more honest discussion. Advocate personalities see how people and events are connected. They are then able to use that insight to get to the heart of the matter.</li>
	                        <li><strong>Inspiring and Convincing</strong> – Speaking in human terms, not technical, Advocates have a fluid, inspirational writing style that appeals to the inner idealist in their audience. Advocates can even be astonishingly good orators, speaking with warmth and passion. This is especially true if they are proud of what they are speaking for.</li>
	                        <li><strong>Decisive</strong> – Advocates’ creativity, insight, and inspiration are able to have a real impact on the world. This is because they are able to follow through on their ideas with conviction, willpower, and the planning necessary to see complex projects through to the end. People with the Advocate personality type don’t just see the way things ought to be; they act on those insights.</li>
	                        <li><strong>Determined and Passionate</strong> – When Advocates come to believe that something is important, they pursue that goal with a conviction and energy that can catch others off-guard. Advocates will rock the boat if they must. Not everyone likes to see this, but their passion for their chosen cause is an inseparable part of the Advocate personality.</li>
	                        <li><strong>Altruistic</strong> – These strengths are used for good. Advocates will not engage in any actions or promote beliefs just to benefit themselves. They have strong beliefs and take the actions that they do because they are trying to advance an idea that they truly believe will make the world a better place.</li>
                        </ul>
				        </div>

				        <div class="scene">
				            <img alt="INFJ personality" src="INFJ_public/diplomats_Advocate_INFJ_weaknesses.svg" alt="INFJ personality">
				        </div>
				        <div class="personalitycover">
				            <h1>Advocate Weaknesses</h1>
				        </div>
				        <br>
				        <ul class="personalityinfo1">
				            <li><strong>Sensitive</strong> – When someone challenges or criticizes Advocates’ principles or values, they are likely to receive an alarmingly strong response. People with the Advocate personality type are highly vulnerable to criticism and conflict. Questioning their motives is the quickest way to their bad side.</li>
	                        <li><strong>Extremely Private</strong> – Advocates tend to present themselves as the culmination of an idea. This is partly because they believe in this idea, but also because Advocates are extremely private when it comes to their personal lives. They use this image to keep themselves from having to truly open up, even to close friends. Trusting a new friend can be even more challenging for Advocates.</li>
	                        <li><strong>Perfectionistic</strong> – Advocate personalities are all but defined by their pursuit of ideals. While this is a wonderful quality in many ways, an ideal situation is not always possible – in politics, in business, in romance. Advocates, especially Turbulent ones, too often drop or ignore healthy and productive situations and relationships, always believing there might be a better option down the road.</li>
	                        <li><strong>Always Need to Have a Cause</strong> – Advocate personalities get so caught up in their pursuits that any of the cumbersome tasks that come between them and their ideal vision is deeply unwelcome. Advocates like to know that they are taking concrete steps toward their goals. If routine tasks feel like they are getting in the way – or worse yet, there is no goal at all – they will feel restless and disappointed.</li>
	                        <li><strong>Can Burn Out Easily</strong> – Their passion, impatience for routine maintenance, idealism, and extreme privacy tend to leave Advocates with few options for letting off steam. People with this personality type are likely to exhaust themselves in short order if they don’t find a way to balance their ideals with the realities of day-to-day living.</li>                        </ul>
				    </div>
		    	</div>
            </div>
        </div>
        <!-- Logout Modal-->
      <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
              <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
              </button>
            </div>
            <div class="modal-body">Are you sure want to logout?</div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
              <asp:Button class="btn btn-danger" ID="btnLogout" runat="server" Text="Yes" OnClick="btnLogout_Click" UseSubmitBehavior="false"/>
            </div>
          </div>
        </div>
      </div>
    </form>
</body>
    <script src="tools/js/swiper.min.js"></script>
<script type="text/javascript">

	function INFJCareer(){
		$('#INFJCareer').modal({'backdrop':'static'});
	}
	function INFJRelationship(){
		$('#INFJRelationship').modal({'backdrop':'static'});
	}
	function INFJsw(){
		$('#INFJsw').modal({'backdrop':'static'});
	}
	

$('.carousel[data-type="multi"] .item').each(function() {
	var next = $(this).next();
	if (!next.length) {
		next = $(this).siblings(':first');
	}
	next.children(':first-child').clone().appendTo($(this));

	for (var i = 0; i < 2; i++) {
		next = next.next();
		if (!next.length) {
			next = $(this).siblings(':first');
		}

		next.children(':first-child').clone().appendTo($(this));
	}
});
    //awal dari swiper slider ads
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 5,
      spaceBetween: 50,
      // autoHeight: true, //enable auto height

      // init: false,
      loop: true,
      // pagination: {
      //   el: '.swiper-pagination',
      //   clickable: true,
      // },
      autoplay: {
        delay: 1500,
        disableOnInteraction: false,
      },

      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      breakpoints: {
        1024: {
          slidesPerView: 4,
          spaceBetween: 40,
        },
        768: {
          slidesPerView: 3,
          spaceBetween: 30,
        },
        640: {
          slidesPerView: 2,
          spaceBetween: 20,
        },
        320: {
          slidesPerView: 1,
          spaceBetween: 10,
        }
      }
    });
</script>

</html>
