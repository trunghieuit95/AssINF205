using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btndangnhap_Click(object sender, EventArgs e)
    {
        if (txttaikhoan.Text == "admin" && txtmatkhau.Text=="admin")
        {
            Session.Add("taikhoan", txttaikhoan.Text);
            Session.Add("matkhau", txtmatkhau.Text);
            Response.Redirect("default.aspx");
        }
        else
        {
            Response.Write("<center>Tài khoản không đúng hoặc mật khẩu sai. Bạn vui lòng nhập lại.</center>");
        }
    }
}
