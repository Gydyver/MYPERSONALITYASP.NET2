<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminUpdate.aspx.cs" Inherits="adminUpdate" EnableEventValidation = "false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>

  <title>MyPersonality - Update and Delete Question</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet"/>
</head>
<body id="page-top">
    <form id="form1" runat="server">
      <!-- Page Wrapper -->
      <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-success sidebar sidebar-dark accordion" id="accordionSidebar">

          <div class="text-center">
            <h1 class="h4 mb-4" style="font-family: 'Sweet Rathulia'; font-size: 35px; font-weight: bold; color: snow; margin-top:20px; text-shadow: 1px 0 black, 0 1px black, 1px 0 black, 0 1px black;">MyPersonality</h1>
          </div>

          <!-- Divider -->
          <hr class="sidebar-divider my-0">

          <!-- Nav Item - Dashboard -->
          <li class="nav-item">
            <a class="nav-link" href="adminHome.aspx">
              <i class="fas fa-fw fa-tachometer-alt"></i>
              <span>Dashboard</span></a>
          </li>

          <!-- Divider -->
          <hr class="sidebar-divider">

          <!-- Heading -->
          <div class="sidebar-heading">
            Interface
          </div>

          <!-- Nav Item - Pages Collapse Menu -->
          <li class="nav-item active">
            <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
              <i class="fas fa-fw fa-folder"></i>
              <span>Pages</span>
            </a>
            <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
              <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Pages :</h6>
                <a class="collapse-item active" href="adminAdd.aspx">Add New Question</a>
                <a class="collapse-item active" href="adminUpdate.aspx" style="color:crimson">Update/Delete Question</a>
              </div>
            </div>
          </li>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

          <!-- Main Content -->
          <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

              <!-- Topbar Navbar -->
              <ul class="navbar-nav ml-auto">

                <!-- Nav Item - User Information -->
                <li class="nav-item dropdown no-arrow">
                  <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <asp:Label class="mr-2 d-none d-lg-inline text-gray-600 small" runat="server" ID="lblAdminName">Valerie Luna</asp:Label>
                    <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                  </a>
                  <!-- Dropdown - User Information -->
                  <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                      <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                      Logout
                    </a>
                  </div>
                </li>

              </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

              <!-- Page Heading -->
              <h1 class="h3 mb-4 text-gray-800">Update and Delete Question</h1>

              <div class="row">

                <div class="col-lg-12">

                  <div class="card shadow mb-4">
                    <div class="card-header py-3">
                      <h6 class="m-0 font-weight-bold text-primary">Update and Delete Question Form</h6>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" CellSpacing="3" EnableModelValidation="True" EnableSortingAndPagingCallbacks="True" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" PageSize="5" OnRowDataBound="GridView1_RowDataBound">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        </asp:GridView>
                        <br />
                        <asp:Label ID="lblQIDupdate" runat="server" style="font-weight: 700" Text="Question ID :" ForeColor="Black"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbQuestionIDUpdate" runat="server" class="form-control form-control-user" Width="160" ReadOnly ></asp:TextBox>
                        <br />
                        <asp:Label ID="lblCategoryUpdate" runat="server" style="font-weight: 700" Text="Please Select Category :" ForeColor="Black"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbCategoryUpdate" runat="server" class="form-control form-control-user" Width="200" ReadOnly></asp:TextBox>
                        <br />
                        <asp:Label ID="lblQuestionUpdate" runat="server" style="font-weight: 700" Text="Input the question :" ForeColor="Black"></asp:Label>
                        <br />
                        <asp:TextBox ID="tbQuestionUpdate" class="form-control form-control-user" runat="server" Height="78px" Width="356px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="btnUpdate" class="btn btn-primary" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" class="btn btn-danger" runat="server" OnClick="btnDelete_Click" Text="Delete"></asp:Button>
                        <br />
                        <asp:Label ID="lblUpdate" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="lblDelete" runat="server"></asp:Label>
                        <br />
                    </div>
                  </div>

                </div>

              </div>

            </div>
            <!-- /.container-fluid -->

          </div>
          <!-- End of Main Content -->

        <%-- cannot delete modal alert--%>
        <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-body">Please fill the form!</div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">OK</button>
              <%--<asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="Yes" OnClick="btnLogout_Click" UseSubmitBehavior="false"/>--%>
            </div>
          </div>
        </div>
      </div>
        <%-- successfully update modal alert--%>
        <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-body">The question has been updated succesfully!</div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">OK</button>
              <%--<asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="Yes" OnClick="btnLogout_Click" UseSubmitBehavior="false"/>--%>
            </div>
          </div>
        </div>
      </div>
            <%--ask first--%>
       <div class="modal fade" id="askdeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
            </div>
            <div class="modal-body">Are you sure want to delete?</div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
              <asp:Button ID="btnDelete1" class="btn btn-danger" runat="server" OnClick="btnDelete1_Click" Text="Yes"></asp:Button>
            </div>
          </div>
        </div>
      </div>
        <%-- successfully delete modal alert--%>
        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-body">The question has been deleted succesfully!</div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">OK</button>
              <%--<asp:Button class="btn btn-danger" ID="Button1" runat="server" Text="Yes" OnClick="btnLogout_Click" UseSubmitBehavior="false"/>--%>
            </div>
          </div>
        </div>
      </div>

          <!-- Footer -->
          <footer class="sticky-footer bg-white">
            <div class="container my-auto">
              <div class="copyright text-center my-auto">
                <span>Copyright &copy; MyPersonality - Personality Online Test 2019</span>
              </div>
            </div>
          </footer>
          <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

      </div>
      <!-- End of Page Wrapper -->

      <!-- Scroll to Top Button-->
      <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
      </a>

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
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
              <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
              <asp:button class="btn btn-danger" ID="btnLogout" OnClick="btnLogout_Click" runat="server" Text="Logout"></asp:button>
            </div>
          </div>
        </div>
      </div>

      <!-- Bootstrap core JavaScript-->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!-- Core plugin JavaScript-->
      <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

      <!-- Custom scripts for all pages-->
      <script src="js/sb-admin-2.min.js"></script>
    </form>
</body>
</html>
