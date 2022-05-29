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
    public static string charId { get; set; }
    public static string Nick { get; set; }
    public static string Class { get; set; }
    public static string connectionString { get; set; }
    public static SqlConnection con { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        charId = Request.QueryString["id"];
        if(charId == null)
        {
            Response.Redirect("~/", true);
        }

        Page _Page = new Page();
        string currentUserId = CurrentUserId.UserId(_Page.User.Identity.Name);

        connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        con = new SqlConnection(connectionString);

        con.Open();
        SqlCommand com = new SqlCommand(String.Format("select ownerId, nick, class from chars where id = '{0}'", charId), con);
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

        if (!Page.IsPostBack)
        {
            con.Open();
            SqlCommand com1 = new SqlCommand(String.Format("select daily1, daily2, daily3, weekly1, weekly2, weekly3, chaos1, chaos2, guardian1, guardian2, abbysal, cube, bossRush, mysticRaid, merchant, rapport1, rapport2, rapport3 from chars where id = '{0}'", charId), con);
            SqlDataReader rd1 = com1.ExecuteReader();
            while (rd1.Read())
            {
                daily1.Checked = Convert.ToBoolean(rd1[0]);
                daily2.Checked = Convert.ToBoolean(rd1[1]);
                daily3.Checked = Convert.ToBoolean(rd1[2]);
                weekly1.Checked = Convert.ToBoolean(rd1[3]);
                weekly2.Checked = Convert.ToBoolean(rd1[4]);
                weekly3.Checked = Convert.ToBoolean(rd1[5]);
                chaos1.Checked = Convert.ToBoolean(rd1[6]);
                chaos2.Checked = Convert.ToBoolean(rd1[7]);
                guardian1.Checked = Convert.ToBoolean(rd1[8]);
                guardian2.Checked = Convert.ToBoolean(rd1[9]);
                abbysal.Checked = Convert.ToBoolean(rd1[10]);
                cube.Checked = Convert.ToBoolean(rd1[11]);
                bossRush.Checked = Convert.ToBoolean(rd1[12]);
                mysticRaid.Checked = Convert.ToBoolean(rd1[13]);
                MerchantShips.Checked = Convert.ToBoolean(rd1[14]);
                rapport1.Checked = Convert.ToBoolean(rd1[15]);
                rapport2.Checked = Convert.ToBoolean(rd1[16]);
                rapport3.Checked = Convert.ToBoolean(rd1[17]);
            }
            con.Close();
        }
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand(String.Format("" +
            "update chars set daily1 = '{0}', daily2 = '{1}', daily3 = '{2}', weekly1 = '{3}', weekly2 = '{4}', weekly3 = '{5}'," +
           " chaos1 = '{6}', chaos2 = '{7}', guardian1 = '{8}', guardian2 = '{9}', abbysal = '{10}', cube = '{11}', bossRush = '{12}'," +
           " mysticRaid = '{13}', merchant = '{14}', rapport1 = '{15}', rapport2 = '{16}', rapport3 = '{17}' where id = '{18}'",
           daily1.Checked, daily2.Checked, daily3.Checked, weekly1.Checked, weekly2.Checked, weekly3.Checked, chaos1.Checked, chaos2.Checked,
           guardian1.Checked, guardian2.Checked, abbysal.Checked, cube.Checked, bossRush.Checked, mysticRaid.Checked, MerchantShips.Checked,
           rapport1.Checked, rapport2.Checked, rapport3.Checked, charId), con);
        com.ExecuteNonQuery();
        con.Close();
    }

    protected void daily1_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void daily2_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void daily3_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void weekly1_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void weekly2_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void weekly3_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void chaos1_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void chaos2_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void guardian1_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void guardian2_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void abbysal_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void cube_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void bossRush_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void mysticRaid_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void MerchantShips_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void rapport1_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void rapport2_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }

    protected void rapport3_CheckedChanged(object sender, EventArgs e)
    {
        BtnSave_Click(sender, e);
    }
}