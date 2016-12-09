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
            loadgrid();
        }
    }


    void loadgrid()
    {


        DataSet ds = new DataSet();
        us.doc_dept_id = Request.QueryString["id"].ToString();
        ds = us.select_doctor_byDept();
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

    protected void grd_doctor_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("m_patient_login.aspx?id=" + grd_doctor.DataKeys[grd_doctor.SelectedIndex]["doc_id"].ToString());
       // btn_Submit.CommandName = grd_doctor.DataKeys[grd_doctor.SelectedIndex]["doc_id"].ToString();
    }
}