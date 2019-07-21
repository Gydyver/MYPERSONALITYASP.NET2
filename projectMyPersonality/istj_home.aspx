<%@ Page Language="C#" AutoEventWireup="true" CodeFile="istj_home.aspx.cs" Inherits="istj_home" %>

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
        <%--<a href="istj_home.aspx" class="btn btn-info">HOME</a>--%>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
            <i class="fa fa-bars"></i>
        </a>
    </div>
    <div class="personalitycover">
        <img src="img/ISTJ.svg">
        <h1><center>ISTJ Personality (“The Logistician”)</center></h1>
        <blockquote>
            <p><i>My observation is that whenever one person is found adequate to the discharge of a duty... it is worse executed by two persons, and scarcely done at all if three or more are employed therein.</i></p>
            <footer>George Washington</footer>
        </blockquote>
        <br/><br/>
        <div class="row frame">
            <div class="col-md-4 ">
            	<div class="career">
            		<img src="icon/002-promotion.png" class="center" />
                    <center><asp:button class="btn btn-link text" ID="btnCareer" OnClick="btnCareer_Click" UseSubmitBehavior="false" runat="server" text="ISTJ's CAREER" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
	            </div>
            </div>
            <div class="col-md-4 ">
            	<div class="romantic">
            		<img src="icon/003-love-letter.png" class="center" />
                    <center><asp:button class="btn btn-link text" ID="btnRomantic" OnClick="btnRomantic_Click" UseSubmitBehavior="false" runat="server" text="ISTJ's RELATIONSHIP" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
            	</div>
            </div>
            <div class="col-md-4 ">
            	<div class="sw">
            		<img src="icon/001-carnival.png" class="center" />
                    <center><asp:button class="btn btn-link text" ID="btnsw" OnClick="btnsw_Click" UseSubmitBehavior="false" runat="server" text="ISTJ's STRENGTHNESS & WEAKNESS" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
	            </div>
            </div>
        </div>
    </div><br/><br/>
    <div style="background-color: #f5f5f5;">
    	<p style="font-family: 'Good Feeling Sans Demo';font-size: 25px;margin-left: 50px;">Logisticians You May Know</p>
    </div><br/><br/>
    <div class="swiper-container">
	    <div class="swiper-wrapper">
	      <div class="swiper-slide">
	            <img class="img-responsive" src="istj_public/sentinels_ISTJ_anthony_hopkins.svg">
	            <p class="celebname">Anthony Hopkins</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive" src="istj_public/sentinels_ISTJ_condoleezza_rice.svg">
				<p class="celebname">Condoleezza Rice</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive" src="istj_public/sentinels_ISTJ_eddard_stark_game_of_thrones.svg">
				<p class="celebname">Eddard Stark</p>
				<h5>Game of Thrones</h5>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive"  src="istj_public/sentinels_ISTJ_george_washington.svg">
				<p class="celebname">George Washington</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive"  src="istj_public/sentinels_ISTJ_hermione_granger_harry_potter.svg">
				<p class="celebname">Hermione Granger</p>
				<h5>Harry Potter</h5>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive"  src="istj_public/sentinels_ISTJ_thorin_oakenshield_the_hobbit.svg">
				<p class="celebname">Thorin Oakenshield</p>
				<h5>The Hobbit</h5>
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
    <div id="ISTJCareer" class="modal fade" >
        <div class="modal-dialog mdcareer" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="istj_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Logistician Careers</center></h1>
                </div>
                <div class="modal-body modal-dialog-scrollable">
				    <div class="personalityinfo1">
				    <p>While many personality types may be comfortable with flexible work as consultants and sole proprietors, Logisticians are much more focused on building long-term, stable careers. That’s not to say that Logisticians can’t do that sort of work – many find themselves thinking about what’s on the other side of those cubical walls – but what they crave is dependability, and that is reflected in their choice of work perhaps more so than in any other part of their lives.</p>
				        <div class="scene">
				            <img alt="ISTJ personality" src="img/ISTJ_career.svg" alt="ISTJ personality">
				        </div>
				        <br>
				        <ul class="personalityinfo1">
				            <h2>Have No Other View Than to Promote the Public Good</h2>
				            <p>The facts support this, as the most common careers among people with the Logistician personality type revolve around institutions of respected tradition, authority, security, and established consistency. Careers as military officers, lawyers, judges, police officers and detectives are all very popular among Logisticians. This makes sense, as they not only offer the stability that Logisticians seek, but are in line with their principles and conservatism, establishing clear societal roles.</p>
				            <p>Logisticians of course aren’t limited to these organizations – there are many other roles that utilize their reliability, objectivity and sharp eyes. When facts and logic are out of place, Logistician personalities swoop in as the accountants, auditors, data analysts, financial managers, business administrators and even doctors that identify, report and correct the issues at hand.</p>
				            <p>Most of these careers have Logisticians working alone, which is usually their preference, but when teams are necessary, they are best defined by clearly outlined roles, responsibilities and work environments.</p>
				            <div class="description-pullout">Nothing is quite so challenging for Logisticians as ongoing debates about who is responsible for what, resulting in work that’s shoddily assembled – or worse, incomplete.</div>
				            <p>Logisticians have strong opinions about how things should be done, and if things are shuffled too often, people with this personality type can become surprisingly vocal about their opposition. It’s important for Logisticians to remember that even the most traditional and stable career paths can and need to change as time goes by. It is much better to accept this with grace than to develop reputations of being enemies of new ideas.</p>
				            <h2>Business Discourse Should Be Short and Comprehensive</h2>
				            <p>Logisticians may also struggle with the increasingly open and social requirements of modern work life. Being somewhat bad at sensing others feelings, Logisticians’ “just the facts” attitude can be downright alienating when it comes to more sensitive personality types. This applies not just to coworkers but to customers as well – service positions like retail sales and waiting tables, as well as more emotionally demanding careers such as psychiatry are, generally speaking, a terrible fit.</p>
				            <p>The ideal career paths feature a trend: they place facts above feelings and allow Logisticians to uphold the hard standards that are the backbone of society. Rules are the basis for everything people take for granted about modern life, from the social contract that smooths relationships, to the laws that protect peoples’ most basic safety, to the constitutions and treaties that govern nations. People with the Logistician personality type take on roles as the defenders of these ideas, in big ways and small, and are rightfully proud of it.</p>
				        </ul>
				        </div>
		    	</div>
            </div>
        </div>
    </div>
