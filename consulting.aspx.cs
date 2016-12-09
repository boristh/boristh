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
            load_doctor();
            load_patient();
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


    void load_doctor()
    {
        DataSet ds = new DataSet();
        ds = doc.select_doctor();
      ddl_doctor    .DataSource = ds;
      ddl_doctor.DataTextField = ds.Tables[0].Columns["doc_name"].ToString();
      ddl_doctor.DataValueField = ds.Tables[0].Columns["doc_id"].ToString();
      ddl_doctor.DataBind();

    }

    void load_patient()
    {
        DataSet ds = new DataSet();
        ds = an.select_patient();
     ddl_patient    .DataSource = ds;
     ddl_patient.DataTextField = ds.Tables[0].Columns["patient_name"].ToString();
     ddl_patient.DataValueField = ds.Tables[0].Columns["patient_id"].ToString();
     ddl_patient.DataBind();

    }



    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btl_submit_Click(object sender, EventArgs e)
    {
        an.doc_id = Convert.ToInt32(ddl_doctor.SelectedValue);
        an.patient_id = Convert.ToInt32(ddl_patient.SelectedValue);
        an.question = txt_question.Text;
        an.answer = txt_answer.Text;
        an.entry_date = DateTime.Now;


        if (btl_submit.Text == "Submit")
        {

            //__________________________ insert _______________________________________

            int insert = an.insert_consulting();
            if (insert == 1)
            {
                lbl_msg.Text = "Successfully saved";

            }
            else
            {
                lbl_msg.Text = "Cannot save.";
            }
            //__________________________ insert _______________________________________

        }

        else if (btl_submit.Text == "Update")
        {
            //__________________________ update _______________________________________
            an.consult_id = Convert.ToInt32(btl_submit.CommandName);
            int updt = an.update_consulting();
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


    protected void btl_reset_Click(object sender, EventArgs e)
    {
        txt_answer.Text = "";
        txt_question.Text = "";

        lbl_msg.Text = "";
        btl_submit.Text = "Submit";
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
    protected void grd_consulting_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl_doctor.SelectedValue = grd_consulting.DataKeys[grd_consulting.SelectedIndex]["doc_id"].ToString();
        ddl_patient.SelectedValue = grd_consulting.DataKeys[grd_consulting.SelectedIndex]["patient_id"].ToString();

        txt_question.Text = grd_consulting.SelectedRow.Cells[2].Text.ToString();
        txt_answer.Text = grd_consulting.SelectedRow.Cells[3].Text.ToString();

        btl_submit.Text = "Update";
        btl_submit.CommandName = grd_consulting.DataKeys[grd_consulting.SelectedIndex]["consult_id"].ToString();
    }
}