<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonalityTypes.aspx.cs" Inherits="PersonalityTypes" %>

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
    <div class="types">
        <div class="titletypes">
            <center><p><h2>PERSONALITY TYPES</h2></p></center>
        </div>
        <div class="row personalitytypes">
			<div class="type a">
                <p class="psgroup">ANALYSTS</p>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="INTJ" src="img/intj-architect.svg"></a>
                </div>
                <div class="psname a" title="INTJ"><a href=""><p>INTJ<br>"Architect"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="INTP" src="img/intp-logician.svg"></a>
                </div>
                <div class="psname a" title="INTP"><a href=""><p>INTP<br>"Logician"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="ENTJ" src="img/entj-commander.svg"></a>
                </div>
                <div class="psname a" title="ENTJ"><a href=""><p>ENTJ<br>"Commander"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                     <a href=""><img title="ENTP" src="img/entp-debater.svg"></a>
                </div>
                <div class="psname a" title="ENTP"><a href=""><p>ENTP<br>"Debater"</p></a></div>
            </div>
            
            <div class="type d">
                <p class="psgroup">DIPLOMATS</p>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="INFJ" src="img/infj-advocate.svg"></a>
                </div>
                <div class="psname d" title="INFJ"><a href="infj_home.aspx"><p>INFJ<br>"Advocate"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href="infp.php"><img title="INFP" src="img/infp-mediator.svg"></a>
                </div>
                <div class="psname d" title="INFP"><a href="infp_home.aspx"><p>INFP<br>"Mediator"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="ENFJ" src="img/enfj-protagonist.svg"></a>
                </div>
                <div class="psname d" title="ENFJ"><a href=""><p>ENFJ<br>"Protagonist"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                     <a href=""><img title="ENFP" src="img/enfp-campaigner.svg"></a>
                </div>
                <div class="psname d" title="ENFP"><a href=""><p>ENFP<br>"Campaigner"</p></a></div>
            </div>

            <div class="type s">
                <p class="psgroup">SENTINENTALS</p>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="ISTJ" src="img/istj-logistician.svg"></a>
                </div>
                <div class="psname s" title="ISTJ"><a href="istj_home.aspx"><p>ISTJ<br>"Logistician"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="ISFJ" src="img/isfj-defender.svg"></a>
                </div>
                <div class="psname s" title="ISFJ"><a href="isfj_home.aspx"><p>ISFJ<br>"Defender"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="ESTJ" src="img/estj-executive.svg"></a>
                </div>
                <div class="psname s" title="ESTJ"><a href=""><p>ESTJ<br>"Executive"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                     <a href=""><img title="ESFJ" src="img/esfj-consul.svg"></a>
                </div>
                <div class="psname s" title="ESFJ"><a href=""><p>ESFJ<br>"Consul"</p></a></div>
            </div>
            <div class="type e">
                <p class="psgroup">ENTERTAINER</p>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="ISTP" src="img/istp-virtuoso.svg"></a>
                </div>
                <div class="psname e" title="ISTP"><a href=""><p>ISTP<br>"Virtuoso"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="ISFP" src="img/isfp-adventurer.svg"></a>
                </div>
                <div class="psname e" title="ISFP"><a href=""><p>ISFP<br>"Adventurer"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                    <a href=""><img title="ESTP" src="img/estp-entrepreneur.svg"></a>
                </div>
                <div class="psname e" title="ESTP"><a href=""><p>ESTP<br>"Entrepreneur"</p></a></div>
            </div>
            <div class="col-md-2 col-xs-12">
                <div class="pstypes">
                     <a href=""><img title="ESFP" src="img/esfp-entertainer.svg"></a>
                </div>
                <div class="psname e" title="ESFP"><a href=""><p>ESFP<br>"Entertainer"</p></a></div>
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
