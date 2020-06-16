using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebF
{
    public partial class report_cha2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings[MvcApplication.ConnectionString].ConnectionString;

            //new一個SqlConnection物件，是與資料庫連結的通道(其名為Connection)，以s_data內的連接字串連接所對應的資料庫。
            SqlConnection connections = new SqlConnection(s_data);

            //new一個SqlCommand告訴這個物件準備要執行什麼SQL指令
            SqlCommand Commands = new SqlCommand($"select ID ,Customer_ID, Room_ID ,Order_Date ,Start_Date,End_Date,Food,Bed,Total_Price from [Order] where Customer_ID =@ID", connections);
            Commands.Parameters.Add("@ID", SqlDbType.NVarChar).Value = Session["ID"];

            //與資料庫連接的通道開啟
            connections.Open();

            //new一個DataReader接取Execute所回傳的資料。
            SqlDataReader Readers = Commands.ExecuteReader();

            //檢查是否有資料列
            if (Readers.HasRows)
            {
                //使用Read方法把資料讀進Reader，讓Reader一筆一筆順向指向資料列，並回傳是否成功。
                if (Readers.Read())
                {

                    //DataReader讀出欄位內資料的方式，通常也可寫Reader[0]、[1]...[N]代表第一個欄位到N個欄位。
                    OID1.Text = Readers["ID"].ToString();
                    ROOM_ID1.Text = Readers["Room_ID"].ToString();
                    Orderdate1.Text = Readers["Order_Date"].ToString();
                    Startdate1.Text = Readers["Start_Date"].ToString();
                    enddate1.Text = Readers["End_Date"].ToString();
                    food1.Text = Readers["Food"].ToString();
                    bed1.Text = Readers["Bed"].ToString();
                    Totalprice1.Text = Readers["Total_Price"].ToString();
                    customter.Text = Readers["Customer_ID"].ToString();

                }
            }

            //關閉與資料庫連接的通道
            Readers.Close();
            connections.Close();
        }
    }
}