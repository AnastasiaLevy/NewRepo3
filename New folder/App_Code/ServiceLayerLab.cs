using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ServiceLayerLab
/// </summary>
public class ServiceLayerLab
{
	public ServiceLayerLab()
	{
	}
    public DataTable ReturnListOfLabs()
    {
        SqlConnection sqlConnection = new SqlConnection("data source=.;initial catalog=ClassProjectDataBase;integrated security=True;");
        String SQLQuery = "SELECT * FROM Labs";
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