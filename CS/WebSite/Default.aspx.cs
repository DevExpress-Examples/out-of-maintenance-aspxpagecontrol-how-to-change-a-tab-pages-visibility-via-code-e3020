using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    #region #Change_Visibility
    protected void Page_Load(object sender, EventArgs e)
    {
        // Initially hide the second tab page
        if (!IsPostBack && !IsCallback) {
            ASPxPageControl1.TabPages[1].Visible = false; // do not use  ASPxPageControl1.TabPages.RemoveAt(1)!
        }

    }
    protected void ASPxRadioButtonList1_SelectedIndexChanged(object sender, EventArgs e) {
        // Hide a tab page corresponding to the selected radio button
        for (int i = 0; i < ASPxPageControl1.TabPages.Count; i++) {
            ASPxPageControl1.TabPages[i].Visible = true;
        }
        ASPxPageControl1.TabPages[ASPxRadioButtonList1.SelectedIndex].Visible = false;

    }
    #endregion #Change_Visibility
} 
