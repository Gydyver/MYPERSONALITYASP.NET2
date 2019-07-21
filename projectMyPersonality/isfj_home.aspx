<%@ Page Language="C#" AutoEventWireup="true" CodeFile="isfj_home.aspx.cs" Inherits="isfj_home" %>

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
            <a href="personalitytypes.aspx">PERSONALITY TYPE</a>
            <%--<a href="isfj_home.aspx.aspx" class="btn btn-info">HOME</a>--%>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>
        <div class="personalitycover">
           <img src="isfj_public/sentinels_Defender_ISFJ_introduction.svg">
            <h1><center>ISFJ Personality (“The Defender”)</center></h1>
            <blockquote>
                <p>Love only grows by sharing. You can only have more for yourself by giving it away to others.</p>
                <footer>Brian Tracy</footer>
            </blockquote>
            <br/><br/>
            <div class="row frame">
                <div class="col-md-4 ">
            	    <div class="career">
            		    <img src="icon/002-promotion.png" class="center" />
                        <center><asp:button class="btn btn-link text" ID="btnCareer" OnClick="btnCareer_Click" UseSubmitBehavior="false" runat="server" text="ISFJ's CAREER" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
	                </div>
                </div>
                <div class="col-md-4 ">
            	    <div class="romantic">
            		    <img src="icon/003-love-letter.png" class="center" />
                        <center><asp:button class="btn btn-link text" ID="btnRomantic" OnClick="btnRomantic_Click" UseSubmitBehavior="false" runat="server" text="ISFJ's RELATIONSHIP" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
            	    </div>
                </div>
                <div class="col-md-4 ">
            	    <div class="sw">
            		    <img src="icon/001-carnival.png" class="center" />
                        <center><asp:button class="btn btn-link text" ID="btnsw" OnClick="btnsw_Click" UseSubmitBehavior="false" runat="server" text="ISFJ's STRENGTHNESS & WEAKNESS" Font-Names="Good Feeling Sans Demo" Font-Size="14"></asp:button></center>
	                </div>
                </div>
            </div>
        </div><br/><br/>
        <div style="background-color: #f5f5f5;">
    	    <p style="font-family: 'Good Feeling Sans Demo';font-size: 25px;margin-left: 50px;">Defenders You May Know</p>
        </div><br/><br/>
        <div class="swiper-container">
	        <div class="swiper-wrapper">
	          <div class="swiper-slide">
	                <img class="img-responsive" src="isfj_public/sentinels_ISFJ_beyonce.svg">
	                <p class="celebname">Beyonce</p>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive" src="isfj_public/sentinels_ISFJ_queen_elizabeth_II.svg">
				    <p class="celebname">Queen Elizabeth II</p>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive" src="isfj_public/sentinels_ISFJ_vin_diesel.svg">
				    <p class="celebname">Vin Diesel</p>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive"  src="isfj_public/sentinels_ISFJ_samwise_gamgee_the_lord_of_the_rings.svg">
				    <p class="celebname">Samwise Gamgee</p>
				    <h5>The Lord of The Rings</h5>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive"  src="isfj_public/sentinels_ISFJ_selena_gomez.svg">
				    <p class="celebname">Selena Gomez</p>
	          </div>
	          <div class="swiper-slide">
				    <img class="img-responsive"  src="isfj_public/sentinels_ISFJ_will_turner_pirates_of_the_caribbean.svg">
				    <p class="celebname">Will Turner</p>
				    <h5>Pirates of The Carribean</h5>
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
        <div id="ISFJCareer" class="modal fade" >
            <div class="modal-dialog mdcareer" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">                
                        <a href="isfj_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                        <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Defenders Careers</center></h1>
                    </div>
                    <div class="modal-body modal-dialog-scrollable">
				        <div class="personalityinfo1">
				        <p>In many ways, Defenders are the backbone of the modern workforce. Altruistic and well-rounded, no other personality type is so well-suited to be of service of others. It is no surprise that many Defenders are not just good at supporting their coworkers and customers in human resources and support positions, they genuinely enjoy it, as it gives them the chance to calm frustrations, see things through to a practical solution, and to be thanked, appreciated, at the close of each ordeal.</p>
				            <div class="scene">
				                <img alt="ISFJ personality" src="isfj_public/sentinels_Defender_ISFJ_career_path.svg" alt="ISFJ personality">
				            </div>
				            <br>
				            <ul class="personalityinfo1">
				                <h2>Be Humble and Earnest</h2>

                                <p>Defenders are skilled at remembering things about others which makes them not only valuable assistants, but well-liked colleagues. People with the Defender personality type can always be counted on to remember a birthday, a graduation, or simply a frequent customers’ name, and that can make all the difference. Add to these amiable qualities Defenders’ meticulousness, hard work and dedication, and it’s no surprise that their careers often progress smoothly, with few of the ups and downs that accompany more high-flying types.</p>

                                <p>However, Defenders are unlikely to actively seek out managerial positions, and are still more unlikely to brag about their accomplishments. Defender personalities prefer to be rewarded by seeing first-hand the positive impact of their efforts, and will remain enthusiastic simply knowing that what they do is genuinely appreciated by the people they care for. This makes them natural counselors, technical support, and interior designers, where they are able to help others one-on-one without having to worry about corporate politics.</p>

                                <div class="description-pullout">Whether they seek promotion or not it happens often enough, as Defenders’ ability to implement ideas and “create order from chaos” is bound to make an impression.</div>

                                <p>Respecting tradition and security, Defenders have no problem with the idea of moving along in a structured hierarchy, and while they may not always seek out these managerial positions, they fill them well. Defenders are well-tuned to others’ emotions and have a strong sense of practicality, extending their own ability to get things done to their teams.</p>

                                <p>Where Defenders struggle is in generating new ideas and in grasping abstract concepts – fields like academic research and corporate strategy are too intangible and too impersonal to utilize Defenders’ strengths. Similar challenges arise in more typical careers when changes are forced through by Defenders’ employers – advance warning and a proper explanation can help to smooth the shock, but if the changes cut back on things like the quality of customer service, it can feel like a betrayal in the face of their loyalty and dedication.</p>

                                <h2>Live Pleasantly and Do Good</h2>

                                <p>Strong, well-developed institutions alongside like-minded friends are attractive workplaces for people with the Defender personality type, and careers as nurses, elementary school teachers and social and religious workers are attractive options. Sometimes the desire to help others is enough in itself – it’s not uncommon to find Defenders volunteering and helping the community at shelters, food banks and their children’s schools. Defenders are warm, service-oriented people, and hardly anyone is more welcome in these (and many, many other) roles.</p>				            </ul>
				            </div>
		    	    </div>
                </div>
            </div>
        </div>
    <!--	modal romantic -->
	    <div id="ISFJRelationship" class="modal fade" >
            <div class="modal-dialog mdromantic" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">                
                        <a href="isfj_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                        <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Defenders Relationships</center></h1>
                    </div>
                    <div class="modal-body modal-dialog-scrollable">
				        <div class="personalityinfo1">
				    	    <p>When it comes to romantic relationships, Defenders’ kindness grows into a joy that is only found in taking care of their family and home, in being there for emotional and practical support whenever it’s needed. Home is where the heart is for people with the Defender personality type, and in no other area of their lives do they strive with such dedication to create the harmony and beauty they wish to see in the world.</p>
                            <div class="scene">
				                <img alt="ISFJ personality" src="isfj_public/sentinels_Defender_ISFJ_romantic_relationships.svg" alt="ISFJ personality">
			        	    </div>
			        	    <br>
				            <ul class="personalityinfo1">
                                <p>The trouble is, these are the benefits of an established long-term relationship, and Defenders’ unbearable shyness means it can take a long time to reach this point. Defenders are most attractive when they are simply being themselves in a comfortable environment such as work, where their natural flow shows this kindness and dedication. Relationships built on established familiarity are a warm prospect for Defenders – they take dating seriously and only enter into relationships that have a real chance of lasting a lifetime.</p>

                                <h2>Our Upward Course Is Due to Our Soundness of Heart</h2>

                                <p>Defenders’ shyness and sensitivity shield what are, beneath the surface, incredibly strong feelings. While not always obvious to others, this river of emotion can’t be taken lightly or for granted – Defender personalities can value the idea of committed romance almost as highly as some regard religious beliefs. Hard as it may be, if either dating partner doubts their feelings, they must part ways before real emotional damage is done.</p>

                                <p>As their relationships do progress, Defenders often continue to struggle with emotional expression, but they have the opportunity to let physical affection stand in for their loving words. People with this personality type take no greater joy than in pleasing others, often even considering this a personal duty, and this applies to intimacy as well. While dutiful sex may not sound especially attractive in those specific terms, intimacy is tremendously important to Defenders, and they spare no effort in this department.</p>

                                <p>Nor is the pleasure they take in ensuring their partners’ happiness limited to the bedroom – Defenders spend an enormous amount of time and energy finding ways to keep their relationship satisfying for their partners. All they ask in return is commitment, love and, perhaps most of all, appreciation.</p>

                                <h2>Like All the Best Families, We Have Our Disagreements...</h2>

                                <p>However, not everyone is prepared to pay even that small price for the benefit of Defenders’ kindness. If their partners aren’t willing or able to express this thanks, or worse still are openly critical of their Defender partners, they will find that, given time and pressure, all of those repressed emotions can burst forth in massive verbal attacks that all the future regret in the world won’t blunt.</p>

                                <p>These outbursts are something to watch out for, but the more pervasive issue in Defenders’ relationships is that it can be too easy for their altruism and kindness to be taken advantage of, maybe even without their partners realizing it, while leaving Defenders’ own needs and dreams unfulfilled. This is something that Defenders’ partners, and Defender personalities themselves, must look after if they want the sort of long, fulfilling relationships they dream about. Expressing appreciation is often more than just the right words, it is reciprocation.</p>

                                <div class="description-pullout">If these couples can manage this balance of mutual appreciation and goal-setting, they will come to find that the best Defender qualities emerge later in the relationship, as they work towards establishing families and homes together.</div>

                                <p>While perfectly capable in the workplace and among friends, Defenders’ true passions lie in taking care of their families, from playing with their children to the mundane needs of the household, efforts Defenders are only too happy to contribute.</p>

                                <p>Defenders are trustworthy, loyal, loving and faithful and nothing brings them more joy than the commitment of an appreciative and thriving relationship. The best matches are those who share these sensibilities, namely those who share the Observant (S) trait, with one or two opposing traits to ensure that both partners have room to grow, develop and help each other along, ’til the end of their days.</p>
 				            </ul>
			            </div>
		    	    </div>
                </div>
            </div>
        </div>
    <!--	modal strength/weak -->
        <div id="ISFJsw" class="modal fade" >
            <div class="modal-dialog mdsw" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">                
                        <a href="ISFJ_home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                        <h1 style="font-family: Good Feeling Sans Demo;font-size: 40px;text-align: center;"><center>Defenders Strengths and Weaknesses</center></h1>
                    </div>
                    <div class="modal-body modal-dialog-scrollable">
                	    <div class="personalityinfo1">
        				    <p>The ISFJ personality type is thought to be the most abundant, making up around 13% of the population. Their defining characteristics of integrity, practical logic and tireless dedication to duty make ISFJs a vital core to many families, as well as organizations that uphold traditions, rules and standards, such as law offices, regulatory bodies and military. People with the ISFJ personality type enjoy taking responsibility for their actions, and take pride in the work they do – when working towards a goal, ISFJs hold back none of their time and energy completing each relevant task with accuracy and patience.</p>
        
	        	            <div class="scene">
				                <img alt="ISFJ personality" src="isfj_public/sentinels_Defender_ISFJ_strengths.svg" alt="ISFJ personality">
				            </div>
					        <div class="personalitycover">
				                <h1>Defenders Strengths</h1>
				            </div>
				            <br>
				            <ul class="personalityinfo1">
                                <li><strong>Supportive</strong> – Defenders are the universal helpers, sharing their knowledge, experience, time and energy with anyone who needs it, and all the more so with friends and family. People with this personality type strive for win-win situations, choosing empathy over judgment whenever possible.</li>
                                <li><strong>Reliable and Patient</strong> – Rather than offering sporadic, excited rushes that leave things half finished, Defenders are meticulous and careful, taking a steady approach and bending with the needs of the situation just enough to accomplish their end goals. Defenders not only ensure that things are done to the highest standard, but often go well beyond what is required.</li>
                                <li><strong>Imaginative and Observant</strong> – Defenders are very imaginative, and use this quality as an accessory to empathy, observing others’ emotional states and seeing things from their perspective. With their feet firmly planted on the ground, it is a very practical imagination, though they do find things quite fascinating and inspiring.</li>
                                <li><strong>Enthusiastic</strong> – When the goal is right, Defenders take all this support, reliability and imagination and apply it to something they believe will make a difference in people’s lives – whether fighting poverty with a global initiative or simply making a customer’s day.</li>
                                <li><strong>Loyal and Hard-Working</strong> – Given a little time, this enthusiasm grows into loyalty – Defender personalities often form an emotional attachment to the ideas and organizations they’ve dedicated themselves to. Anything short of meeting their obligations with good, hard work fails their own expectations.</li>
                                <li><strong>Good Practical Skills</strong> – The best part is, Defenders have the practical sense to actually do something with all this altruism. If mundane, routine tasks are what need to be done, Defenders can see the beauty and harmony that they create, because they know that it helps them to care for their friends, family, and anyone else who needs it.</li>
				            </ul>
				            </div>

				            <div class="scene">
				                <img alt="ISFJ personality" src="isfj_public/sentinels_Defender_ISFJ_weaknesses.svg" alt="ISFJ personality">
				            </div>
				            <div class="personalitycover">
				                <h1>Defenders Weaknesses</h1>
				            </div>
				            <br>
				            <ul>
                                <li><strong>Humble and Shy</strong> – The meek shall inherit the earth, but it’s a long road if they receive no recognition at all. This is possibly Defenders’ biggest challenge, as they are so concerned with others’ feelings that they refuse to make their thoughts known, or to take any duly earned credit for their contributions. Defenders’ standards for themselves are also so high that, knowing they could have done some minor aspect of a task better, they often downplay their successes entirely.</li>
                                <li><strong>Take Things Too Personally</strong> – Defenders have trouble separating personal and impersonal situations – any situation is still an interaction between two people, after all – and any negativity from conflict or criticism can carry over from their professional to their personal lives, and back again.</li>
                                <li><strong>Repress Their Feelings</strong> – People with the Defender personality type are private and very sensitive, internalizing their feelings a great deal. Much in the way that Defenders protect others’ feelings, they must protect their own, and this lack of healthy emotional expression can lead to a lot of stress and frustration.</li>
                                <li><strong>Overload Themselves</strong> – Their strong senses of duty and perfectionism combine with this aversion to emotional conflict to create a situation where it is far too easy for Defenders to overload themselves – or to be overloaded by others – as they struggle silently to meet everyone’s expectations, especially their own.</li>
                                <li><strong>Reluctant to Change</strong> – These challenges can be particularly hard to address since Defender personalities value traditions and history highly in their decisions. A situation sometimes needs to reach a breaking point before Defenders are persuaded by circumstance, or the strong personality of a loved one, to alter course.</li>
                                <li><strong>Too Altruistic</strong> – This is all compounded and reinforced by Defenders’ otherwise wonderful quality of altruism. Being such warm, good-natured people, Defenders are willing to let things slide, to believe that things will get better soon, to not burden others by accepting their offers of help, while their troubles mount unassisted.</li>
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

	function ISFJCareer(){
		$('#ISFJCareer').modal({'backdrop':'static'});
	}
	function ISFJRelationship(){
		$('#ISFJRelationship').modal({'backdrop':'static'});
	}
	function ISFJsw(){
		$('#ISFJsw').modal({'backdrop':'static'});
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
