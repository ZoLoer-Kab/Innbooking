﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebF
{
    public partial class test3 : System.Web.UI.Page
    {
        public string surnames;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings[MvcApplication.ConnectionString].ConnectionString;
            
            //new一個SqlConnection物件，是與資料庫連結的通道(其名為Connection)，以s_data內的連接字串連接所對應的資料庫。
            SqlConnection connection = new SqlConnection(s_data);

            //new一個SqlCommand告訴這個物件準備要執行什麼SQL指令
            SqlCommand Command = new SqlCommand($"select ID, Account, Password, Name, Phone from [Customer] where Account =@ID", connection);
            Command.Parameters.Add("@ID", SqlDbType.NVarChar).Value = Session["Account"];

            //與資料庫連接的通道開啟
            connection.Open();

            //new一個DataReader接取Execute所回傳的資料。
            SqlDataReader Reader = Command.ExecuteReader();

            //檢查是否有資料列
            if (Reader.HasRows)
            {
                //使用Read方法把資料讀進Reader，讓Reader一筆一筆順向指向資料列，並回傳是否成功。
                if (Reader.Read())
                {

                    //DataReader讀出欄位內資料的方式，通常也可寫Reader[0]、[1]...[N]代表第一個欄位到N個欄位。
                    ID.Text = Reader["ID"].ToString();
                    account.Text = Reader["Account"].ToString();
                    password.Text = Reader["Password"].ToString();
                    name.Text = Reader["Name"].ToString();
                    phone.Text = Reader["Phone"].ToString();

                    string surname = Reader["Name"].ToString();
                    surnames = surname[0].ToString();
                }
            }
        }
    }
}