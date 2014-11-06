
Partial Class Countries
    Inherits System.Web.UI.MasterPage
    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_time.Text = DateTime.Now.ToShortDateString
    End Sub

End Class

