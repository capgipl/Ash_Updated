﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="matchDetails.aspx.cs" Inherits="Presentation_Layer.Account.Employee.Emp_Match.matchDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <br />
    <br />
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

   
        <center>
   <div style="height:100%;" class="panel panel-default" >
       <div class="panel panel-info">
       <div class="panel-heading"> <h3>Match Info</h3></div></div>
   
    
       <div class="panel-body" >
       
           <div>
              
               <asp:Label Text="Search:" style="text-align:right" runat="server"></asp:Label>
               <asp:TextBox style="text-align:left" OnTextChanged="searchtxt1_TextChanged" runat="server" ID="searchtxt1" AutoPostBack="true" ></asp:TextBox><i class="fa fa-search"></i>
                 <button style="text-align:left" onclick="btnrefresh" class="btn btn-primary"><span class="glyphicon glyphicon-refresh"></span> Refresh</button>
           </div>
           <br /><br />
           <div style="width: 50%; height: 290px;" >
                  <a href="~/Account/Employee/Emp_Match/Add_Match.aspx" runat="server">Add Match</a>
  <asp:Panel runat="server" ID="panel1">
       
      <asp:GridView ID="GridView1" runat="server"  CssClass= "table table-striped table-bordered table-condensed" AllowPaging="True" DataKeyNames="MatchName" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="MatchName" HeaderText="MatchName" SortExpression="MatchName" />
              <asp:BoundField DataField="TeamOneName" HeaderText="TeamOneName" SortExpression="TeamOneName" />
              <asp:BoundField DataField="TeamTwoName" HeaderText="TeamTwoName" SortExpression="TeamTwoName" />
              <asp:BoundField DataField="VenueName" HeaderText="VenueName" SortExpression="VenueName" />
          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="SELECT MatchName, TeamOneName, TeamTwoName, VenueName FROM IPL_MGMT_SYSTEM.Match"  DeleteCommand="delete from IPL_MGMT_SYSTEM.Match where [MatchName]=@MatchName" UpdateCommand="update IPL_MGMT_SYSTEM.Match set [MatchName]=@MatchName,[TeamOneName]=@TeamOneName, [TeamTwoName]=@TeamTwoName, [VenueName]=@VenueName where [MatchName]=@MatchName"></asp:SqlDataSource>
      </asp:Panel>
               <asp:Panel runat="server" ID="panel2">
              <asp:GridView ID="GridView2"  CssClass= "table table-striped table-bordered table-condensed" runat="server" DataKeyNames="MatchName" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="SqlDataSource2">
                  <Columns>
                      <asp:BoundField DataField="MatchName" HeaderText="MatchName" SortExpression="MatchName" />
                      <asp:BoundField DataField="TeamOneName" HeaderText="TeamOneName" SortExpression="TeamOneName" />
                      <asp:BoundField DataField="TeamTwoName" HeaderText="TeamTwoName" SortExpression="TeamTwoName" />
                      <asp:BoundField DataField="VenueName" HeaderText="VenueName" SortExpression="VenueName" />
                  </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString %>" SelectCommand="SELECT MatchName, TeamOneName, TeamTwoName, VenueName FROM IPL_MGMT_SYSTEM.Match where [MatchName]=@MatchName" DeleteCommand="delete from IPL_MGMT_SYSTEM.Match where [MatchName]=@MatchName" UpdateCommand="update IPL_MGMT_SYSTEM.Match set [MatchName]=@MatchName,[TeamOneName]=@TeamOneName, [TeamTwoName]=@TeamTwoName, [VenueName]=@VenueName where [MatchName]=@MatchName">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="searchtxt1" Name="MatchName" PropertyName="Text" />
                       </SelectParameters>
                   </asp:SqlDataSource>
               </asp:Panel>
           </div>
    </div>
    </div>   

            </center>
</asp:Content>
