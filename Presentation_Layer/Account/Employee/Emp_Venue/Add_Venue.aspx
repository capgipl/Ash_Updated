<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="Add_Venue.aspx.cs" Inherits="Presentation_Layer.Account.Employee.Emp_Venue.Add_Venue" %>
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
       <div class="panel-heading"> <h3>Add Venue</h3></div></div>
   
    
       <div class="panel-body">
       <table>
     <tr  style="height:100%;margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="VenueName" Text="Venue_Name:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" ID="txtVenueName" CssClass="form-control"></asp:TextBox></td>
         <td>
             
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtVenueName" Text="Please provide Venue Name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtVenueName" ValidationExpression="[A-Z][a-z]+" Text="Venue Name starting with capital" ErrorMessage="[Name should start with capital alphabet and followed by small alphabets]" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
          
         </td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblLocation" Text="Location:"></asp:Label></td>
         <td><asp:TextBox runat="server"  class="col-xs-3" CssClass="form-control" ID="txtLocation"></asp:TextBox></td>
          <td>
             
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLocation" Text="Please provide Location" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLocation" ValidationExpression="[A-Z][a-z]+" Text="Location starting with capital" ErrorMessage="[start with capital alphabet and followed by small alphabets]" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
          
         </td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td style="width:40%"><asp:Label class="control-label col-sm-2" Width="20%" runat="server" ID="lblDescription" Text="Description:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  CssClass="form-control" ID="txtDescription"></asp:TextBox></td>
         <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescription" Text="Please provide description" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
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
