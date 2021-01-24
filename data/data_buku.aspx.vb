Imports contoso_vb.GlobalUse.GlobalFunction
Imports System.Data

Public Class data_buku1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Using connection As New MySqlConnection

        '    connection.ConnectionString = "server=localhost;user=root;password=;database=elmira;allow user variables=true"
        '    connection.Open()
        '    Using command As New MySqlCommand("select * from buku", connection)
        '        Using reader As MySqlDataReader = command.ExecuteReader()


        '        End Using
        '    End Using
        'End Using

        Dim result = "select * from buku"
        Dim q = SetSQLQuery(result, Connection1)


        Dim result2 = ExecuteSQLQuery(result, Connection1)
        For Each item As DataRow In result2.Rows

        Next

    End Sub

End Class