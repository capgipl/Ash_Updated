﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="StatDetails.aspx.cs" Inherits="Presentation_Layer.Account.Employee.Emp_Stat.StatDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
    <br />
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

   
        <center>
   <div style="height:100%;" class="panel panel-default" >
       <div class="panel panel-info">
       <div class="panel-heading"> <h3>Statistcs Info</h3></div></div>
   
    
       <div class="panel-body" >
       
           <div>
              
               <asp:Label Text="Search:" style="text-align:right" runat="server"></asp:Label>
               <asp:TextBox style="text-align:left" OnTextChanged="searchtxt1_TextChanged" runat="server" ID="searchtxt1" AutoPostBack="true" ></asp:TextBox><i class="fa fa-search"></i>
                 <button style="text-align:left" onclick="btnrefresh" class="btn btn-primary"><span class="glyphicon glyphicon-refresh"></span> Refresh</button>
           </div>
           <br /><br />
           <div style="width: 50%; height: 290px;" >
           
  <asp:Panel runat="server" ID="panel1">
    <a href="~/Account/Employee/Emp_Stat/Add_Stat.aspx" runat="server">Add Statistics</a>
   <asp:GridView ID="GridView1"  CssClass= "table table-striped table-bordered table-condensed" runat="server" AllowPaging="True" DataKeyNames="TeamName" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="SqlDataSource1">
       <Columns>
           <asp:BoundField DataField="TeamName" HeaderText="TeamName" SortExpression="TeamName" />
           <asp:BoundField DataField="Played" HeaderText="Played" SortExpression="Played" />
           <asp:BoundField DataField="Won" HeaderText="Won" SortExpression="Won" />
           <asp:BoundField DataField="Lost" HeaderText="Lost" SortExpression="Lost" />
           <asp:BoundField DataField="Tied" HeaderText="Tied" SortExpression="Tied" />
           <asp:BoundField DataField="NR" HeaderText="NR" SortExpression="NR" />
           <asp:BoundField DataField="NetRR" HeaderText="NetRR" SortExpression="NetRR" />
           <asp:BoundField DataField="Pts" HeaderText="Pts" SortExpression="Pts" />
           <asp:BoundField DataField="FromPoints" HeaderText="FromPoints" SortExpression="FromPoints" />
       </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" DeleteCommand="delete   FROM IPL_MGMT_SYSTEM.Stat where [TeamName]=@TeamName" SelectCommand="SELECT  TeamName,Played, Won, Lost, Tied, NR, NetRR, Pts, FromPoints  FROM IPL_MGMT_SYSTEM.Stat" UpdateCommand="update IPL_MGMT_SYSTEM.Stat set [TeamName]=@TeamName, [Played]=@Played, [Won]=@Won,[Lost]=@Lost,[Tied]=@Tied,[NR]=@NR,[NetRR]=@NetRR,[Pts]=@Pts,[FromPoints]=@FromPoints where [TeamName]=@TeamName">
          <DeleteParameters>
              <asp:Parameter Name="TeamName" />
          </DeleteParameters>
          <UpdateParameters>
              <asp:Parameter Name="TeamName" />
              <asp:Parameter Name="Played" />
              <asp:Parameter Name="Won" />
              <asp:Parameter Name="Lost" />
              <asp:Parameter Name="Tied" />
              <asp:Parameter Name="NR" />
              <asp:Parameter Name="NetRR" />
              <asp:Parameter Name="Pts" />
              <asp:Parameter Name="FromPoints" />
          </UpdateParameters>
      </asp:SqlDataSource>
      </asp:Panel>
               <asp:Panel runat="server" ID="panel2">
                    <a href="~/Account/Employee/Emp_Stat/Add_Stat" runat="server">Add Statistics</a>
               <asp:GridView ID="GridView2"  CssClass= "table table-striped table-bordered table-condensed" runat="server" AllowPaging="True" DataKeyNames="TeamName" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="SqlDataSource2">
                   <Columns>
                       <asp:BoundField DataField="TeamName" HeaderText="TeamName" SortExpression="TeamName" />
                       <asp:BoundField DataField="Played" HeaderText="Played" SortExpression="Played" />
                       <asp:BoundField DataField="Won" HeaderText="Won" SortExpression="Won" />
                       <asp:BoundField DataField="Lost" HeaderText="Lost" SortExpression="Lost" />
                       <asp:BoundField DataField="Tied" HeaderText="Tied" SortExpression="Tied" />
                       <asp:BoundField DataField="NR" HeaderText="NR" SortExpression="NR" />
                       <asp:BoundField DataField="NetRR" HeaderText="NetRR" SortExpression="NetRR" />
                       <asp:BoundField DataField="Pts" HeaderText="Pts" SortExpression="Pts" />
                       <asp:BoundField DataField="FromPoints" HeaderText="FromPoints" SortExpression="FromPoints" />
                   </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" DeleteCommand="delete   FROM IPL_MGMT_SYSTEM.Stat where [TeamName]=@TeamName" SelectCommand="SELECT  TeamName,Played, Won, Lost, Tied, NR, NetRR, Pts, FromPoints  FROM IPL_MGMT_SYSTEM.Stat where [TeamName]=@TeamName" UpdateCommand="update IPL_MGMT_SYSTEM.Stat set [TeamName]=@TeamName, [Played]=@Played, [Won]=@Won,[Lost]=@Lost,[Tied]=@Tied,[NR]=@NR,[NetRR]=@NetRR,[Pts]=@Pts,[FromPoints]=@FromPoints where [TeamName]=@TeamName">
                       <DeleteParameters>
                           <asp:Parameter Name="TeamName" />
                       </DeleteParameters>
                       <SelectParameters>
                           <asp:ControlParameter ControlID="searchtxt1" Name="TeamName" PropertyName="Text" />
                       </SelectParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="TeamName" />
                           <asp:Parameter Name="Played" />
                           <asp:Parameter Name="Won" />
                           <asp:Parameter Name="Lost" />
                           <asp:Parameter Name="Tied" />
                           <asp:Parameter Name="NR" />
                           <asp:Parameter Name="NetRR" />
                           <asp:Parameter Name="Pts" />
                           <asp:Parameter Name="FromPoints" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
               </asp:Panel>
           </div>
    </div>
    </div>   

            </center>
</asp:Content>