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

public partial class doctor : System.Web.UI.Page
{

    //________________________________________________________

    cls_doctor us = new cls_doctor();

    //________________________________________________________

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            load_designation();
            load_department();
            loadgrid();
        }
    }


    void loadgrid()
    {
        DataSet ds = new DataSet();
        ds = us.select_doctor();
        grd_doctor.DataSource = ds;
        grd_doctor.DataBind();
    }



    void loaduser()
    {
        DataSet ds = new DataSet();
        ds = us.select_doctor();
        grd_doctor.DataSource = ds;
        grd_doctor.DataBind();
    
    }


    void load_designation()
    {
        DataSet ds = new DataSet();
        ds = us.select_designation();
        ddl_desigID.DataSource = ds;
        ddl_desigID.DataTextField = ds.Tables[0].Columns["desig"].ToString();
        ddl_desigID.DataValueField = ds.Tables[0].Columns["desig_id"].ToString();
        ddl_desigID.DataBind();

    }

    void load_department()
    {
        DataSet ds = new DataSet();
        ds = us.select_department();
        ddl_dept_id.DataSource = ds;
        ddl_dept_id.DataTextField = ds.Tables[0].Columns["dept"].ToString();
        ddl_dept_id.DataValueField = ds.Tables[0].Columns["dept_id"].ToString();
        ddl_dept_id.DataBind();

    }


    protected void btn_Submit_Click(object sender, EventArgs e)
    {

        //________________________Image Upload____________
        string file_name = "";
        string path = Server.MapPath("~//upload/");
        Boolean fileOK = false;

        if (this.file_upload.HasFile)
        {
            string fileExtension = System.IO.Path.GetExtension(file_upload.PostedFile.FileName).ToLower();
            string[] allowedExtensions = { ".JPG", ".jpg", ".PNG", ".png", ".GIF", ".gif", ".BMP", ".bmp" };
            for (int i = 0; i <= allowedExtensions.Length - 1; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOK = true;
                }
            }

            if (fileOK)
            {
                file_name =DateTime.Now.ToString("ddMMyyyyhhmmsstt").ToString() + fileExtension;
            }
            else
            {
                lbl_msg.Text = "Invalid file, only image files are allowed.";
                return;
            }

            file_upload.PostedFile.SaveAs(path + file_name);
        }

        if (file_name != "")
        {

            //Panel8.BackImageUrl = "~/images/" + file_name;
            img_photo.ImageUrl = "~/upload/" + file_name;

        }

        //_________________________________________________


        us.doc_name = txt_name.Text;
        us.doc_add = txt_address.Text;
        us.desig_id = Convert.ToInt32(ddl_desigID.SelectedValue);
        us.doc_mobile = txt_mobile.Text;
        us.doc_email = txt_email.Text;
        us.doc_dept_id = ddl_dept_id.SelectedValue;
        us.doc_gender = rbtn_gender.SelectedValue;
        us.doc_photo =file_name;
        us.pwd = txt_pwd.Text;
        


        if (  btn_Submit   .Text == "Submit")
        {

            //_________________________ insert  _______________________________

            int insert = us.insert_doctor();
            if (insert == 1)
            {
                lbl_msg.Text = "Successfully saved";

            }
            else
            {
                lbl_msg.Text = "Cannot save.";
            }

            //__________________________ insert  ______________________________

        }
        else if ( btn_Submit.Text == "Update")
        {
            //__________________________ update _______________________________________
            us.doc_id = Convert.ToInt32(btn_Submit.CommandName);
            int updt = us.update_doctor();
            if (updt == 1)
            {
                lbl_msg.Text = "Successfully updated";

            }
            else
            {
                lbl_msg.Text = "Cannot update.";
            }
            //__________________________ update _______________________________________
        }

        loadgrid();
    
    }



    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_address.Text = "";
        txt_mobile.Text = "";
        txt_email.Text = "";

        lbl_msg.Text = "";
        btn_Submit.Text = "Submit";
    }
    protected void grd_doctor_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {


        //_________________________ delete  _______________________________

        us.doc_id = Convert.ToInt32(grd_doctor.DataKeys[e.RowIndex]["doc_id"].ToString());
        int del = us.delete_doctor();
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
    protected void grd_doctor_SelectedIndexChanged(object sender, EventArgs e)
    {
        txt_address.Text = grd_doctor.SelectedRow.Cells[2].Text.ToString();
        txt_email.Text = grd_doctor.SelectedRow.Cells[5].Text.ToString();
        txt_mobile.Text = grd_doctor.SelectedRow.Cells[4].Text.ToString();
        txt_name.Text = grd_doctor.SelectedRow.Cells[1].Text.ToString();
        img_photo.ImageUrl = "~/upload/" + grd_doctor.DataKeys[grd_doctor.SelectedIndex]["doc_photo"].ToString();

        btn_Submit.Text = "Update";
        btn_Submit.CommandName = grd_doctor.DataKeys[grd_doctor.SelectedIndex]["doc_id"].ToString();
    }
}