﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ConferenceRoomScheduler
{

    //NOTES: Dates Currently created on the fly, SQL Table does not hold a reference to every
    //possible date/time. If a user request a time that is already occupied, we should
    //be able to sift through all current time frames and return to us a generated value that
    //is null in our table/not in use
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Calendar.SelectedDate = DateTime.Today;
        }

        /// <summary>
        ///TODO
        //Add condition checks against Timespan between (Time1) & (Time2)
        //provide constraints from trying to schedule a start time that is AFTER the end Time
        //if so then register requested Time
        //prompt to confirm request
        //needs to cancel request
        //view all scheduled times for a specific Date
        //Prompt for Users name to schedule requested time under
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Submit_Click(object sender, EventArgs e)
        {
            //first we take the users selected values and pass them into a sql cmd string to be used later
            string userInputCmd = string.Format("select Day, Time1 from DayTime where Day = '{0}' and Time1 = '{1}';", Calendar.SelectedDate.ToString(), TimeFrame.SelectedValue.ToString() + ":00");

            //we open up the connection on click, we are using the"using" statement so that opening,disposing, and closing of the connection are handled by .net framework automatically
            using (SqlConnection myConnection = new SqlConnection())
            {
                //provide the address of the database to the SQL Connection Object
                myConnection.ConnectionString = "Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = TestDB; Integrated Security = True";
                //create a command object that we can use to parse together our user generated command against the sql connection object and run the cmd on the database
                SqlCommand cmd = new SqlCommand(userInputCmd, myConnection);
                //once the query is completed, push the results into a SQL dataAdapter object for us to use. DataAdapter is what allows us to interact with sql data much like a staging area that allows us to grab a reference of the data, munipulate it, read it, and if we want send those changes(deletes included) back to the live table.
                //The adapter allows us to input data to Database and to retrieve data from Database essentially
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                //we must create a programable table that we can take the data from our adapter and plug it into our table
                DataTable dt = new DataTable("DayTime"); // this merely names our table
                adapter.Fill(dt); //using the adapter we push the stored data into this empty table object we created.
                //if our search result does not return a match on the Day and Time we requested then the time is avaliable and we move to the next stage
                if (dt.Rows.Count <= 0)
                {
                    Debug.Text = "Avaliable!";
                    //adding some additional meta text
                    
                }
                //else if the day and time is occupied, we will send user to next avaliable day/time
                else
                {
                    Debug.Text = string.Format("Day:{0} Time:{1} are already taken", Calendar.SelectedDate.ToShortDateString(), TimeFrame.SelectedItem.ToString());
                }
            }
        
        }
    }
}
              
