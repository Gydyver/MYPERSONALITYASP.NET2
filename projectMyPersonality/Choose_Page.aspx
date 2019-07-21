<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Choose_Page.aspx.cs" Inherits="Choose_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- css -->
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="User.css">
	<!-- script -->
	<%--<script src="tools/js/jquery.min.js"></script>--%>
	<script src="bootstrap/bootstrap.min.js"></script>
	<!-- <script src="tools/js/angular.min.js"></script> -->
	<title>MyPersonality - Personality test</title>
</head>
<body>
    <div class="login2">
        <form id="form1" runat="server">
<%--             <div class="fptext2">
			        <p class="intro">Do you want to see your previous result or Take your Personality Test and get a 'freakishly accurate' description of who you are.</p><asp:button class="btn btn-primary" ID="btnTest" Text="TAKE TEST" runat="server" OnClick="btnTes_Click" UseSubmitBehavior="false" Height="50" Width="100"></asp:button>   
                    <asp:button class="btn btn-primary" ID="btnResult" Text="R E S U L T" runat="server" OnClick="btnResult_Click" UseSubmitBehavior="false" Height="50" Width="100"></asp:button>   
                 <p class="review">“let's see the incredible of you.”</p>
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>--%>
                <div id="page1">
	    <div class="column fpimg">
            <img src="img/image1.svg" alt="The Personalities"/>
        </div>
        <div class="column fptext">
            <div class="fptext1">
			    <p class="word1">WELCOME TO</p>
			    <p class="word2">MyPersonality</p>
		    </div>
            <div class="fptext2">
			        <p class="intro">Do you want to see your previous result or Take your Personality Test and get a 'freakishly accurate' description of who you are.</p><asp:button class="btn btn-primary" ID="btnTest" Text="TAKE TEST" runat="server" OnClick="btnTes_Click" UseSubmitBehavior="false" Height="50" Width="100"></asp:button>   
                    <asp:button class="btn btn-primary" ID="btnResult" Text="R E S U L T" runat="server" OnClick="btnResult_Click" UseSubmitBehavior="false" Height="50" Width="100"></asp:button>   
                 <p class="review">“let's see the incredible of you.”</p>
                 <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
        </div>

        <!-- LOGIN POP UP -->
        <div id="add_data_modal" class="modal fade" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center">                
                    <button type="button" class="btn btn-default" data-dismiss="modal" style="float:right;">&times;</button>
                    <p class="word2">MyPersonality</p>
                    <h2 class="modal-title font-weight-bold" style="font-family: Good Feeling Sans Demo;">know yourself, know your best way</h2>
                </div>
                <div class="modal-body">
                        <label style="font-family: Good Feeling Sans Demo;">Full Name:</label>
                        <input type="text" name="test[0].fullname" id="fullname" class="form-control" title="only allowed the alphabet without space." style="margin: 3%; width: 500px;"/>
                        <label style="font-family: Good Feeling Sans Demo;">E-Mail:</label>
                        <input type="email" name="test[0].email" id="email" title="ex email : emailname@hostname.com" class="form-control validate" style="margin: 3%; width: 500px;"/>
                        <%--<asp:Button runat="server" id="btnInsert" name="insert" value="insert" class="btn btn-success" OnClick="btnInsert_Click" UseSubmitBehavior="false" Text="Submit"></asp:Button>--%>
                        <asp:Button runat="server" id="btnInsert" name="insert" value="insert" class="btn btn-success" Text="Submit"></asp:Button>
                </div>
                <div class="modal-footer">
                    <button id="button" class="btn btn-default" data-dismiss="modal">Close<i class="fa fa-paper-plane-o ml-1"></i></button>
                </div>
            </div>
        </div>
        </div>
    </div>
        </form>
    </div>
</body>
</html>
