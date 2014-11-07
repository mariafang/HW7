
Partial Class Admin_NewCountry
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        FormView1.Focus()

    End Sub

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted

        Dim InsertedCountry As String = e.Values("CountryName").ToString()
        lbl_Inserted.Text = InsertedCountry & "has been added to the database"
        Response.AddHeader("REFRESH", "2;URL=./AdminHome.aspx")

    End Sub
End Class
