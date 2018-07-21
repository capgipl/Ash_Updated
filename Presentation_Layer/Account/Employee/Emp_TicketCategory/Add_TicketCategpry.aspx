<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="Add_TicketCategpry.aspx.cs" Inherits="Presentation_Layer.Account.Employee.Emp_TicketCategory.Add_TicketCategpry" %>
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
       <div class="panel-heading"> <h3>Add Ticket Category</h3></div></div>
   
    
       <div class="panel-body">
       <table>
     <tr  style="height:100%;margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblTicketCategoryName" Text="Ticket_Category_Name:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" ID="txtTicketCategoryName" CssClass="form-control"></asp:TextBox></td>
         <td>
              <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtTicketCategoryName" Text="Please provide category name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtTicketCategoryName" ValidationExpression="[A-Z][a-z]+" Text="Must Start with Capital " ErrorMessage="[Name should start with capital]" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
         </td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblTicketDesc" Text="Ticket_Description:"></asp:Label></td>
         <td><asp:TextBox runat="server"  class="col-xs-3" CssClass="form-control" ID="txtTicketDesc"></asp:TextBox></td>
         <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTicketDesc" Text="Please provide description" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
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