<!--	modal romantic -->
	<div id="ISTJRelationship" class="modal fade" >
        <div class="modal-dialog mdromantic" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="istj_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Logistician Relationships</center></h1>
                </div>
                <div class="modal-body modal-dialog-scrollable">
				    <div class="personalityinfo1">
				    	<p>Logisticians are dependable through and through, and this trait is clearly expressed when it comes to their romantic relationships. Often representing the epitome of family values, people with the Logistician personality type are comfortable with, and often even encourage traditional household and gender roles, and look to a family structure guided by clear expectations and honesty. While their reserved nature often makes dating Logisticians challenging, they are truly dedicated partners, willing to devote tremendous thought and energy to ensure stable and mutually satisfying relationships.</p>
 				   		<div class="scene">
				            <img alt="ISTJ personality" src="img/ISTJ_romantic.svg" alt="ISTJ personality">
			        	</div>
			        	<br>
				        <ul class="personalityinfo1">
				            <h2>Happiness and Moral Duty Are Inseparably Connected</h2>

				            <p>Blind dates and random hookups are not Logisticians’ preferred methods for finding potential partners. The risk and unpredictability of these situations has Logisticians’ alarm bells ringing, and being dragged out for a night of dancing at the club just isn’t going to happen. Logistician personalities much prefer more responsible, conservative methods of dating, such as dinner with an interested coworker or, in their more adventurous moods, a setup organized through a mutual friend.</p>

				            <p>Logisticians approach relationships, as with most things, from a rational perspective, looking for compatibility and the mutual satisfaction of daily and long-term needs. This isn’t a process that Logisticians take lightly, and once commitments are established, they stick to their promises to the very end. Logisticians establish foundations, fulfill their responsibilities, and keep their relationships functional and stable.</p>

				            <div class="description-pullout">As their relationships transitions into the long-term, Logisticians gladly see to the necessary daily tasks around the house, applying the same sense of duty to their home life that they do in the workplace.</div>

				            <p>While this may not translate into particularly exotic intimate lives, Logisticians are dependable lovers who want very much for their partners to remain satisfied. It takes patience on the part of more adventurous partners, but if different activities can be demonstrated as equally or more enjoyable than those already within Logisticians’ comfort zones, they are perfectly capable of trying something new.</p>

				            <p>However, emotional satisfaction can be another matter. While Logisticians are able to provide surprisingly good emotional support, this only happens when they realize that it’s necessary, and there’s the rub. Logisticians are not naturally receptive to others’ emotions, not unless they are stated clearly, and a partner usually only says “I’m angry” when it’s too late to address the initial grievance.</p>

				            <h2>Let Your Heart Feel Their Afflictions, and Give Proportionally</h2>

				            <p>People with the Logistician personality type can get so caught up in the belief in their correctness, in “winning” arguments they thought were about facts, that they don’t realize their partner may have viewed things from a perspective of consideration and sensitivity. Especially with more sensitive partners, this can be a huge challenge for the relationship. Ultimately though, Logisticians’ senses of responsibility and dedication set the tone, and they spare no effort in noting to this distinction moving forward, the consequences having been demonstrated as real.</p>

				            <p>While Logisticians’ staid approach may seem boring to some, there is an undeniable attractiveness to it, though felt perhaps more by respect and admiration than emotional passion. Logisticians’ shells hide a strong and quiet determination and reliability, rare among other personality types, which can benefit even the flightiest personalities, allowing them to stay connected to the real world while still exploring new territory. Partners who share the Observant (S) trait are the best fit for Logistician personalities, with one or two opposing traits to create balance and to expand Logisticians’ sometimes overly isolated world, such as partners with Extraverted (E) or Prospecting (P) traits.</p>
 				        </ul>
			        </div>
		    	</div>
            </div>
        </div>
    </div>
