<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="Add_Schedule.aspx.cs" Inherits="Presentation_Layer.Account.Employee.Emp_Schedule.Add_Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="media">
    <%--<div class="media-left media-middle">
      <img src="C:\Users\kapudi\Pictures\Sample Pictures\Desert.ipg" class="media-object" style="width:60px">
    </div>--%>
    <div class="media-body">     
        <center>
            <br /><br />
   <div style="height:100%;width:100%" class="panel panel-default" >
       <div class="panel panel-info">
       <div class="panel-heading"> <h3>Add Schedule</h3></div></div>
   
    
       <div class="panel-body">
       <table>
     <tr  style="height:100%;margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblMatchName" Text="Match_Name:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" ID="txtMatchName" CssClass="form-control"></asp:TextBox></td>
           <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtMatchName" Text="Please provide Match Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtMatchName" ValidationExpression="[A-Z][a-z]+" Text="Match Name starting with capital" ErrorMessage="[Name should start with capital alphabet]" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblTeamOne" Text="Team1:"></asp:Label></td>
         <td><asp:TextBox runat="server"  class="col-xs-3" CssClass="form-control" ID="txtTeamOne"></asp:TextBox></td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTeamOne" Text="Please provide TeamOne Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTeamOne" ValidationExpression="[A-Z][a-z]+" ErrorMessage="TeamOne Name should start with capital" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td style="width:40%"><asp:Label class="control-label col-sm-2" Width="20%" runat="server" ID="lblTeamTwo" Text="Team2:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  CssClass="form-control" ID="txtTeamTwo"></asp:TextBox></td>
          <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTeamTwo" Text="Please provide TeamTwo Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTeamTwo" ValidationExpression="[A-Z][a-z]+" ErrorMessage="TeamTwo  Name should start with capital" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
     </tr>
     <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblVenue" Text="Venue:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="txtVenue"></asp:TextBox></td>
          <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtVenue" Text="Please provide Venue Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtVenue" ValidationExpression="[A-Z][a-z]+" ErrorMessage= "Venue Name should start with capital" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
     </tr>
    <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblScheduleDate" Text="Schedule_Date:"></asp:Label></td>
      <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="txtScheduleDate" TextMode="Date"></asp:TextBox></td> 
        <td>
              <asp:CompareValidator ID="cmpdate" runat="server" ErrorMessage="The date must be greater than or equal to today"
            Operator="GreaterThanEqual" ControlToValidate="txtScheduleDate" ForeColor="Red" Type="date" Display="Dynamic"></asp:CompareValidator>
                    
           <asp:RequiredFieldValidator ID="reqdob" runat="server" ForeColor="Red" ControlToValidate="txtScheduleDate"
                            Text="ScheduleDate Should Be Required"  ErrorMessage="Please provide valid ScheduleDate"></asp:RequiredFieldValidator>

        </td>    
                    
       
     </tr>
     <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblStartTime" Text="Start_Time:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="txtStartTime" TextMode="Time"></asp:TextBox></td>

              <td>
                <asp:RequiredFieldValidator ID="rfvlmr" runat="server" ControlToValidate="txtStartTime" Text="Please provide StartTime value" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
               
            </td>
        
     </tr>
     <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblEndTime" Text="End_Time:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="txtEndTime" TextMode="Time"></asp:TextBox></td>
          <td>
                <asp:RequiredFieldValidator ID="rfvcmr" runat="server" ControlToValidate="txtEndTime" Text="Please provide End Time value" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
               <asp:CompareValidator runat="server" id="cmpcmr" controltovalidate="txtEndTime" controltocompare="txtStartTime" TextMode="Time" operator="GreaterThan" ForeColor ="Red" errormessage="End Time should be greater than the StartTime" />
             </td>
     </tr>
     <tr><td><br /></td></tr>
     <tr>
       <td></td>
         <td style="margin:100%"><asp:Button runat="server" class="btn btn-primary"  Text="Insert"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             
         <asp:Button runat="server"   class="btn btn-primary" Text="Reset" /></td>
     </tr>
 </table>
   </div>
    
    </div>
    

            </center>
          </div>
  </div>
</asp:Content>