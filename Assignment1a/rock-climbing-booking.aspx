<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rock-climbing-booking.aspx.cs" Inherits="Assignment1a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rock Climbing Booking</title>
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <section>
                <h1>Book your rock climbing experience today!</h1>
                <p>Please fill out the following form to book your experience</p>

            </section>
            
            <section>
                <h2> 1. Register your details</h2>
                <fieldset>
                    <legend>Personal Information</legend>
                    <div>
                        <label>First Name:</label>
                        <asp:TextBox runat="server" ID="climber_first_name" ></asp:TextBox>
                        <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your first name" ControlToValidate="climber_first_name"></asp:RequiredFieldValidator>

                    </div>
                    <div>
                        <label>Last Name:</label>
                        <asp:TextBox runat="server" ID="climber_last_name" ></asp:TextBox>
                        <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your last name" ControlToValidate="climber_last_name"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <label>E-mail:</label>
                        <asp:TextBox runat="server" ID="climber_email" ></asp:TextBox>
                        <%--//ValidationExpression email reference: Java T Point. Java T Point. Sept 21, 2019. Link:https://www.javatpoint.com/asp-net-web-form-regular-expression-validator//--%>
                        <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="climber_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter a valid email"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <label>Age(18-70):</label>
                        <asp:TextBox runat="server" ID="climber_age" ></asp:TextBox>
                        <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="climber_age" ErrorMessage="Sorry you must be between 18 and 70 to sign up for rock climbing" MinimumValue="18" MaximumValue="70" ></asp:RangeValidator>
                    </div>

                </fieldset>
                    
            </section>
            <section>
                <h2>2.Choose your package</h2>
                <fieldset>
                    <legend>Package Options</legend>
                    <asp:RadioButtonList runat="server" ID="package_choice">
                        <asp:ListItem Text="Student Package" Value="Student Package"></asp:ListItem>
                        <asp:ListItem Text="Adult Package" Value="Adult Package"></asp:ListItem>
                        <asp:ListItem Text="VIP Package" Value="Vip Package"></asp:ListItem>

                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select a package" ControlToValidate="package_choice"></asp:RequiredFieldValidator>

                </fieldset>

            </section>
            
            <section>
                <h2>3. Choose your date</h2>
                <label>Select a preferred booking day:</label>
                <asp:DropDownList runat="server" ID="booking_day">
                    <asp:ListItem Text="-Choose a Day-" Value =""></asp:ListItem>
                    <asp:ListItem Text="Monday" Value="Monday"></asp:ListItem>
                    <asp:ListItem Text="Tuesday" Value="Tuesday"></asp:ListItem>
                    <asp:ListItem Text="Wednesday" Value="Wednesday"></asp:ListItem>
                    <asp:ListItem Text="Thursday" Value="Thursday"></asp:ListItem>
                    <asp:ListItem Text="Friday" Value="Friday"></asp:ListItem>
                    <asp:ListItem Text="Saturday" Value="Saturday"></asp:ListItem>
                    <asp:ListItem Text="Sunday" Value="Sunday"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please select a day for your booking" ControlToValidate="booking_day"></asp:RequiredFieldValidator>

                <fieldset>
                    <legend>Preferred booking time</legend>
                    <asp:RadioButtonList runat="server" ID="booking_time" >
                        <asp:ListItem Text="10:00-11:00" Value="10:00-11:00"></asp:ListItem>
                        <asp:ListItem Text="11:00-12:00" Value="11:00-12:00"></asp:ListItem>
                        <asp:ListItem Text="12:00-13:00" Value="12:00-13:00"></asp:ListItem>
                        <asp:ListItem Text="13:00-14:00" Value="13:00-14:00"></asp:ListItem>
                        <asp:ListItem Text="14:00-15:00" Value="14:00-15:00"></asp:ListItem>
                        <asp:ListItem Text="15:00-16:00" Value="15:00-16:00"></asp:ListItem>
                        <asp:ListItem Text="16:00-17:00" Value="16:00-17:00"></asp:ListItem>

                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please select a booking time" ControlToValidate="booking_time"></asp:RequiredFieldValidator>


                </fieldset>

            </section>
            <section>
                <h2>4. Suscribe!</h2>
                <fieldset>
                    <legend> Would you like to register your email with us? </legend>
                    <asp:RadioButtonList runat="server" ID="suscribe_answer">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please select a suscription option" ControlToValidate="suscribe_answer"></asp:RequiredFieldValidator>

                </fieldset>

                <fieldset>
                    <legend> If choosing to register your email with us, select all that may apply</legend>
                    <asp:CheckBoxList runat="server" ID="suscribe_options">
                        <asp:ListItem Text="Send me my receipts through my email" Value="receipt_yes"></asp:ListItem>
                        <asp:ListItem Text="Send me reminders of my bookings" Value="reminder_yes"></asp:ListItem>
                        <asp:ListItem Text="Send me offers" Value="offers_yes"></asp:ListItem>
                        <asp:ListItem Text="Send me invitations to events" Value="events_yes"></asp:ListItem>
                    </asp:CheckBoxList>
               
                </fieldset>

            </section>

            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true" />
   
            </section>

            <section id="summarybox" runat="server">
            </section>

            <section>
                <input type="submit" value="submit" />
            </section>
            

        </main>
    </form>
</body>
</html>
