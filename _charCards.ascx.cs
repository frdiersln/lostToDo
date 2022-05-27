using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
public partial class _charCards : System.Web.DynamicData.FieldTemplateUserControl
{
    public override Control DataControl
    {
        get
        {
            return Literal1;
        }
    }

    public class Character
    {
        public string Nick = "";
        public string Class = "";
    }

    public static string currentUserId{get;set;}
    public static List<Character> Characters { get; set; }
    public static void Page_Load(object sender, EventArgs e)
    {
        Page Page = new Page();
        currentUserId = CurrentUserId.UserId(Page.User.Identity.Name);

        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand com = new SqlCommand(String.Format("select nick, class from chars where ownerId = '{0}'", currentUserId), con);
        SqlDataReader rd = com.ExecuteReader();
        List<Character> Chrts = new List<Character>();
        while (rd.Read())
        {
            Character chr = new Character();
            chr.Nick = rd[0].ToString();
            chr.Class = rd[1].ToString();
            Chrts.Add(chr);
        }
        con.Close();
        Characters = Chrts;

    }

}