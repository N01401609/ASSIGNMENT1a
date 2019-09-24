using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1a
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page Validation post-back reference: Christine Bittle, aspx_validation.aspx.cs, Sept 22. 2019. 
            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {


                    //Variables based on information pulled from the webform aspx page .
                    string Climber_Fname = climber_first_name.Text.ToString();
                    string Climber_Lname = climber_last_name.Text.ToString();
                    string Climber_Email = climber_email.Text.ToString();
                    int Climber_Age = Convert.ToInt32(climber_age.Text);
                    string Package_Choice = package_choice.SelectedValue.ToString();
                    string Booking_Day = booking_day.SelectedValue.ToString();
                    string Booking_Time = booking_time.SelectedValue.ToString();
                    string Suscribe_Answer = suscribe_answer.SelectedValue.ToString();

                    //Total calculated
                    summarybox.InnerHtml += "<h2>Receipt</h2>";
                    summarybox.InnerHtml += "Thank you for booking your climbing experience!<br>";
                    summarybox.InnerHtml += "You choose the " + Package_Choice + ", your total is: ";

                    //Statement determines how much climber pays based on the package selected
                    //Student Package is $15
                    //Adult Package is $20
                    //VIP Package is $30
                    if (Package_Choice == "Student Package")
                    {
                        summarybox.InnerHtml += "$" + 15 + "<br>";
                    }
                    if (Package_Choice == "Adult Package")
                    {
                        summarybox.InnerHtml += "$" + 20 + "<br>";
                    }
                    if (Package_Choice == "Vip Package")
                    {
                        summarybox.InnerHtml += "$" + 30 + "<br>";
                    }

                    // Prints summary of information given 
                    summarybox.InnerHtml += "<h2>Summary</h2>";
                    summarybox.InnerHtml += "You can find your summary below: <br>";

                    summarybox.InnerHtml += " First Name: " + Climber_Fname + "<br>";
                    summarybox.InnerHtml += " Last Name: " + Climber_Lname + "<br>";
                    summarybox.InnerHtml += " Email: " + Climber_Email + "<br>";
                    summarybox.InnerHtml += " Age: " + Climber_Age + "<br>";
                    summarybox.InnerHtml += " Package Choice: " + Package_Choice + "<br>";
                    summarybox.InnerHtml += " Booking Day and Time: " + Booking_Day + " at " + Booking_Time + "<br>";
                    summarybox.InnerHtml += " Suscription: " + Suscribe_Answer + "<br>";

                    

                }
            }
        }
    }
}