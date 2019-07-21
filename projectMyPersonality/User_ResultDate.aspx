<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_ResultDate.aspx.cs" Inherits="User_ResultDate" %>

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
<%--    <script>
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
</script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><div>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div></center>
        </div>
    </form>
    <%--ISTJ--%>
    <div id="ISTJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I S T J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Logitician</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/istj-logistician.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="istj_home.aspx">see the details<i class="fa fa-paper-plane-o ml-1"></i></a>
                </div>
            </div>
        </div>
    </div>
    <%--ESTJ--%>
    <div id="ESTJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
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
                    <a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
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
                    <a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">close</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
                    <p class="word2">MyPersonality</p>
                    <h3 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">I S F J</h3>
                    <h4 class="modal-title" style="font-family: Good Feeling Sans Demo;">The Defender</h4>
                </div>
                <div class="modal-body">
                    <center><img src="img/isfj-defender.svg" width="50%" /></center>
                </div>
                <div class="modal-footer">
                    <a href="isfj_home.aspx">see the details<i class="fa fa-paper-plane-o ml-1"></i></a>
                </div>
            </div>
        </div>
    </div>
    <%--ESFJ--%>
    <div id="ESFJModal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
					<a href="User_Home.aspx"><button type="button" class="btn btn-default" style="float:right;">&times;</button></a>
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
</body>
</html>
