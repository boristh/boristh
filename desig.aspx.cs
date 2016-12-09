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


public partial class desig : System.Web.UI.Page
{
    //________________________________________________
    cls_designition dsi = new cls_designition();
    //________________________________________________

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
        ds = dsi.select_designation();
        grd_desig.DataSource = ds;
        grd_desig.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dsi.desig = txt_designation.Text;
        if (btn_submit.Text == "Submit")
        {
            //________________________________________ insert ___________________________________________
            int insrt = dsi.insert_designation();
            if (insrt == 1)
            {
                Lbl_msg.Text = "Successfully saved";
            }
            else
            {
                Lbl_msg.Text = "Cannot save";
            }
            //______________________________________ insert ____________________________________________
        }
        else if (btn_submit.Text == "Update")
        {
            //________________________________________ update ___________________________________________
            dsi.desig_id = Convert.ToInt32(btn_submit.CommandName);
            int updt = dsi.update_designation();
            if (updt == 1)
            {
                Lbl_msg.Text = "Successfully Updated";
            }
            else
            {
                Lbl_msg.Text = "Cannot Update";
            }
            //______________________________________ update ____________________________________________
        }
       
        loadgrid();
    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_designation.Text = "";

        Lbl_msg.Text = "";
        btn_submit.Text = "Submit";
    }
    protected void grd_desig_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //________________________________________ delete ___________________________________________
        dsi.desig_id = Convert .ToInt32( grd_desig.DataKeys[e.RowIndex]["desig_id"].ToString());
        int del = dsi.delete_designation();
        if (del == 1)
        {
            Lbl_msg.Text = "Successfully deleted";
        }
        else
        {
            Lbl_msg.Text = "Cannot delete";
        }
        //______________________________________ delete ____________________________________________

        loadgrid();
    }
    protected void grd_desig_SelectedIndexChanged(object sender, EventArgs e)
    {
        txt_designation.Text = grd_desig.SelectedRow.Cells[0].Text.ToString();

        btn_submit.Text = "Update";
        btn_submit.CommandName = grd_desig.DataKeys[grd_desig.SelectedIndex]["desig_id"].ToString();
    }
}