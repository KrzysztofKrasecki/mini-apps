﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_3
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            licznik.Text = Request.Cookies["UserSettings"]["Licznik"];
            wynik.Text = Session["wynik"].ToString();
        }
    }
}