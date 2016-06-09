<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Db.aspx.cs" Inherits="Db" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Doctor_ConnectionString %>" SelectCommand="SELECT * FROM [Doctor_Profile]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Doctor_Profile Database"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Doc_Email" HeaderText="Doc_Email" SortExpression="Doc_Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Personal_Contact" HeaderText="Personal_Contact" SortExpression="Personal_Contact" />
                <asp:BoundField DataField="Doc_Name" HeaderText="Doc_Name" SortExpression="Doc_Name" />
                <asp:BoundField DataField="National_Id" HeaderText="National_Id" SortExpression="National_Id" />
                <asp:BoundField DataField="Date_Birth" HeaderText="Date_Birth" SortExpression="Date_Birth" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                <asp:BoundField DataField="Degree_Year" HeaderText="Degree_Year" SortExpression="Degree_Year" />
                <asp:BoundField DataField="Doctor_Id" HeaderText="Doctor_Id" SortExpression="Doctor_Id" />
                <asp:BoundField DataField="Specialist" HeaderText="Specialist" SortExpression="Specialist" />
                <asp:BoundField DataField="Approve" HeaderText="Approve" SortExpression="Approve" />
                <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                <asp:BoundField DataField="Clinic_Name" HeaderText="Clinic_Name" SortExpression="Clinic_Name" />
                <asp:BoundField DataField="Clinic_Address" HeaderText="Clinic_Address" SortExpression="Clinic_Address" />
                <asp:BoundField DataField="Visiting_Time" HeaderText="Visiting_Time" SortExpression="Visiting_Time" />
                <asp:BoundField DataField="Off_Day" HeaderText="Off_Day" SortExpression="Off_Day" />
                <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
                <asp:BoundField DataField="Clinic_Contact" HeaderText="Clinic_Contact" SortExpression="Clinic_Contact" />
                <asp:BoundField DataField="Doc_Bank" HeaderText="Doc_Bank" SortExpression="Doc_Bank" />
                <asp:BoundField DataField="Doc_Bank_Account" HeaderText="Doc_Bank_Account" SortExpression="Doc_Bank_Account" />
                <asp:BoundField DataField="Change_Pswd_Time" HeaderText="Change_Pswd_Time" SortExpression="Change_Pswd_Time" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Doctor_Serial Database"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Doctor_ConnectionString %>" SelectCommand="SELECT * FROM [Doctor_Serial]"></asp:SqlDataSource>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Doc_Email" HeaderText="Doc_Email" SortExpression="Doc_Email" />
                <asp:BoundField DataField="Appointment_Date" HeaderText="Appointment_Date" SortExpression="Appointment_Date" />
                <asp:BoundField DataField="Total_Serial" HeaderText="Total_Serial" SortExpression="Total_Serial" />
                <asp:BoundField DataField="Current_Serial" HeaderText="Current_Serial" SortExpression="Current_Serial" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Patient_Registration Database"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Patient_Registration_ConnectionString %>" SelectCommand="SELECT * FROM [Patient_Registration]"></asp:SqlDataSource>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource5" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Patient_Name" HeaderText="Patient_Name" SortExpression="Patient_Name" />
                <asp:BoundField DataField="Patient_Email" HeaderText="Patient_Email" SortExpression="Patient_Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Patient_Contact" HeaderText="Patient_Contact" SortExpression="Patient_Contact" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Change_Pswd_Time" HeaderText="Change_Pswd_Time" SortExpression="Change_Pswd_Time" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Prescription Database"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Prescription_ConnectionString %>" SelectCommand="SELECT * FROM [Prescription]"></asp:SqlDataSource>
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Doc_Name" HeaderText="Doc_Name" SortExpression="Doc_Name" />
                <asp:BoundField DataField="Doc_Email" HeaderText="Doc_Email" SortExpression="Doc_Email" />
                <asp:BoundField DataField="Appointment_Date" HeaderText="Appointment_Date" SortExpression="Appointment_Date" />
                <asp:BoundField DataField="Serial_No" HeaderText="Serial_No" SortExpression="Serial_No" />
                <asp:BoundField DataField="Patient_Email" HeaderText="Patient_Email" SortExpression="Patient_Email" />
                <asp:BoundField DataField="Medicine" HeaderText="Medicine" SortExpression="Medicine" />
                <asp:BoundField DataField="Advice" HeaderText="Advice" SortExpression="Advice" />
                <asp:BoundField DataField="Test" HeaderText="Test" SortExpression="Test" />
                <asp:BoundField DataField="Next_Date" HeaderText="Next_Date" SortExpression="Next_Date" />
                <asp:BoundField DataField="Paid" HeaderText="Paid" SortExpression="Paid" />
                <asp:BoundField DataField="Payment_Method" HeaderText="Payment_Method" SortExpression="Payment_Method" />
                <asp:BoundField DataField="No_Visit" HeaderText="No_Visit" SortExpression="No_Visit" />
                <asp:BoundField DataField="Patient_Name" HeaderText="Patient_Name" SortExpression="Patient_Name" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Button" />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Online_Payment Database"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Online_Payment_ConnectionString %>" SelectCommand="SELECT * FROM [Online_Payment]"></asp:SqlDataSource>
        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Doc_Email" HeaderText="Doc_Email" SortExpression="Doc_Email" />
                <asp:BoundField DataField="Doc_Name" HeaderText="Doc_Name" SortExpression="Doc_Name" />
                <asp:BoundField DataField="Doc_Bank" HeaderText="Doc_Bank" SortExpression="Doc_Bank" />
                <asp:BoundField DataField="Doc_Account_No" HeaderText="Doc_Account_No" SortExpression="Doc_Account_No" />
                <asp:BoundField DataField="Patient_Email" HeaderText="Patient_Email" SortExpression="Patient_Email" />
                <asp:BoundField DataField="Patient_Name" HeaderText="Patient_Name" SortExpression="Patient_Name" />
                <asp:BoundField DataField="Patient_Bank" HeaderText="Patient_Bank" SortExpression="Patient_Bank" />
                <asp:BoundField DataField="Patient_Account_No" HeaderText="Patient_Account_No" SortExpression="Patient_Account_No" />
                <asp:BoundField DataField="Patient_Card" HeaderText="Patient_Card" SortExpression="Patient_Card" />
                <asp:BoundField DataField="Patient_Card_No" HeaderText="Patient_Card_No" SortExpression="Patient_Card_No" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Button" />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Review Database"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:Review_ConnectionString %>" SelectCommand="SELECT * FROM [Review]"></asp:SqlDataSource>
        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource8" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Doc_Name" HeaderText="Doc_Name" SortExpression="Doc_Name" />
                <asp:BoundField DataField="Doc_Email" HeaderText="Doc_Email" SortExpression="Doc_Email" />
                <asp:BoundField DataField="Patient_Name" HeaderText="Patient_Name" SortExpression="Patient_Name" />
                <asp:BoundField DataField="Patient_Email" HeaderText="Patient_Email" SortExpression="Patient_Email" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
                <asp:BoundField DataField="Specialist" HeaderText="Specialist" SortExpression="Specialist" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Button" />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Admin_Edit Database"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:Admin_Edit_ConnectionString %>" SelectCommand="SELECT * FROM [Admin_Edit]"></asp:SqlDataSource>
        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource9">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="News" HeaderText="News" SortExpression="News" />
                <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Button" />
        <br />
&nbsp;<br />
        <br />
    </form>
</body>
</html>
