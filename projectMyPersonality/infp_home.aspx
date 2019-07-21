<%@ Page Language="C#" AutoEventWireup="true" CodeFile="infp_home.aspx.cs" Inherits="infp_home" %>

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
 <%--           <a href="User_Home.php" class="btn btn-info">HOME</a>--%>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>
        <div class="personalitycover">
           <img src="infp_public/diplomats_Mediator_INFP_introduction.svg">
            <h1><center>INFP Personality (“The Mediator”)</center></h1>
            <blockquote>
                <p>All that is gold does not glitter; not all those who wander are lost; the old that is strong does not wither; deep roots are not reached by the frost.</p>
                <footer>J. R. R. TOLKIEN</footer>
            </blockquote>
            <br/><br/>
            <div class="row frame">
                <div class="col-md-4 ">
            	    <div class="career">
            		    <img src="icon/002-promotion.png" class="center" />
                        <center><asp:button class="btn btn-link text" ID="btnCareer" OnClick="btnCareer_Click" UseSubmitBehavior="false" runat="server" text="INFP's CAREER" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
	                </div>
                </div>
                <div class="col-md-4 ">
            	    <div class="romantic">
            		    <img src="icon/003-love-letter.png" class="center" />
                        <center><asp:button class="btn btn-link text" ID="btnRomantic" OnClick="btnRomantic_Click" UseSubmitBehavior="false" runat="server" text="INFP's RELATIONSHIP" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
            	    </div>
                </div>
                <div class="col-md-4 ">
            	    <div class="sw">
            		    <img src="icon/001-carnival.png" class="center" />
                        <center><asp:button class="btn btn-link text" ID="btnsw" OnClick="btnsw_Click" UseSubmitBehavior="false" runat="server" text="INFP's STRENGTHNESS & WEAKNESS" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
	                </div>
                </div>
            </div>
        </div><br/><br/>
        <div style="background-color: #f5f5f5;">
    	    <p style="font-family: 'Good Feeling Sans Demo';font-size: 25px;margin-left: 50px;">Mediators You May Know</p>
        </div><br/><br/>
        <%--<div class="swiper-container">
	        <div class="swiper-wrapper">
	          <div class="swiper-slide">
	                <img class="img-responsive" src="infp_public/diplomats_INFP_william_shakespeare.svg">
	                <p class="celebname">William Shackspeare</p>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive" src="infp_public/diplomats_INFP_j_r_r_tolkien.svg">
				    <p class="celebname">J.R.R Tolkien</p>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive" src="infp_public/diplomats_INFP_bjork.svg">
				    <p class="celebname">Bjork</p>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive"  src="infp_public/diplomats_INFP_johnny_depp.svg">
				    <p class="celebname">Johnny Depp</p>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive"  src="infp_public/diplomats_INFP_julia_roberts.svg">
				    <p class="celebname">Julia Roberts</p>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive"  src="infp_public/diplomats_INFP_lisa_kudrow.svg">
				    <p class="celebname">Lisa Kudrow</p>
	          </div>
              <div class="swiper-slide">
				    <img class="img-responsive"  src="infp_public/diplomats_INFP_frodo_baggins_the_lord_of_the_rings.svg">
				    <p class="celebname">Frodo Baggins</p>
				    <h5>The Lord of The Rings</h5>
	          </div>
              <div class="swiper-slide">
				    <img class="img-responsive"  src="infp_public/diplomats_INFP_fox_mulder_x_files.svg">
				    <p class="celebname">Fox Mulder</p>
				    <h5>X-Files</h5>
	          </div>
	        <!-- Add Pagination -->
	        <div class="swiper-pagination"></div>

	        <!-- Add Arrows -->
	        <div class="swiper-button-next"></div>
	        <div class="swiper-button-prev"></div>
	      </div>
	    </div>--%>
        <%--ini--%>
     <div class="swiper-container">
	    <div class="swiper-wrapper">
	      <div class="swiper-slide">
	            <img class="img-responsive" src="infp_public/diplomats_INFP_alicia_keys.svg">
	            <p class="celebname">Alicia Keys</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive" src="infp_public/diplomats_INFP_amelie_poulain_amelie.svg">
				<p class="celebname">Amelia Poulain_Amelie</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive" src="infp_public/diplomats_INFP_anne_green_gables.svg">
				<p class="celebname">Anne Green Gables</p>
				<h5>Game of Thrones</h5>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive"  src="infp_public/diplomats_INFP_bjork.svg">
				<p class="celebname">Bjork</p>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive"  src="infp_public/diplomats_INFP_johnny_depp.svg">
				<p class="celebname">Johny Depp</p>
				<h5>Harry Potter</h5>
	      </div>
	      <div class="swiper-slide">
				<img class="img-responsive"  src="infp_public/diplomats_INFP_julia_roberts.svg">
				<p class="celebname">Julia Roberts</p>
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
        <div id="INFPCareer" class="modal fade" >
            <div class="modal-dialog mdcareer" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">                
                        <a href="INFP_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                        <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Mediators Careers</center></h1>
                    </div>
                    <div class="modal-body modal-dialog-scrollable">
				        <div class="personalityinfo1">
				        <p>It is perhaps more challenging for Mediators to find a satisfying career than any other type. Though intelligent, the regimented learning style of most schools makes long years earning an advanced degree a formidable undertaking for people with the Mediator personality type – at the same time, that’s often what’s needed to advance in a field that rings true for them. Mediators often wish that they could just be, doing what they love without the stress and rigor of professional life.</p>
				        <p>Oftentimes, as with so many things, the answer lies somewhere in the middle, in a line of work that begins with passion and dedication, but which comes to require training so that the academia feels intimately linked to that passion. Too many Mediators drift in frustration, ultimately succumbing to the necessities of day-to-day life in a job that wasn’t meant for them. But it turns out that, despite such exacting demands, modern economics places a premium on the very keys to Mediators’ challenges: their creativity, independence, and need for meaningful relationships with individuals who need their help.</p>
				            <div class="scene">
				                <img alt="INFP personality" src="infp_public/diplomats_Mediator_INFP_career_path.svg" alt="INFP personality">
				            </div>
				            <br>
				            <ul class="personalityinfo1">
				                <h2>There’s Place and Means for Everyone</h2>

                                <p>First and foremost is seemingly every Mediators’ dream growing up – to become an author. While a novel is a classic choice, it is rarely an accessible one, and there are many viable options for freedom-loving Mediators. The internet brings to the world the opportunities of blogging and freelance work – as organizations expand their reach beyond their native tongues, they will come to depend on Mediator personality types, with their gift for language and written expression, to take their rougher translations and stale pitches and inject them with a sense of beauty and poetry. Smaller organizations will need more than ever to express with elegance the value they bring to local communities.</p>

                                <div class="description-pullout">Most any cause, idea, or field can benefit from the artful and natural expression that Mediators bring to the table, and Mediators have their pick of the world in choosing who they work with.</div>

                                <p>The real beauty here is that it takes a core interest that people with the Mediator personality type share, while helping a cause they believe in, independently, through creative expression and personal growth, and makes it applicable to any interest there is. There will always be a need, and now more than ever, to win people’s hearts and minds with the written word.</p>

                                <p>Some Mediators will prefer a still more personal touch, being able to work face-to-face with clients, seeing that their personal effort really impacts another’s quality of life. Service careers such as massage therapy, physical rehabilitation, counselling, social work, psychology and even academic roles and retraining can be exceptionally rewarding for Mediators, who take pride in the progress and growth they help to foster. People with the Mediator personality type have a tendency to put others’ interests ahead of their own, a mixed blessing by itself, but when a patient takes their first unaided step in the long road to recovery after an accident, nothing will feel more rewarding than that selflessness.</p>
                                
                                <h2>If to Do Were as Easy as to Know What Were Good to Do...</h2>

                                <p>Where Mediators will not thrive is in a high-stress, team-heavy, busy environment that burdens them with bureaucracy and tedium. Mediators need to be able to work with creativity and consideration – high-pressure salespeople they are not. It can be a challenge to avoid these roles, as they are the basis for so much starting work, and it’s often a risk to break away into something less dependable, but more rewarding. To find a career that resonates with Mediators’ values though, that’s more than just a job, sometimes it’s just what needs to be done.</p>
                          </div>
		    	    </div>
                </div>
            </div>
        </div>
        <!--	modal romantic -->
	    <div id="INFPRelationship" class="modal fade" >
            <div class="modal-dialog mdromantic" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">                
                        <a href="infp_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                        <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Mediators Relationships</center></h1>
                    </div>
                    <div class="modal-body modal-dialog-scrollable">
				        <div class="personalityinfo1">
				    	    <p>Mediators are dreamy idealists, and in the pursuit of the perfect relationship, this quality shows strongest. Never short on imagination, Mediators dream of the perfect relationship, forming an image of this pedestalled ideal that is their soul mate, playing and replaying scenarios in their heads of how things will be. This is a role that no person can hope to fill, and people with the Mediator personality type need to recognize that nobody’s perfect, and that relationships don’t just magically fall into place – they take compromise, understanding and effort.</p>
                            <div class="scene">
				                <img alt="INFP personality" src="infp_public/diplomats_Mediator_INFP_romantic_relationships.svg" alt="INFP personality">
			        	    </div>
			        	    <br>
				            <ul class="personalityinfo1">
                                <p>Fortunately these are qualities that Mediators are known for, and while it can be a challenge to separate long-fostered fantasy from reality, Mediators’ tendency to focus their attention on just a few people in their lives means that they will approach new relationships wholeheartedly, with a sense of inherent value, dedication and trust.</p>

                                <div class="description-pullout"><div class="description-pullout">If these couples can manage this balance of mutual appreciation and goal-setting, they will come to find that the best Defender qualities emerge later in the relationship, as they work towards establishing families and homes together.</div></div>

                                <p>But Mediators aren’t necessarily in a rush to commit – they are, after all, Prospecting (P) types, and are almost always looking to either establish a new relationship or improve an existing one – they need to be sure they’ve found someone compatible. In dating, Mediators will often start with a flurry of comparisons, exploring all the ways the current flame matches with the ideal they’ve imagined. This progression can be a challenge for a new partner, as not everyone is able to keep up with Mediators’ rich imagination and moral standards – if incompatibilities and conflict over this initial rush mount, the relationship can end quickly, with Mediators likely sighing that “it wasn’t meant to be.”</P>
                                
                                <p>As a relationship takes hold, people with the Mediator personality type will show themselves to be passionate, hopeless romantics, while still respecting their partners’ independence. Mediators take the time to understand those they care about, while at the same time helping them to learn, grow and change. While Mediators are well-meaning, not everyone appreciates what can come across as constantly being told that they need to improve – or, put another way, that they’re not good enough. Mediators would be aghast to find that their intents were interpreted this way, but it’s a real risk, and if their partner is as averse to conflict as Mediators themselves, it can boil under the surface for some time before surfacing, too late to fix.</p>

                                <h2>Better Three Hours Too Soon Than a Minute Too Late</h2>

                                <p>This aversion to conflict, while contributing greatly to stability in the relationship when done right, is probably the most urgent quality for Mediators to work on. Between their sensitivity and imagination, Mediators are prone to internalizing even objective statements and facts, reading into them themes and exaggerated consequences, sometimes responding as though these comments are metaphors designed to threaten the very foundations of their principles. Naturally this is almost certainly an overreaction, and Mediators should practice what they preach, and focus on improving their ability to respond to criticism with calm objectivity, rather than irrational accusations and weaponized guilt.</p>

                                <p>But that’s at their uncommon worst – at their best, Mediators do everything they can to be the ideal partner, staying true to themselves and encouraging their partners to do the same. Mediators take their time in becoming physically intimate so that they can get to know their partners, using their creativity to understand their wants and needs, and adapt to them. People with this personality type are generous in their affection, with a clear preference for putting the pleasure of their partners first – it is in knowing that their partners are satisfied that Mediators truly feel the most pleasure.</p>

                                <%--<p>Nor is the pleasure they take in ensuring their partners’ happiness limited to the bedroom – Defenders spend an enormous amount of time and energy finding ways to keep their relationship satisfying for their partners. All they ask in return is commitment, love and, perhaps most of all, appreciation.</p>--%>

                                <h2>Like All the Best Families, We Have Our Disagreements...</h2>

                                <p>However, not everyone is prepared to pay even that small price for the benefit of Defenders’ kindness. If their partners aren’t willing or able to express this thanks, or worse still are openly critical of their Defender partners, they will find that, given time and pressure, all of those repressed emotions can burst forth in massive verbal attacks that all the future regret in the world won’t blunt.</p>

                                <p>These outbursts are something to watch out for, but the more pervasive issue in Defenders’ relationships is that it can be too easy for their altruism and kindness to be taken advantage of, maybe even without their partners realizing it, while leaving Defenders’ own needs and dreams unfulfilled. This is something that Defenders’ partners, and Defender personalities themselves, must look after if they want the sort of long, fulfilling relationships they dream about. Expressing appreciation is often more than just the right words, it is reciprocation.</p>

                                <p>While perfectly capable in the workplace and among friends, Defenders’ true passions lie in taking care of their families, from playing with their children to the mundane needs of the household, efforts Defenders are only too happy to contribute.</p>

                                <p>Defenders are trustworthy, loyal, loving and faithful and nothing brings them more joy than the commitment of an appreciative and thriving relationship. The best matches are those who share these sensibilities, namely those who share the Observant (S) trait, with one or two opposing traits to ensure that both partners have room to grow, develop and help each other along, ’til the end of their days.</p>
 				            </ul>
			            </div>
		    	    </div>
                </div>
            </div>
        </div>
        <div id="INFPsw" class="modal fade" >
            <div class="modal-dialog mdsw" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="infp_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Mediator Strengths and Weaknesses</center></h1>
                </div>
                <div class="modal-body modal-dialog-scrollable">
                	<div class="personalityinfo1">
        				<p>The INFP personality type is thought to be the most abundant, making up around 13% of the population. Their defining characteristics of integrity, practical logic and tireless dedication to duty make INFPs a vital core to many families, as well as organizations that uphold traditions, rules and standards, such as law offices, regulatory bodies and military. People with the INFP personality type enjoy taking responsibility for their actions, and take pride in the work they do – when working towards a goal, INFPs hold back none of their time and energy completing each relevant task with accuracy and patience.</p>
        
	        	        <div class="scene">
				            <img alt="INFP personality" src="img/INFP_strengths.svg" alt="INFP personality">
				        </div>
					    <div class="personalitycover">
				            <h1>Mediator Strengths</h1>
				        </div>
				        <br>
				        <ul class="personalityinfo1">
				            <li><p><strong>Idealistic</strong> – Mediators’ friends and loved ones will come to admire and depend on them for their optimism. Their unshaken belief that all people are inherently good, perhaps simply misunderstood, lends itself to an incredibly resilient attitude in the face of hardship.</p></li>
				            <li><p><strong>Seek and Value Harmony</strong> – People with the Mediator personality type have no interest in having power over others, and don’t much care for domineering attitudes at all. They prefer a more democratic approach, and work hard to ensure that every voice and perspective is heard.</p></li>
				            <li><p><strong>Open-Minded and Flexible</strong> –  A live-and-let-live attitude comes naturally to Mediators, and they dislike being constrained by rules. Mediators give the benefit of the doubt too, and so long as their principles and ideas are not being challenged, they’ll support others’ right to do what they think is right.</p></li>
				            <li><p><strong>Very Creative</strong> – Mediators combine their visionary nature with their open-mindedness to allow them to see things from unconventional perspectives. Being able to connect many far-flung dots into a single theme, it’s no wonder that many Mediators are celebrated poets and authors.</p></li>
				            <li><p><strong>Passionate and Energetic</strong> – When something captures Mediators’ imagination and speaks to their beliefs, they go all in, dedicating their time, energy, thoughts and emotions to the project. Their shyness keeps them from the podium, but they are the first to lend a helping hand where it’s needed.</p></li>
				            <li><p><strong>Dedicated and Hard-Working</strong> – While others focusing on the challenges of the moment may give up when the going gets tough, Mediators (especially Assertive ones) have the benefit of their far-reaching vision to help them through. Knowing that what they are doing is meaningful gives people with this personality type a sense of purpose and even courage when it comes to accomplishing something they believe in.</p></li>
				        </ul>
				        </div>

				        <div class="scene">
				            <img alt="INFP personality" src="img/INFP_weaknesses.svg" alt="INFP personality">
				        </div>
				        <div class="personalitycover">
				            <h1>Mediator Weaknesses</h1>
				        </div>
				        <br>
				        <ul class="personalityinfo1">
				            <li><p><strong>Too Idealistic</strong> – Mediators often take their idealism too far, setting themselves up for disappointment as, again and again, evil things happen in the world. This is true on a personal level too, as Mediators may not just idealize their partners, but idolize them, forgetting that no one is perfect.</p></li>
				            <li><p><strong>Too Altruistic</strong> – Mediators sometimes see themselves as selfish, but only because they want to give so much more than they are able to. This becomes a self-fulfilling prophecy, as they try to push themselves to commit to a chosen cause or person, forgetting to take care of the needs of others in their lives, and especially themselves.</p></li>
				            <li><p><strong>Impractical</strong> – When something captures Mediators’ imagination, they can neglect practical matters like day-to-day maintenance and simple pleasures. Sometimes people with the Mediator personality type will take this asceticism so far as to neglect eating and drinking as they pursue their passion or cause.</p></li>
				            <li><p><strong>Dislike Dealing WIth Data</strong> – Mediators are often so focused on the big picture that they forget the forest is made of individual trees. Mediators are in tune with emotions and morality, and when the facts and data contradict their ideals, it can be a real challenge for them.</p></li>
				            <li><p><strong>Take Things Personally</strong> – Mediators often take challenges and criticisms personally, rather than as inspiration to reassess their positions. Avoiding conflict as much as possible, Mediators will put a great deal of time and energy into trying to align their principles and the criticisms into a middle ground that satisfies everybody.</p></li>
				            <li><p><strong>Difficult to Get to Know</strong> – Mediators are private, reserved and self-conscious. This makes them notoriously difficult to really get to know, and their need for these qualities contributes to the guilt they often feel for not giving more of themselves to those they care about.</p></li>
                        </ul>
				    </div>
		    	</div>
            </div>
        </div>
    </form>
</body>

<script src="tools/js/swiper.min.js"></script>
<script type="text/javascript">

	function INFPCareer(){
		$('#INFPCareer').modal({'backdrop':'static'});
	}
	function INFPRelationship(){
		$('#INFPRelationship').modal({'backdrop':'static'});
	}
	function INFPsw(){
		$('#INFPsw').modal({'backdrop':'static'});
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
