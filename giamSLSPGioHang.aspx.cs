using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_web
{
    public partial class giamSLSPGioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //list id current
            List<string> ids = (List<string>)Application["ids"];

            //get id from gioHang
            string id = Request.QueryString["id"];
            ids.Remove(id);
            Session["id"] = "";
            Response.Redirect("cart.aspx");
        }
    }
}