
Partial Class Login_Login
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn

        If Roles.IsUserInRole(Login1.UserName, "fang_admin") = True Then

            Response.Redirect("~/Admin/AdminHome.aspx")

        Else

            Response.Redirect("~/Default.aspx")

        End If

    End Sub

End Class
