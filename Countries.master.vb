
Partial Class Countries
    Inherits System.Web.UI.MasterPage
    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lbl_date.Text = DateTime.Now.ToLongDateString

        lbl_time.Text = DateTime.Now.ToLongTimeString

    End Sub

End Class

