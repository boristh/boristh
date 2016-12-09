using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//________________________________________________________
using System.Data;
using System.Data.SqlClient;
//________________________________________________________

public partial class consulting : System.Web.UI.Page
{

    //________________________________________________________

    cls_consulting an = new cls_consulting();
    cls_doctor doc = new cls_doctor();
    //________________________________________________________
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            loadgrid();
        }
           
    }


    void loadgrid()
    {
        DataSet ds = new DataSet();
        ds = an.select_consulting();
        grd_consulting.DataSource = ds;
        grd_consulting.DataBind();
    }

 


  
    protected void grd_consulting_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        //_________________________ delete  _______________________________

        an.consult_id = Convert.ToInt32(grd_consulting.DataKeys[e.RowIndex]["consult_id"].ToString());
        int del=an.delete_consulting();
        if (del == 1)
        {
            lbl_msg.Text = "Successfully deleted";

        }
        else
        {
            lbl_msg.Text = "Cannot delete.";
        }

        //_____________________________ delete ____________________________________________

        loadgrid();
    }
 
}