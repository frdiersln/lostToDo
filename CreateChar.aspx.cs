using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IdentityModel.Claims;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Request.IsAuthenticated)
        {
            Response.Redirect("~/Account/Login.aspx", true);
        }

    }

    protected void CreateChar(object sender, EventArgs e)
    {
        string currentUserId = "";
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand com1 = new SqlCommand(String.Format("select Id from AspNetUsers where UserName='{0}'", User.Identity.Name), con);
        SqlDataReader dr = com1.ExecuteReader();
        if (dr.Read())
        {
            currentUserId = dr[0].ToString();
        }
        con.Close();
        con.Open();
        SqlCommand com2 = new SqlCommand("insert into chars (ownerId, nick, class) values (@OwnerId, @Nick, @Class)", con);
        com2.Parameters.AddWithValue("@OwnerId", currentUserId);
        com2.Parameters.AddWithValue("@Nick", Nick.Text);
        com2.Parameters.AddWithValue("@Class", Class.Text);
        com2.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/", true);
    }
}