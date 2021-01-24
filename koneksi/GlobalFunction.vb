Imports MySql.Data.MySqlClient

Namespace GlobalUse

    Public Class GlobalFunction

        Public Shared Function SetSQLQuery(ByVal strSQL As String, ByVal myconnString As String) As Integer
            Dim result As Integer
            Using connection As New MySqlConnection

                connection.ConnectionString = myconnString
                connection.Open()
                Using command As New MySqlCommand(strSQL, connection)
                    result = command.ExecuteNonQuery()
                End Using
            End Using
            Return result
        End Function

        Public Shared Function ExecuteSQLQuery(ByVal strSQL As String, ByVal myconnString As String) As DataTable
            Dim result As New DataTable
            Using connection As New MySqlConnection
                connection.ConnectionString = myconnString
                connection.Open()
                Using command As New MySqlCommand(strSQL, connection)
                    Using reader As MySqlDataReader = command.ExecuteReader()
                        result.Load(reader)
                    End Using
                End Using
            End Using
            Return result
        End Function





    End Class
End Namespace

