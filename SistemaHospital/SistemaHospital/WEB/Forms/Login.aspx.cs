﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using SistemaHospital.BLL;
using MySql.Data.MySqlClient;

namespace SistemaHospital.WEB.Forms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // por ahora sin validacion
            Response.Redirect("~/WEB/Forms/Home.aspx");
        }
    }
}