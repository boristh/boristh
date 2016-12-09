
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




//_______________________________________________________

using System.Data;
using System.Data.SqlClient;

//_______________________________________________________

public partial class patient : System.Web.UI.Page
{
    //________________________________________________
    
    cls_patient pa = new cls_patient();
    
    //________________________________________________

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            //loadpatient();
            //loadgrid();
        }
     
    }

    //void loadgrid()
    //{
    //    DataSet ds = new DataSet();
    //    ds = pa.select_patient();
    //    grd_patient.DataSource = ds;
    //    grd_patient.DataBind();




    //}
    ////void loadpatient()
    ////{
    ////    DataSet ds = new DataSet();
    ////    ds = pa.select_patient();
    ////    grd_patient.DataSource = ds;
    ////    grd_patient.DataBind();
    ////}


    protected void btl_submit_Click(object sender, EventArgs e)
    {

        ////________________________Image Upload____________
        //string file_name = "";
        //string path = Server.MapPath("~//upload/");
        //Boolean fileOK = false;

        //if (this.file_upload.HasFile)
        //{
        //    string fileExtension = System.IO.Path.GetExtension(file_upload.PostedFile.FileName).ToLower();
        //    string[] allowedExtensions = { ".JPG", ".jpg", ".PNG", ".png", ".GIF", ".gif", ".BMP", ".bmp" };
        //    for (int i = 0; i <= allowedExtensions.Length - 1; i++)
        //    {
        //        if (fileExtension == allowedExtensions[i])
        //        {
        //            fileOK = true;
        //        }
        //    }

        //    if (fileOK)
        //    {
        //        file_name = DateTime.Now.ToString("ddMMyyyyhhmmsstt")+ fileExtension;
        //    }
        //    else
        //    {
        //        lbl_msg.Text = "Invalid file, only image files are allowed.";
        //        return;
        //    }

        //    file_upload.PostedFile.SaveAs(path + file_name);
        //}

        //if (file_name != "")
        //{

        //    //Panel8.BackImageUrl = "~/images/" + file_name;
        //    img_photo.ImageUrl = "~/upload/" + file_name;

        //}

        ////_________________________________________________


               pa.patient_name = txt_patient.Text;
               pa.patient_add = Txt_address.Text;
               pa.patient_mobile = txt_mobile.Text;
               pa.patient_email = txt_email.Text;
               pa.patient_dob= Convert.ToDateTime(txt_dob.Text);
               pa.patient_gender=rbtn_gender.SelectedValue ;
               pa.patient_password = txt_password.Text;
               pa.patient_photo = "";


               if (btl_submit.Text == "Submit")
               {

                   //_____________________insert _________________________________
                   int insrt = pa.insert_patient();
                   if (insrt == 1)
                   {
                       lbl_msg.Text = "Successfully saved";
                       Response.Redirect("m_dept_list.aspx");
                   }
                   else
                   {

                       lbl_msg.Text = "Cannot save";

                   }


                   //_____________________insert ___________________________________
               }

               else  if (btl_submit.Text == "Update")
               {

                   //_____________________update _________________________________

                   pa.patient_id = Convert.ToInt32(btl_submit.CommandName);
                   int updt = pa.update_patient();
                   if (updt ==1)
                   {
                       lbl_msg.Text = "successfully updated";
                   }
                   else
                   {

                       lbl_msg.Text = "cannot update";

                   }


                   //_____________________update ___________________________________
               }


        //loadpatient();
        //loadgrid();
      
    }


    //protected void grd_patient_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    //_____________________delete _________________________________
    //    pa.patient_id = Convert.ToInt32(grd_patient.DataKeys[e.RowIndex]["patient_id"].ToString());
    //    int del = pa.delete_patient();
    //    if (del == 1)
    //    {
    //        lbl_msg.Text = "Successfully deleted";
    //    }
    //    else
    //    {

    //        lbl_msg.Text = "Cannot delete";

    //    }

    //    loadgrid();
    //    //_____________________delete ___________________________________
    //}
    protected void txt_email_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_patient_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_mobile_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btl_reset_Click(object sender, EventArgs e)
    {
        btl_submit.Text = "Submit";
        lbl_msg.Text = "";
        txt_patient.Text = "";
    }
    //protected void grd_patient_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    txt_patient.Text = grd_patient.SelectedRow.Cells[0].Text.ToString();
    //    Txt_address.Text=grd_patient.SelectedRow.Cells[1].Text.ToString();
    //    txt_dob.Text=grd_patient.SelectedRow.Cells[4].Text.ToString();
    //    txt_email.Text=grd_patient.SelectedRow.Cells[3].Text.ToString();
    //    txt_mobile.Text=grd_patient.SelectedRow.Cells[2].Text.ToString();
    //    txt_password.Text=grd_patient.SelectedRow.Cells[7].Text.ToString();

    //    btl_submit.Text = "Update";
    //    btl_submit.CommandName = grd_patient.DataKeys[grd_patient.SelectedIndex]["patient_id"].ToString();


    //}
    protected void btl_reset_Click1(object sender, EventArgs e)
    {
        btl_submit.Text = "Submit";
        lbl_msg.Text = "";
       Txt_address.Text = "";
       txt_dob.Text = "";
       txt_email.Text = "";
       txt_mobile.Text = "";
        txt_password.Text="";
        txt_patient.Text="";
       
    }
}






   