using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;

//RENDERING PARTIALS LIKE "_charCards.ascx"
public class TemplateHelper
{
    public static string RenderPartialToString(string controlName, object viewData)
    {
        ViewDataDictionary vd = new ViewDataDictionary(viewData);
        ViewPage vp = new ViewPage { ViewData = vd };
        Control control = vp.LoadControl(controlName);

        vp.Controls.Add(control);

        StringBuilder sb = new StringBuilder();
        using (StringWriter sw = new StringWriter(sb))
        {
            using (HtmlTextWriter tw = new HtmlTextWriter(sw))
            {
                vp.RenderControl(tw);
            }
        }

        return sb.ToString();
    }

    
}