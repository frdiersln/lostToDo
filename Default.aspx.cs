using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.PlusCard.Attributes.Add("onclick", Page.ClientScript.GetPostBackEventReference(this.PlusCard, string.Empty));
        if (IsPostBack && Request["__EVENTTARGET"] == PlusCard.UniqueID)
        {
            PlusCard_Click(PlusCard, EventArgs.Empty);
        }
    }

    protected void PlusCard_Click(object sender, EventArgs e)
    {
        if (Request.IsAuthenticated)
        {
            Response.Redirect("~/CreateChar.aspx", true);
        }
        else
        {
            Response.Redirect("~/Account/Login.aspx", true);
        }
    }
}