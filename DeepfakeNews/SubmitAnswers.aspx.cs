using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Web.UI;

namespace DeepfakeNews
{
    public partial class SubmitAnswers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod != "POST") return;

            string jsonData;
            using (var reader = new System.IO.StreamReader(Request.InputStream))
            {
                jsonData = reader.ReadToEnd();
            }

            var serializer = new JavaScriptSerializer();
            var selections = serializer.Deserialize<Dictionary<string, string>>(jsonData);

            // ✅ 修改后的连接字符串
            string connStr = @"Server=localhost;Database=chk;User Id=sa;Password=Kk123456??;";

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                foreach (var item in selections)
                {
                    int qid = int.Parse(item.Key);
                    string option = item.Value;

                    string update = "UPDATE QuizStatistics SET Count = Count + 1 WHERE QuestionId = @qid AND OptionId = @option";
                    using (SqlCommand cmd = new SqlCommand(update, conn))
                    {
                        cmd.Parameters.AddWithValue("@qid", qid);
                        cmd.Parameters.AddWithValue("@option", option);
                        cmd.ExecuteNonQuery();
                    }
                }

                // 查询统计
                string query = "SELECT QuestionId, OptionId, Count FROM QuizStatistics";
                var result = new Dictionary<string, Dictionary<string, int>>();

                using (SqlCommand cmd = new SqlCommand(query, conn))
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string qid = reader["QuestionId"].ToString();
                        string opt = reader["OptionId"].ToString();
                        int count = (int)reader["Count"];

                        if (!result.ContainsKey(qid))
                            result[qid] = new Dictionary<string, int>();

                        result[qid][opt] = count;
                    }
                }

                // 输出 JSON 结果
                Response.ContentType = "application/json";
                Response.Write(serializer.Serialize(result));
                Response.End();
            }
        }
    }
}
