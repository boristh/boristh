using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//________________________________________________
using System.Data;
using System.Data.SqlClient;
//________________________________________________


public partial class dept : System.Web.UI.Page

{
    //___________________________________________

   cls_dept de = new cls_dept();
   
    //___________________________________________

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
        ds = de.select_dept();
        grd_department.DataSource = ds;
        grd_department.DataBind();
   }
    protected void btl_submit_Click(object sender, EventArgs e)
    {
        de.dept = txt_department.Text;
        if (btl_submit.Text == "Submit")
        {

          
            //____________insert _______________________
            int insrt = de.insert_dept();
            if (insrt == 1)
            {
                lbl_msg.Text = "successfully saved ";

            }
            else
            {
                lbl_msg.Text = "Cannot saved";
            }
            //____________insert _______________________

        }

        else if (btl_submit.Text == "Update")
        {
            //_____________________update ___________________________________

            de.dept_id = Convert.ToInt32(btl_submit.CommandName);
            int upd = de.updtae_dept();
            if (upd == 1)
            {
                lbl_msg.Text = "successfully updated ";

            }
            else
            {
                lbl_msg.Text = "Cannot updated";
            }
            //_____________________update ___________________________________

        }

  
            loadgrid();

    }
    protected void grd_department_SelectedIndexChanged(object sender, EventArgs e)
    {
        txt_department.Text = grd_department.SelectedRow.Cells[0].Text.ToString();
        
        btl_submit.Text = "Update";
        btl_submit.CommandName = grd_department.DataKeys[grd_department.SelectedIndex]["dept_id"].ToString();

    }
    protected void grd_department_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //_____________________delete ___________________________________
        de.dept_id = Convert.ToInt32(grd_department.DataKeys[e.RowIndex]["dept_id"].ToString());
        int del = de.delete_dept();
        if (del == 1)
        {
            lbl_msg.Text = "successfully deleted";
        }
        else
        {

            lbl_msg.Text = "Cannot delete";

        }

        loadgrid();
        //_____________________delete ___________________________________
    }
    protected void btl_reset_Click(object sender, EventArgs e)
    {
        btl_submit.Text = "Submit";
        lbl_msg.Text = "";
        txt_department.Text = "";
    }
}