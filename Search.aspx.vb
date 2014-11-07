
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tb_search_TextChanged(sender As Object, e As EventArgs) Handles tb_search.TextChanged

        GridView1.Visible = True

        ' Declare a variable
        Dim searchWord As String

        ' Set the variable equal to the SQL statement to perform the search
        searchWord = "Select * From fang_HW7 where (CountryName Like '%" _
        + tb_search.Text.ToString() + "%')"

        ' Apply the variable (SQL statement) to the data source
        SqlDataSource1.SelectCommand = searchWord

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        GridView1.Visible = False

    End Sub
End Class
