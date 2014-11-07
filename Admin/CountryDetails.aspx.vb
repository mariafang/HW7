
Partial Class CountryDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        FormView1.Focus()

    End Sub

    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted

        Dim deletedCountry As String = e.Values("CountryName").ToString()
        lbl_deleted.Text = deletedCountry & "has been deleted from the database"
        Response.AddHeader("REFRESH", "2;URL=./AdminHome.aspx")

    End Sub

    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.AddHeader("REFRESH", "2;URL=./AdminHome.aspx")

    End Sub
End Class
