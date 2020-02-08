using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    string str1 = "";
    public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool ValidInput(TextBox txt,Label lbl)
    {
        if (string.IsNullOrEmpty(txt.Text))
        {
            lbl.Text="Please enter required value.";
            txt.Focus();
            return false;
        }
        return true;
    }

    //SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["CCM"]);
    //SqlConnection con = new SqlConnection("Server=.;Database=Civil;UID=sa;pwd=12345678;Trusted_Connection=YES");
    //SqlConnection con = new SqlConnection("Password=12345678;Persist Security Info=True;User ID=sa;Initial Catalog=Civil;Data Source=INTEL");
    //Dim con As New SqlConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Application.StartupPath & "\MIMS.mdb;Persist Security Info=False")
    SqlConnection con = new SqlConnection("Persist Security Info=False;User ID=sa;Initial Catalog=kalasampanna;Data Source=Localhost");
    SqlCommand cmd;
    SqlDataReader dr;

    public bool login(string strQuery, TextBox uid, TextBox pwd,Label lbl)
    {
        SqlDataAdapter da = new SqlDataAdapter(strQuery, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Login");
        DataRow[] row = ds.Tables["Login"].Select("UserName = '" + uid.Text + "'");
        if (row.Length > 0)
        {
            if (pwd.Text.ToUpper() == row[0].ItemArray[5].ToString().ToUpper())
            {
                //if (regid == row[0].ItemArray[0].ToString().ToUpper())
                //{
                    return true;
                //}
            }
            else
            {
                lbl.Text="User Name and Password does not match.";
                pwd.Text = "";
                pwd.Focus();
                return false;
            }
        }
        else
        {
            lbl.Text="User Name and Password does not match.";
            pwd.Text = "";
            pwd.Focus();
            return false;
        }
    }

    //public void ChildFormShow(Form parent,Form child)
    //{
    //    child = new Form();
    //    child.MdiParent = parent;
    //    child.Show();
    //    child = null;
    //}

    //public void Quit()
    //{
    //    DialogResult reply = MessageBox.Show("Are you sure you want to quit this application?", "Civil Construction", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
    //    if (reply == DialogResult.Yes)
    //    {
    //        MessageBox.Show("Thanks for using me visit again.", "Civil Construction Manager", MessageBoxButtons.OK, MessageBoxIcon.Information);
    //        Application.Exit();
    //    }
    //}

    public object TimeDifference(DateTime d1, DateTime d2)
    {
        //string d3 = "";
        TimeSpan TS = new TimeSpan();
        TS = d1 - d2;
        return TS;
    }

    public bool ComparePassword(TextBox pwd, TextBox cpwd,Label lbl)
    {
        if (pwd.Text != cpwd.Text)
        {
            lbl.Text="Password and confirmed password does not match.";
            cpwd.Text = "";
            cpwd.Focus();
            return false;
        }
        else
        {
            return true;
        }
    }

    public void Delete(string str,Label lbl)
    {

    //    res reply = MessageBox.Show("Are you sure you want to delete this record?", "Civil Construction Manager", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
    //    if (reply == DialogResult.Yes)
    //    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lbl.Text = "Record deleted successfully.....";
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    //    }
    }

    public void DeleteAll(string str, GridView dgv,Label lbl)
    {
    //    if (dgv.Rows.Count > 1)
    //    {
    //        DialogResult reply = MessageBox.Show("Are you sure you want to delete this record?", "Civil Construction Manager", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
    //        if (reply == DialogResult.Yes)
    //        {
        for (Int16 i = 0; i <= dgv.Rows.Count - 1; i++)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();
                lbl.Text = "Record deleted successfully.....";
            }
            catch (Exception ex)
            {
                lbl.Text = ex.Message;
            }
        }
    //        }
    //    }
    }

    public string AutoID(string sField, string sTable, string tb)
    {
        string functionReturnValue = null;
        DataSet ds = new DataSet();
        string str = "select max(" + sField + ") from " + sTable;
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        da.Fill(ds, tb);
        if (ds.Tables[tb].Rows.Count > 0)
        {
            functionReturnValue = ds.Tables[tb].Rows[0].ItemArray[0].ToString();
        }
        else
        {
            functionReturnValue = "0";
        }
        return functionReturnValue;
    }

    public void add(string str, Label lbl)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            lbl.Text="Record added successfully.....";
        }
        catch (Exception ex)
        {
            lbl.Text=ex.Message;
        }
        finally
        {
            if (con != null)
            {
                con.Close();
            }
        }
    }

    public void sel(string str, GridView gv,Label lbl)
    {
        DataSet ds = new DataSet();
        try
        {
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            da.Fill(ds, "ABC");
            gv.DataSource = ds.Tables["ABC"];
            gv.DataBind();
        }
        catch (Exception ex)
        {
            lbl.Text=ex.Message;
        }
    }

    //public void GetQuestion(string str, Label num,Label question,RadioButtonList rbl, Label lbl)
    //{
    //    DataSet ds = new DataSet();
    //    try
    //    {
    //        SqlDataAdapter da = new SqlDataAdapter(str, con);
    //        da.Fill(ds, "ABC");
    //        if (ds.Tables["ABC"].Rows.Count>0)
    //        {
    //            num.Text = ds.Tables["ABC"].Rows[0].ItemArray[0].ToString();
    //            question.Text = ds.Tables["ABC"].Rows[0].ItemArray[1].ToString();
    //            rbl.Items.Add(ds.Tables["ABC"].Rows[0].ItemArray[2].ToString());
    //            rbl.Items.Add(ds.Tables["ABC"].Rows[0].ItemArray[3].ToString());
    //            rbl.Items.Add(ds.Tables["ABC"].Rows[0].ItemArray[4].ToString());
    //            rbl.Items.Add(ds.Tables["ABC"].Rows[0].ItemArray[5].ToString());
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        lbl.Text = ex.Message;
    //    }
    //}

    public string GetSingleRecord(string str, Int16 field)
    {
        string id = "";
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        da.Fill(ds, "ABC");
        if (ds.Tables["ABC"].Rows.Count > 0)
        {
            id = ds.Tables["ABC"].Rows[0].ItemArray[field].ToString();
        }
        return id;
    }

    //public void SAData(string str, string tb, string id, string field)
    //{
    //    DataSet ds = new DataSet();
    //    SqlDataAdapter da = new SqlDataAdapter(str, con);
    //    da.Fill(ds, tb);
    //    if (ds.Tables[tb].Rows.Count > 0)
    //    {
    //        id = ds.Tables[tb].Rows[0].ItemArray["" + field + ""].ToString;
    //    }
    //    else
    //    {
    //        id = "0";
    //    }
    //}

    public bool GetData(string str, string tb)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        da.Fill(ds, tb);
        if (ds.Tables[tb].Rows.Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public bool CheckItem(string strQuery, string tb, string field, string txt,Label lbl)
    {
        DataSet ds = new DataSet();
        try
        {
            SqlDataAdapter da = new SqlDataAdapter(strQuery, con);
            da.Fill(ds, tb);
        }
        catch (Exception ex)
        {
            lbl.Text=ex.Message;
        }
        DataRow[] row = ds.Tables[tb].Select("" + field + " = '" + txt + "'");
        if (row.Length > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public void update(string str,Label lbl)
    {
    //    DialogResult reply = MessageBox.Show("Are you sure you want to update this record?", "Civil Construction Manager", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
    //    if (reply == DialogResult.Yes)
    //    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            lbl.Text="Record updated successfully.....";
        }
        catch (Exception ex)
        {
            lbl.Text=ex.Message;
        }
        finally
        {
            if (((con != null)))
            {
                con.Close();
            }
        }
    }
    

    public bool EmptyTB(TextBox txt,Label lbl,string strField)
    {
        if ((string.IsNullOrEmpty(txt.Text)))
        {
            lbl.Text= strField + " cannot be left blank.";
            txt.Focus();
            return false;
        }
        else
        {
            return true;
        }
    }

    public bool EmptyCBO(DropDownList cbo,Label lbl,string strField)
    {
        if ((cbo.SelectedIndex == 0) || (cbo.Text == ""))
        {
            lbl.Text = "Please select proper " + strField + " from the list.";
            cbo.Focus();
            return false;
        }
        else
        {
            return true;
        }
    }
    public bool IsDouble(TextBox txt, Label lbl, string Field)
    {
        try
        {
            Convert.ToDouble(txt.Text);
            return true;
        }
        catch (Exception ex)
        {
            lbl.Text = "Enter " + Field + "in number only.";
            txt.Text = "";
            txt.Focus();
            return false;
        }
    }
    public bool IsNumber(TextBox txt,Label lbl,string Name)
    {
        try
        {
            Convert.ToInt64(txt.Text);
            return true;
        }
        catch (Exception ex)
        {
            lbl.Text="Enter " + Name + " in number only.";
            txt.Text = "";
            txt.Focus();
            return false;
        }
    }

    public bool ValidEmailID(TextBox txt,Label lbl)
    {
        string pattern = null;
        pattern = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        //pattern= @"^[a-z][a-z|0-9|]*([_][a-z|0-9]+)*([.][a-z|" + @"0-9]+([_][a-z|0-9]+)*)?@[a-z][a-z|0-9|]*\.([a-z]" + @"[a-z|0-9]*(\.[a-z][a-z|0-9]*)?)$"
        Match match = Regex.Match(txt.Text.Trim(), pattern, RegexOptions.IgnoreCase);
        if ((match.Success))
        {
            return true;
        }
        else
        {
            lbl.Text="Please enter valid Email ID.";
            txt.Focus();
            txt.Text = "";
            return false;
        }
    }

    public void FillCombo(string str, DropDownList cbo,Label lbl)
    {
        cbo.Items.Clear();
        cbo.Items.Add("Select");
        DataSet ds = new DataSet();
        try
        {
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cbo.Items.Add(reader[0].ToString());
            }
            reader.Close();
        }
        catch (Exception ex)
        {
            lbl.Text=ex.Message;
        }
        finally
        {
            con.Close();
        }
    }

    public void FillListBox(string str, CheckBoxList lst, Label lbl)
    {
        lst.Items.Clear();
        DataSet ds = new DataSet();
        try
        {
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                lst.Items.Add(reader[0].ToString());
            }
            reader.Close();
        }
        catch (Exception ex)
        {
            lbl.Text=ex.Message;
        }
        finally
        {
            con.Close();
        }
    }

    public void ComboFill(string str, DropDownList cbo, string dm, string vm,Label lbl)
    {
       DataSet ds = new DataSet();
        try
        {
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            da.Fill(ds, "ABC");
            cbo.DataSource = ds.Tables["ABC"];
            cbo.DataTextField = dm;
            cbo.DataValueField = vm;
            cbo.DataBind();
        }
        catch (Exception ex)
        {
            lbl.Text=ex.Message;
        }
    }

    public void FillEmployeeCombo(DropDownList cbo, DropDownList cbo1,Label lbl)
    {
        cbo.Items.Clear();
        cbo.Items.Add("Select");
        if (cbo.SelectedIndex > 0)
        {
            DataSet ds = new DataSet();
            try
            {
                SqlCommand cmd = new SqlCommand("select emp_name from employee where emp_type='" + cbo1.Text + "' order by emp_name", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    cbo.Items.Add(reader[0].ToString());
                }
            }
            catch (Exception ex)
            {
                lbl.Text=ex.Message;
            }
        }
    }

    //Public Sub FillMinDate(ByVal dtp As DateTimePicker)
    //    Dim ds As New DataSet
    //    Dim da As New OleDbDataAdapter("select count(*) from Employee_Labour", con)
    //    da.Fill(ds, "EB")
    //    If ds.Tables("EB").Rows.Count > 1 Then
    //        Dim da1 As New OleDbDataAdapter("select min(lab_date) from employee_labour", con)
    //        da1.Fill(ds, "MinDate")
    //        dtp.Value = ds.Tables("MinDate").Rows(0).Item("Lab_Date").ToString
    //    Else
    //        dtp.Value = Date.Today
    //    End If
    //End Sub

    //Public Function EmployeeDate(ByVal dtpF As DateTimePicker, ByVal dtpT As DateTimePicker) As Boolean
    //    If dtpF.Value > Date.Today Then
    //        MsgBox("From date must be less than or equal to current date.", vbExclamation, "ATGS")
    //        dtpF.Focus()
    //        Return False
    //    Else
    //        Return True
    //    End If
    //    If dtpT.Value > Date.Today Then
    //        MsgBox("To date must be less than or equal to current date.", vbExclamation, "ATGS")
    //        dtpT.Focus()
    //        Return False
    //    Else
    //        Return True
    //    End If
    //    If dtpT.Value < dtpF.Value Then
    //        MsgBox("To date must be greater than or equal to from date.", vbExclamation, "ATGS")
    //        dtpT.Focus()
    //        Return False
    //    Else
    //        Return True
    //    End If
    //End Function
}
