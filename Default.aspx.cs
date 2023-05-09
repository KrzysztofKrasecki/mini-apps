using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_3
{
    public partial class Default : System.Web.UI.Page
    {
        HttpCookie myCookie = new HttpCookie("UserSettings");
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
        }
        protected void RGB(object sender, EventArgs e)
        {
            ViewState["czerwony"] = red.Text;
            ViewState["zielony"] = green.Text;
            ViewState["niebieski"] = blue.Text;
            string rgb = "rgb(" + ViewState["czerwony"] + "," + ViewState["zielony"] + "," + ViewState["niebieski"] + ")";
            kolor.Style.Add("background-color", rgb);
        }
        protected void Licznik(object sender, EventArgs e)
        {
            myCookie["Licznik"] = licznikInput.Text;
            myCookie.Expires = DateTime.Now.AddDays(1d);
            Response.Cookies.Add(myCookie);
            if (Response.Cookies["UserSettings"] != null)
            {
                if (Response.Cookies["UserSettings"]["Licznik"] != null)
                {
                    wartosc_licznika.Text = Response.Cookies["UserSettings"]["Licznik"];
                }
            }
        }
        protected void Zmien(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            if (b.ID == "plus")
            {
                String wartosc = Request.Cookies["UserSettings"]["Licznik"];
                int l = Int32.Parse(wartosc);
                l = l + 1;
                myCookie["Licznik"] = l.ToString();
                myCookie.Expires = DateTime.Now.AddDays(1d);
                Response.Cookies.Add(myCookie);
                wartosc_licznika.Text = Response.Cookies["UserSettings"]["Licznik"];
            }
            if (b.ID == "minus")
            {
                String wartosc = Request.Cookies["UserSettings"]["Licznik"];
                int l = Int32.Parse(wartosc);
                l = l - 1;
                myCookie["Licznik"] = l.ToString();
                myCookie.Expires = DateTime.Now.AddDays(1d);
                Response.Cookies.Add(myCookie);
                wartosc_licznika.Text = Response.Cookies["UserSettings"]["Licznik"];
            }
        }
        protected void Rzut_koscia(object sender, EventArgs e)
        {
            Random random = new Random();
            Session["losowa"] = random.Next(1, Int32.Parse(liczba_scian.Text) + 1);
            wynik.Text = wynik.Text + " " + Session["losowa"].ToString();
            Session["wynik"] = wynik.Text;
        }
    }
}
