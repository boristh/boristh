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
            loaduser();
            loadgrid();

        }
    }

    void loadgrid()
    {
        DataSet ds = new DataSet();
        ds = us.select_user();
        grd_user.DataSource = ds;
        grd_user.DataBind();


    }


    void loaduser()
    {
        DataSet ds = new DataSet();
        ds = us.select_user();
        grd_user.DataSource = ds;
        grd_user.DataBind();

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        us.user_name = txt_name.Text;
        us.pwd = txt_password.Text;
        us.email = txt_email.Text;

        if (btn_submit.Text == "Submit")
        {
            //_______________________________ insert _________________________________________
            int insrt = us.insert_user();
            if (insrt == 1)
            {
                lbl_msg.Text = "Successfully saved";
            }
            else
            {
                lbl_msg.Text = "Cannot save.";
            }
            //_______________________________ insert _________________________________________
        }

        else
        {
            //_______________________________ update _________________________________________
            us.user_id = Convert.ToInt32(btn_submit.CommandName.ToString());
            int updt = us.update_user();
            if (updt == 1)
            {
                lbl_msg.Text = "Successfully updated";
            }
            else
            {
                lbl_msg.Text = "Cannot update.";
            }
            //_______________________________ update _________________________________________
        }
        loaduser();
        loadgrid();

    }


   
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_email.Text = "";
        txt_name.Text = "";
        txt_password.Text = "";

        lbl_msg.Text = "";
        btn_submit.Text = "Submit";


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void grd_user_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //________________________________________ delete ___________________________________________
        us.user_id = Convert.ToInt32(grd_user.DataKeys[e.RowIndex]["user_id"].ToString());
        int del = us.delete_user();
        if (del == 1)
        {
         lbl_msg.Text = "Successfully deleted";
        }
        else
        {
            lbl_msg.Text = "Cannot delete";
        }
        //______________________________________ delete ____________________________________________

        loadgrid();
    }
    protected void grd_user_SelectedIndexChanged(object sender, EventArgs e)
    {
        txt_email.Text = grd_user.SelectedRow.Cells[2].Text.ToString();
        txt_name.Text = grd_user.SelectedRow.Cells[0].Text.ToString();

        btn_submit.Text = "Update";
        btn_submit.CommandName = grd_user.DataKeys[grd_user.SelectedIndex]["user_id"].ToString();
    }
}