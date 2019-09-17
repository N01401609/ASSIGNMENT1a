<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment1a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <section>
                <h1>Book your rock climbing experience today!</h1>
                <p>Please fill out the following form to book your experience</p>

            </section>
            
            <section>
                <label>First Name:</label>
                <asp:TextBox runat="server" ID="name" ></asp:TextBox>
            </section>
            <section>
                <label>Last Name:</label>
                <asp:TextBox runat="server" ID="last" ></asp:TextBox>
            </section>
            <section>
                <label>E-mail:</label>
                <asp:TextBox runat="server" ID="email" ></asp:TextBox>

            </section>
            <section>
                <label>Age:</label>
                <asp:DropDownList runat="server" ID="age">
                    <asp:ListItem Text="Under 18" Value="under18"></asp:ListItem>
                    <asp:ListItem Text="19-29" Value="19-29"></asp:ListItem>
                        <asp:ListItem Text="30-59" Value="30-59"></asp:ListItem>
                <asp:ListItem Text="60+" Value="60+"></asp:ListItem>
                </asp:DropDownList>
            </section>
            <fieldset>
                <legend>Level of Experience:</legend>
                <asp:RadioButtonList runat="server" ID="experience">
                            <asp:ListItem Text="Beginner" Value="beginner"></asp:ListItem>
                            <asp:ListItem Text="Medium" Value="medium"></asp:ListItem>
                            <asp:ListItem Text="Experienced" Value="experienced"></asp:ListItem>
                </asp:RadioButtonList>
            </fieldset>
            <fieldset>
                <legend>Preferred booking day:</legend>
                <div>
                    <input type="checkbox" value="monday" id="monday" name="monday"/>
                    <label for="monday">Monday</label>
                </div>
                <div>
                    <input type="checkbox" value="tuesday" id="tuesday" name="tuesday"/>
                    <label for="tuesday">Tuesday</label>
                </div>
                <div>
                    <input type="checkbox" value="wednesday" id="wednesday" name="wednesday"/>
                    <label for="wednesday">Wednesday</label>
                </div>
                <div>
                    <input type="checkbox" value="thursday" id="thursday" name="thursday"/>
                    <label for="thursday">Thursday</label>
                </div>
                <div>
                    <input type="checkbox" value="friday" id="friday" name="friday"/>
                    <label for="friday">Friday</label>
                </div>
                <div>
                    <input type="checkbox" value="saturday" id="saturday" name="saturday"/>
                    <label for="saturday">Saturday</label>
                </div>
                <div>
                    <input type="checkbox" value="sunday" id="sunday" name="sunday"/>
                    <label for="sunday">Saturday</label>
                </div>

            </fieldset>
            <fieldset>
                <legend>Preferred booking time:</legend>
                <div>
                    <input type="checkbox" value="10-11am" id="10-11am" name="10-11am"/>
                    <label for="10-11am">10-11am</label>
                </div>
                <div>
                    <input type="checkbox" value="11am-12pm" id="11am-12pm" name="11am-12pm"/>
                    <label for="11am-12pm">11am-12pm</label>
                </div>
                <div>
                    <input type="checkbox" value="12-1pm" id="12-1pm" name="12-1pm"/>
                    <label for="12-1pm">12-1pm</label>
                </div>
                <div>
                    <input type="checkbox" value="1-2pm" id="1-2pm" name="1-2pm"/>
                    <label for="1-2pm">1-2pm</label>
                </div>
                <div>
                    <input type="checkbox" value="2-3pm" id="2-3pm" name="2-3pm"/>
                    <label for="2-3pm">2-3pm</label>
                </div>
                <div>
                    <input type="checkbox" value="3-4pm" id="3-4pm" name="3-4pm"/>
                    <label for="3-4pm">3-4pm</label>
                </div>
                <div>
                    <input type="checkbox" value="4-5pm" id="4-5pm" name="4-5pm"/>
                    <label for="4-5pm">4-5pm</label>
                </div>

            </fieldset>
        </main>
    </form>
</body>
</html>
