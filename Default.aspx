<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab_3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

  <head runat="server">
    <title>Mini aplikacje</title>
    <style>
      .glowny_blok {
        width: 310px;
        height: auto;
        border: solid 3px black;
        margin-top: 20px;
        margin-bottom: 20px;
        padding: 5px;
      }

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

      #kolor {
        margin-left: 5px;
        margin-right: 5px;
        width: 260px;
        height: auto;
        margin-top: 20px;
        margin-bottom: 20px;
        padding: 5px;
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

            Red: <asp:TextBox ID="red" runat="server"></asp:TextBox><br />
            <br />
            Green: <asp:TextBox ID="green" runat="server"></asp:TextBox><br />
            <br />
            Blue: <asp:TextBox ID="blue" runat="server"></asp:TextBox><br />
            <br />
            <asp:Button ID="zatwierdz" runat="server" Text="Zatwierdź" OnClick="RGB" />
          </div>

          <div class="aplikacja">
            <h2>Licznik</h2>
            <br />
            Wartość licznika:
            <asp:Literal ID="wartosc_licznika" Text="0" runat="server" /> <br />
            <br />
            <asp:Button ID="plus" runat="server" Text="Zwiększ licznik" OnClick="Zmien" /> <br />
            <br />
            <asp:Button ID="minus" runat="server" Text="Zmniejsz licznik" OnClick="Zmien" /> <br />
            <br />
            Ustaw licznik: <asp:TextBox ID="licznikInput" runat="server"></asp:TextBox> <br />
            <br />
            <asp:Button ID="zatwierdz_licznik" runat="server" Text="Ustaw licznik" OnClick="Licznik" />
          </div>

          <div class="aplikacja">
            <h2>Rzut kością</h2>
            <br />
            Liczba ścianek: <asp:TextBox ID="liczba_scian" Text="6" runat="server"></asp:TextBox><br />
            <br />
            <asp:Button ID="losuj" runat="server" Text="Rzuć kością" OnClick="Rzut_koscia" /><br />
            <br />
            Lista wyników:
            <asp:TextBox ID="wynik" Text=" " runat="server"></asp:TextBox>
          </div>
        </div>
      </div>
    </form>
  </body>

</html>
