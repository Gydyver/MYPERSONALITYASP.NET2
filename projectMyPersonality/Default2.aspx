<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- css -->
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="User.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- script -->
    <script src="tools/js/jquery.min.js"></script>
    <script src="bootstrap/bootstrap.min.js"></script>
    <!-- <script src="tools/js/angular.min.js"></script> -->
    <title>MyPersonality - Personality test</title>
</head>
<%--<body>--%>
    <form id="form1" runat="server">
       <div class="topnav" id="myTopnav"> 
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal" style="background-color: firebrick; color: white">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                Logout
            </a>
            <a href="#">ABOUT</a> 
            <a href="personalitytypes.php">PERSONALITY TYPE</a>
            <a href="User_Home.php" class="btn btn-info">HOME</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>
        <br/>

        <div class="therules">
        <div class="titletypes">
                <center><p><h2>ATTENTION</h2></p></center>
        </div>
        <div class="row rules">
            <div class="col-md-3 col-xs-12">
                <div class="ruleimg">
                    <img title="timer" src="img/timer.png">
                </div>
                <div class="ruletext"><p>Answer the questions in 15 minutes</p></div>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="ruleimg">
                    <img title="timer" src="img/honest-icon.png">
                </div>
                <div class="ruletext"><p>Please answer honestly, even when you do not like the answer.</p></div>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="ruleimg">
                    <img title="timer" src="img/fulfill-icon.png">
                </div>
                <div class="ruletext"><p>and do not left any questions with no answer</p></div>
            </div>
        </div><br/><br/>
       </div>
        <center><div>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </div>
        <br/><br/>
        <asp:button class="btn btn-primary" ID="btnSubmit" Text="S U B M I T" runat="server" OnClick="btSubmit_Click" UseSubmitBehavior="false" Height="50" Width="100"></asp:button>
        ini
        <div class="footer">
	        <div>
		        <div class="footer-icons col-md-6 col-xs-10">
			        <a href="#"><img src="icon/002-twitter.png"/>mypersonality</a>
			        <a href="#"><img src="icon/001-facebook.png"/>MyPersonality ID</a>
			        <a href="#"><img src="icon/envelope.png"/>help@myprs.id</a>
		        </div>
		        <div class="copyright">
			        <center><p>Copyright &#169; 2018 MyPersonality Personality Online Test Inc. All right reserved</p></center></p>
		        </div>
	        </div>
        </div> 
    <%--ISTJ--%>
    <div id="ISTJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I S T J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Logitician</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/istj-logistician.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ESTJ--%>
    <div id="ESTJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">E S T J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Executive</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/estj-executive.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--INTJ--%>
    <div id="INTJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I N T J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Architect</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/intj-architect.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ENTJ--%>
    <div id="ENTJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">E N T J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Commander</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/entj-commander.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ISFJ--%>
    <div id="ISFJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I S F J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Defender</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/isfj-defender.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ESFJ--%>
    <div id="ESFJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">E S F J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Consul
                    </h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/esfj-consul.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--INFJ--%>
    <div id="INFJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I N F J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Advocate</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/infj-advocate.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ENFJ--%>
    <div id="ENFJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">E N F J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Protagonist</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/enfj-protagonist.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ISTP--%>
    <div id="ISTPModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I S T P</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Virtuoso</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/istp-virtuoso.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ESTP--%>
    <div id="ESTPModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">E S T P</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Entrepreneur</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/estp-entrepreneur.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--INTP--%>
    <div id="INTPModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I N T P</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Logician
                    </h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/intp-logician.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ENTP--%>
    <div id="ENTPModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">E N T P</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Debater</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/entp-debater.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ISFP--%>
    <div id="ISFPModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I S F P</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Adventurer</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/isfp-adventurer.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ESFP--%>
    <div id="ESFPModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">E S F P</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Entertainer</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/esfp-entertainer.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--INFP--%>
    <div id="INFPModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I N F P</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Mediator</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/infp-mediator.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
                </div>
            </div>
        </div>
    </div>
    <%--ENFP--%>
    <div id="ENFPModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="Default2.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">E N F P</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Champaigner</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/enfp-campaigner.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="frame_istj.php"><button id="button" class="btn btn-default">see the details<i class="fa fa-paper-plane-o ml-1"></i></button></a>
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
</html>
