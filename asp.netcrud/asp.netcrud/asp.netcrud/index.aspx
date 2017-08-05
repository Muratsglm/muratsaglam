<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="asp.netcrud.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="../../favicon.ico" />

    <title>WebPhone</title>

    <!-- Bootstrap Css -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- Özel Css -->
    <link href="css/dashboard.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
            <button class="navbar-toggler navbar-toggler-right hidden-lg-up" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">WebPhone</a>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    <!-- üstte menü istenirse buraya eklenecek
          <li class="nav-item active">
            <a class="nav-link" href="#"></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"></a>
          </li>
         -->
                </ul>
                <div class="form-inline mt-2 mt-md-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Bir Şeyler Yaz...">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Arama</button>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="index.aspx">Kişilerim</a>
                        </li>
                        <%-- Kategori Menüleri
                            <li class="nav-item">
                            <a class="nav-link" href="#">Kişi Ekle</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Kişi Sil</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Kişi Güncelle</a>
                        </li>--%>
                    </ul>

                </nav>

                <main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
          </br>
            <h2>Kayıt İşlemleri</h2>
            <!--Veri Tabanında Yapılan İşlemler Bölümü-->
          <div>
             
              <asp:HiddenField ID="hfContactID" runat="server" />
              <table class="table table-bordered">
                  <tr>
                      <td>
                          <asp:Label ID="Label1"  runat="server" Text="Name"></asp:Label>
                      </td>
                      <td colspan="2">
                          <asp:TextBox ID="txtName" class="form-control" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="Label2" runat="server" Text="Mobile"></asp:Label>
                      </td>
                      <td colspan="2">
                          <asp:TextBox ID="txtMobile" class="form-control" runat="server"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="Label3" runat="server" Text="Adddress"></asp:Label>
                      </td>
                      <td colspan="2">
                          <asp:TextBox ID="txtAddress" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td></td>
                      <td colspan="2">
                          <asp:Button ID="btnSave" class="btn btn-success" runat="server" Text="Save" OnClick="btnSave_Click" />
                          <asp:Button ID="btnDelete" class="btn btn-danger" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                          <asp:Button ID="btnClear" class="btn btn-primary" runat="server" Text="Clear" OnClick="btnClear_Click" />
                      </td>
                  </tr>
                  <tr>
                      <td></td>
                      <td colspan="2">
                          <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                      </td>
                      <tr>
                          <td></td>
                          <td colspan="2">
                              <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                          </td>
                      </tr>
                  </tr>
              </table>
              <br />
              <asp:GridView ID="gvContact" class="table table-bordered" runat="server" AutoGenerateColumns="false">
                  <Columns>
                      <asp:BoundField DataField="Name" HeaderText="Name" />
                      <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                      <asp:BoundField DataField="Address" HeaderText="Address" />
                      <asp:TemplateField>
                          <ItemTemplate>
                              <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("ContactID") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                          </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
              </asp:GridView>
          </div>
        </main>
            </div>
            </div>
        </div>


        <footer class="footer">
            <div>
                <span class="text-muted">Tüm Yasal Hakları Saklıdır. 2017 Murat SAĞLAM </span>
            </div>
        </footer>


    </form>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>

    </form>
</body>
</html>
