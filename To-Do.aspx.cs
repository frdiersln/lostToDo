using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    public static string OwnerId { get;set;}
    public static string Nick { get; set; }
    public static string Class { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        if(id == null)
        {
            Response.Redirect("~/", true);
        }

        Page Page = new Page();
        string currentUserId = CurrentUserId.UserId(Page.User.Identity.Name);

        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand com = new SqlCommand(String.Format("select ownerId, nick, class from chars where id = '{0}'", id), con);
        SqlDataReader rd = com.ExecuteReader();
        while (rd.Read())
        {
            OwnerId = rd[0].ToString();
            Nick = rd[1].ToString();
            Class = rd[2].ToString();
        }
        con.Close();

        if (currentUserId != OwnerId)
        {
            Response.Redirect("~/", true);
        }
    }
}