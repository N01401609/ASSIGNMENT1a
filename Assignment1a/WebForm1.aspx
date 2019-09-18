<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment1a.WebForm1" %>

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
                <h2>Personal Information</h2>
                <div>
                    <label>First Name:</label>
                    <asp:TextBox runat="server" ID="name" ></asp:TextBox>

                </div>
                <div>
                    <label>Last Name:</label>
                    <asp:TextBox runat="server" ID="last" ></asp:TextBox>
                </div>
                <div>
                    <label>E-mail:</label>
                    <asp:TextBox runat="server" ID="email" ></asp:TextBox>
                </div>
                <div>
                    <label>Age(must be 18+):</label>
                    <asp:TextBox runat="server" ID="age" ></asp:TextBox>
                </div>    
            </section>
            <section>
                <h2>Choose your package</h2>
                <fieldset>
                    <legend>Package Options</legend>
                    <asp:RadioButtonList runat="server" ID="package">
                        <asp:ListItem Text="Student Package" Value="student"></asp:ListItem>
                        <asp:ListItem Text="Adult Package" Value="adult"></asp:ListItem>
                        <asp:ListItem Text="VIP Package" Value="vip"></asp:ListItem>

                    </asp:RadioButtonList>

                </fieldset>

            </section>
            <section>
                <h2>Choose your date</h2>
                <label>Select a preferred booking day:</label>
                <asp:DropDownList runat="server" ID="day">
                    <asp:ListItem Text="Monday" Value="monday"></asp:ListItem>
                    <asp:ListItem Text="Tuesday" Value="tuesday"></asp:ListItem>
                    <asp:ListItem Text="Wednesday" Value="wednesday"></asp:ListItem>
                    <asp:ListItem Text="Thursday" Value="thursday"></asp:ListItem>
                    <asp:ListItem Text="Friday" Value="friday"></asp:ListItem>
                    <asp:ListItem Text="Saturday" Value="saturday"></asp:ListItem>
                    <asp:ListItem Text="Sunday" Value="sunday"></asp:ListItem>
                </asp:DropDownList>
                <fieldset>
                    <legend>Preferred booking time</legend>
                    <asp:CheckBoxList runat="server" ID="time" >
                        <asp:ListItem Text="10-11am" Value="10-11am"></asp:ListItem>
                        <asp:ListItem Text="11am-12pm" Value="11am-12pm"></asp:ListItem>
                        <asp:ListItem Text="1-2pm" Value="1-2pm"></asp:ListItem>
                        <asp:ListItem Text="2-3pm" Value="2-3pm"></asp:ListItem>
                        <asp:ListItem Text="3-4pm" Value="3-4pm,"></asp:ListItem>
                        <asp:ListItem Text="4-5pm" Value="4-5pm"></asp:ListItem>

                    </asp:CheckBoxList>

                </fieldset>

            </section>
            <section>
                <h2>Suscribe!</h2>
                <fieldset>
                    <legend>Would you like us to send you special offers to your registered email address?</legend>
                    <asp:RadioButtonList runat="server" ID="suscribe">
                        <asp:ListItem Text="Yes" Value="yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="no"></asp:ListItem>

                    </asp:RadioButtonList>

                </fieldset>

            </section>
            <section>
                <asp:Button runat="server" Text="Submit" ID="submit" />

            </section>     

        </main>
    </form>
</body>
</html>
