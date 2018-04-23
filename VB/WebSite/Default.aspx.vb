Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	#Region "# Change_Visibility"
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		If (Not IsPostBack) AndAlso (Not IsCallback) Then
			ASPxPageControl1.TabPages(1).Visible = False ' do not use ASPxPageControl1.TabPages.RemoveAt(1)!
		End If

	End Sub
	Protected Sub ASPxRadioButtonList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
		For i As Integer = 0 To ASPxPageControl1.TabPages.Count - 1
			ASPxPageControl1.TabPages(i).Visible = True
		Next i
		ASPxPageControl1.TabPages(ASPxRadioButtonList1.SelectedIndex).Visible = False

	End Sub
	#End Region ' # Change_Visibility
End Class
