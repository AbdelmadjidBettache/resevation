<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="ReservationWeb.Session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script type = "text/javascript">
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
    <form id="form1" runat="server">

        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/voyage.jpg" />
                                </center>
                            </div>
                        </div>

                        <br />
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4 class="font-weight-bold text-primary">Formulaire Réservation</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-12">
                                <label class="d-flex justify-content-center align-items-center">Quelle est la saison pour ton voyage?</label>
                                <div class="form-group">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3 d-flex justify-content-center">
                                <asp:RadioButton ID="rbPrint" Text="Printemps" Value="Printemps" runat="server" GroupName="saison" />
                            </div>
                            <div class="col-md-3 d-flex justify-content-center">
                                <asp:RadioButton ID="rbEte" Text="Été" Value="Ete" runat="server" GroupName="saison" />
                            </div>
                            <div class="col-md-3 d-flex justify-content-center">
                                <asp:RadioButton ID="rbAut" Text="Automne" Value="Automne" runat="server" GroupName="saison" />
                            </div>
                            <div class="col-md-3 d-flex justify-content-center">
                                <asp:RadioButton ID="rbHiver" Text="Hiver" Value="Hiver" runat="server" GroupName="saison" />
                            </div>
                        </div>

                        <br />
                        <br />

                        <div class="row">
                            <div class="col">
                                <center>
                                    <label>Quel continent voulez-vous visiter?</label>
                                    <asp:DropDownList class="form-control w-25" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Europe" Value="Europe" />
                                        <asp:ListItem Text="Asia" Value="Asia" />
                                        <asp:ListItem Text="Africa" Value="Africa" />
                                        <asp:ListItem Text="North America" Value="North America" />
                                        <asp:ListItem Text="South America" Value="South America" />
                                        <asp:ListItem Text="Australia/Oceania" Value="Australia/Oceania" />
                                        <asp:ListItem Text="Antarctica" Value="Antarctica" />
                                    </asp:DropDownList>
                                </center>
                            </div>
                        </div>

                        <br />
                        <br />

                        <div class="row">
                            <div class="col">
                                <center>
                                    <label>Quelle guide voulez-vous utiliser?</label>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <asp:CheckBox ID="chbBible" Text="La bible du voyageur" runat="server" />
                            </div>
                            <div class="col-md-4">
                                <asp:CheckBox ID="chbFute" Text="Futé tour du monde" runat="server" />
                            </div>
                            <div class="col-md-4">
                                <asp:CheckBox ID="chbReve" Text="Voyage de reve" runat="server" />
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col">
                                <center>
                                    <label>Date de départ:</label>
                                </center>
                            </div>
                        </div>
                        <br />

                        <center>
                            <asp:Calendar ID="date" runat="server"></asp:Calendar>
                        </center>
                        <br />
                        <br />


                        <div class="row">
                            <div class="col">
                                <center>
                                    <div class="form-group w-25">

                                        <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Soumettre" OnClick="Button1_Click" />

                                    </div>
                                </center>
                            </div>
                        </div>
                        <br />

                    </div>
                </div>
            </div>

            <br />
        </div>

    </form>
</body>
</html>
