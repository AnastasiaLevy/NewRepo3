using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string fName = firstName.Text;
        string lname = lastName.Text;
        string userName = UserName.Text;
        string password = Password.Text;
        if (password != Cpassword.Text)
        {
            Password.Focus();
        }
        int labId = int.Parse(LabList.SelectedValue);

        ServiceLayerPerson person = new ServiceLayerPerson();
        if (!person.CheckUserName(userName))
        {
            person.InsertPerson(fName, lname, userName, password, 1);
            Response.Redirect("LogIn.aspx");
        }
        else
            TextBox1.Text = "UserName already exist";
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}