using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//_____________________________________________________________
using System.Data;
using System.Data.SqlClient;

//_____________________________________________________________

public partial class user : System.Web.UI.Page
{

    //_____________________________________________________________
    cls_user us = new cls_user();
    //_____________________________________________________________

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
             

        }
    }

    
 
 
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        us.user_name = txt_name.Text;
        us.pwd = txt_password.Text;
        DataSet ds = new DataSet();
        ds = us.doctor_login();
        int counter = ds.Tables[0].Rows.Count;
            //_______________________________ insert _________________________________________

        if (counter >0)
            {
                Response.Redirect("m_doctorAnswer.aspx?doc_id=" + ds.Tables[0].Rows[0]["doc_id"].ToString());
            }
            else
            {
                lbl_msg.Text = "username and password does not match";
            }
            //_______________________________ insert _________________________________________
         

    }


    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_password.Text = "";
        lbl_msg.Text = "";

    }
}