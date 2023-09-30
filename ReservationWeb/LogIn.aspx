<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ReservationWeb.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script type="text/javascript">
        function Loginalert() {
            swal({
                title: 'Erreur!',
                text: 'Nom utilisateur ou le mot de passe sont requis!',
                icon: "warning",
                type: 'success'
            });
        }

        function NotExistingUseralert() {
            swal({
                title: 'Erreur!',
                text: 'utilisateur inexistant!',
                icon: "error",
                type: 'error'
            });
        }
    </script>


</head>
<body>
    <div class="bg-image bg-fixed bg-cover min-vh-100" style="background-image: url('Images/Background.jpg');">

        <form id="form1" runat="server">
            <div class="row">
                <div class="col">
                    <hr>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 mx-auto">
                        <div class="card">
                            <div class="card-body">

                                <div class="row">
                                    <div class="col">
                                        <center>
                                        </center>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <h3>Identification</h3>
                                        </center>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <hr>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <label>Utilisateur</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtUtilisa"
                                                runat="server" placeholder="Utilisateur"></asp:TextBox>
                                        </div>

                                        <label>Mot De Passe</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="txtPasswo"
                                                runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <asp:Button class="btn btn-primary btn-block btn-lg" ID="btnSoumettre" runat="server" Text="Soumettre" OnClick="Button1_Click" />
                                        </div>
                                        <div class="form-group">
                                            <asp:Button class="btn btn-info btn-block btn-lg" ID="btnEffacer" runat="server" Text="Effacer" OnClick="btnEffacer_Click" />
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>
</body>
</html>
