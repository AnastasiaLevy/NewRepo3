using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session != null)
        {
            try
            {
                ServiceLayerPerson sv = new ServiceLayerPerson();
                string username = Session["UserName"].ToString();
                int id = sv.FindIdByUsername(username);

                Session["ObjectParameterName"] = id;

            }catch{}
        } 
        
    
    }
   
}