using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ServiceLayerEvent
/// </summary>
public class ServiceLayerEvent
{
	public ServiceLayerEvent()
	{
	
	}
    public void CreateEvent(string name, string schedule)
    {
        SqlConnection sqlConnection = new SqlConnection("data source=.;initial catalog=ClassProjectDataBase;integrated security=True;");
        String SQLQuery = "INSERT into events VALUES (@name, @schedule)";
        SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
        command.Parameters.Add(new SqlParameter("@lname", name));
        command.Parameters.Add(new SqlParameter("@schedule", schedule));

        sqlConnection.Open();
        command.ExecuteNonQuery();
        sqlConnection.Close();
    }

    public void DeleteEvent(string name)
    {
        SqlConnection sqlConnection = new SqlConnection("data source=.;initial catalog=ClassProjectDataBase;integrated security=True;");
        String SQLQuery = "DELETE from events where name = @name";
        SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
        command.Parameters.Add(new SqlParameter("@name", name));
        
        sqlConnection.Open();
        command.ExecuteNonQuery();
        sqlConnection.Close();
    }

    public void UpdateEvent(string sched, string name)
    {
        SqlConnection sqlConnection = new SqlConnection("data source=.;initial catalog=ClassProjectDataBase;integrated security=True;");
        String SQLQuery = "Update events SET schedule = @sched whare name =@name";
        SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
        command.Parameters.Add(new SqlParameter("@name", name));
        command.Parameters.Add(new SqlParameter("@sched",sched));

        sqlConnection.Open();
        command.ExecuteNonQuery();
        sqlConnection.Close();
    }

    public DataTable ReturnFullList()
    {
        SqlConnection sqlConnection = new SqlConnection("data source=.;initial catalog=ClassProjectDataBase;integrated security=True;");
        String SQLQuery = "SELECT * FROM events";
        SqlCommand command = new SqlCommand(SQLQuery, sqlConnection);
        sqlConnection.Open();
        DataTable fullSet = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(command);
        da.Fill(fullSet);
        da.Dispose();
        sqlConnection.Close();
        return fullSet;
    }



}