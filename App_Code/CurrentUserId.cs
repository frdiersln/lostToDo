using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IdentityModel.Claims;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI;
using System.Web.UI.WebControls;


public class CurrentUserId
{
    static public string UserId(string userName)
    {

        string currentUserId = "";
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand com1 = new SqlCommand(String.Format("select Id from AspNetUsers where UserName='{0}'", userName), con);
        SqlDataReader dr = com1.ExecuteReader();
        if (dr.Read())
        {
            currentUserId = dr[0].ToString();
        }
        con.Close();

        return currentUserId;
    }
}