<!--	modal strength/weak -->
    <div id="ISTJsw" class="modal fade" >
        <div class="modal-dialog mdsw" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="istj_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Logistician Strengths and Weaknesses</center></h1>
                </div>
                <div class="modal-body modal-dialog-scrollable">
                	<div class="personalityinfo1">
        				<p>The ISTJ personality type is thought to be the most abundant, making up around 13% of the population. Their defining characteristics of integrity, practical logic and tireless dedication to duty make ISTJs a vital core to many families, as well as organizations that uphold traditions, rules and standards, such as law offices, regulatory bodies and military. People with the ISTJ personality type enjoy taking responsibility for their actions, and take pride in the work they do – when working towards a goal, ISTJs hold back none of their time and energy completing each relevant task with accuracy and patience.</p>
        
	        	        <div class="scene">
				            <img alt="ISTJ personality" src="img/ISTJ_strengths.svg" alt="ISTJ personality">
				        </div>
					    <div class="personalitycover">
				            <h1>Logistician Strengths</h1>
				        </div>
				        <br>
				        <ul class="personalityinfo1">
				            <li><p><strong>Honest and Direct</strong> – Integrity is the heart of the Logistician personality type. Emotional manipulation, mind games and reassuring lies all run counter to Logisticians’ preference for managing the reality of the situations they encounter with plain and simple honesty.</p></li>
				            <li><p><strong>Strong-willed and Dutiful</strong> – Logisticians embody that integrity in their actions too, working hard and staying focused on their goals. Patient and determined, people with the Logistician personality type meet their obligations, period.</p></li>
				            <li><p><strong>Very Responsible</strong> – Logisticians’ word is a promise, and a promise means everything. Logisticians would rather run themselves into the ground with extra days and lost sleep than fail to deliver the results they said they would. Loyalty is a strong sentiment for Logistician personalities, and they fulfill their duties to the people and organizations they’ve committed themselves to.</p></li>
				            <li><p><strong>Calm and Practical</strong> – None of their promises would mean much if Logisticians lost their tempers and broke down at every sign of hardship – they keep their feet on the ground and make clear, rational decisions. Peoples’ preferences are a factor to consider in this process, and Logisticians work to make the best use of individual qualities, but these decisions are made with effectiveness in mind more so than empathy. The same applies to criticisms, for others and themselves.</p></li>
				            <li><p><strong>Create and Enforce Order</strong> – The primary goal of any Logistician is to be effective in what they’ve chosen to do, and they believe that this is accomplished best when everyone involved knows exactly what is going on and why. Unclear guidelines and people who break established rules undermine this effort, and are rarely tolerated by Logisticians. Structure and rules foster dependability; chaos creates unforeseen setbacks and missed deadlines.</p></li>
				            <li><p><strong>Jacks-of-all-trades</strong> – Much like Analyst personality types, Logisticians are proud repositories of knowledge, though the emphasis is more on facts and statistics than concepts and underlying principles. This allows Logisticians to apply themselves to a variety of situations, picking up and applying new data and grasping the details of challenging situations as a matter of course.</p></li>
				        </ul>
				        </div>

				        <div class="scene">
				            <img alt="ISTJ personality" src="img/ISTJ_weaknesses.svg" alt="ISTJ personality">
				        </div>
				        <div class="personalitycover">
				            <h1>Logistician Weaknesses</h1>
				        </div>
				        <br>
				        <ul class="personalityinfo1">
				            <li><p><strong>Stubborn</strong> – The facts are the facts, and Logisticians tend to resist any new idea that isn’t supported by them. This factual decision-making process also makes it difficult for people with the Logistician personality type to accept that they were wrong about something – but anyone can miss a detail, even them.</p></li>
				            <li><p><strong>Insensitive</strong> – While not intentionally harsh, Logisticians often hurt more sensitive types’ feelings by the simple mantra that honesty is the best policy. Logistician personalities may take emotions into consideration, but really only so far as to determine the most effective way to say what needs to be said.</p></li>
				            <li><p><strong>Always by the Book</strong> – Logisticians believe that things work best with clearly defined rules, but this makes them reluctant to bend those rules or try new things, even when the downside is minimal. Truly unstructured environments leave Logisticians all but paralyzed.</p></li>
				            <li><p><strong>Judgmental</strong> – Opinions are opinions and facts are facts, and Logisticians are unlikely to respect people who disagree with those facts, or especially those who remain willfully ignorant of them.</p></li>
				            <li><p><strong>Often Unreasonably Blame Themselves</strong> – All this can combine to make Logisticians believe they are the only ones who can see projects through reliably. As they load themselves with extra work and responsibilities, turning away good intentions and helpful ideas, Logisticians sooner or later hit a tipping point where they simply can’t deliver. Since they’ve heaped the responsibility on themselves, Logisticians then believe the responsibility for failure is theirs alone to bear.</p></li>
				        </ul>
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

	function ISTJCareer(){
		$('#ISTJCareer').modal({'backdrop':'static'});
	}
	function ISTJRelationship(){
		$('#ISTJRelationship').modal({'backdrop':'static'});
	}
	function ISTJsw(){
		$('#ISTJsw').modal({'backdrop':'static'});
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
