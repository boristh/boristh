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
         protected void grd_department_SelectedIndexChanged(object sender, EventArgs e)
         {
             Response.Redirect("m_doctor_list.aspx?id=" + grd_department.DataKeys[grd_department.SelectedIndex]["dept_id"].ToString());
         }
}