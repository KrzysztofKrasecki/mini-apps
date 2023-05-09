<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Lab_3.Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">
    <title>Wyniki</title>
    <style>
      .aplikacja {
        width: 280px;
        height: auto;
        margin-left: 5px;
        margin-right: auto;
        border: solid 2px black;
        padding: 5px;
        margin-top: 20px;
        margin-bottom: 20px;
      }

      .glowny_blok {
        width: 310px;
        height: auto;
        border: solid 3px black;
        margin-top: 20px;
        margin-bottom: 20px;
        padding: 5px;
      }

      #kolor {
        margin-left: 5px;
        width: 120px;
        height: 40px;
      }

    </style>
  </head>

  <body>
    <form id="form1" runat="server">
      <div>
        <div class="glowny_blok">
        <h1>Witaj!</h1>
        Menu:
        <div><a href="Default.aspx">Default</a></div>
        <div><a href="Results.aspx">Results</a></div>
          <div class="aplikacja">
            <h2 id="kolor" runat="server">Kolor</h2>
              Ze względnu na to, że ViewState przeznaczony jest wyłącznie do przechowywania danych zawartych na tej samej stronie,
              pole z wynikiem jest puste!
          </div>

          <div class="aplikacja">
            <h2>Licznik</h2>
            Licznik wynosi:
            <asp:Literal ID="licznik" Text="0" runat="server" /> <br />
          </div>

          <div class="aplikacja">
            <h2>Rzut kością</h2>
            Wylosowane liczby to:
            <asp:Literal ID="wynik" Text=" " runat="server" />
          </div>
        </div>
      </div>
    </form>
  </body>

</html>

