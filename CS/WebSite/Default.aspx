<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!--region #Markup-->
        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" EnableHierarchyRecreation="True" >
            <TabPages>
                <dx:TabPage Text="Tab 1">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            Page 1 Content
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage Text="Tab 2">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            Page 2 Content
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
            </TabPages>
        </dx:ASPxPageControl>
        <br />
        Select page to hide<br />
        <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" SelectedIndex="1" AutoPostBack="True" OnSelectedIndexChanged="ASPxRadioButtonList1_SelectedIndexChanged">
            <Items>
                <dx:ListEditItem Text="Page 1" Value="Page 1" />
                <dx:ListEditItem Text="Page 2" Value="Page 2" />
            </Items>
        </dx:ASPxRadioButtonList>
        <br />
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="PostBack">
        </dx:ASPxButton>
    <!--endregion #Markup-->    
    </div>        
    </form>
</body>
</html>
