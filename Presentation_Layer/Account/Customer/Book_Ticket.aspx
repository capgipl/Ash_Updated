<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Master.Master" AutoEventWireup="true" CodeBehind="Book_Ticket.aspx.cs" Inherits="Presentation_Layer.Account.Customer.Book_Ticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
     <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 
  
         <center>
   <div style="height:100%" class="panel panel-default" >
       <div class="panel panel-info">
       <div class="panel-heading"> <h3>Results</h3></div></div>
   
    
       <div class="panel-body">
       <table style="text-align:center">
            <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server" AssociatedControlID="MatchName" CssClass="col-md-2 control-label">Match_Name:</asp:Label></td>
      <td><asp:DropDownList ID="MatchName" CssClass="form-control" runat="server">
          </asp:DropDownList></td>
         <td><asp:RequiredFieldValidator runat="server" ControlToValidate="MatchName"
                    CssClass="text-danger" ForeColor="Red" ErrorMessage="The MatchName field is required." /></td>

     </tr>
           <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" AssociatedControlID="availabletic" CssClass="col-md-2 control-label">AvailableTickets:</asp:Label></td>
         <td><asp:Label runat="server" ID="availabletic" CssClass="col-md-2 control-label"></asp:Label></td> 
        
     </tr>
     <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" AssociatedControlID="nooftic" CssClass="col-md-2 control-label">No_Of_Tickets:</asp:Label></td>
         <td><asp:TextBox runat="server" TextMode="Number" class="col-xs-3" ID="nooftic" CssClass="form-control" ></asp:TextBox></td>
         <td>
                    <asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="nooftic" Text="Please provide Number of tickets" ErrorMessage="[Number Of Tickets should Be Enter]" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvID" runat="server" ControlToValidate="nooftic" Type="Integer" MinimumValue="1" MaximumValue="100" ErrorMessage="[Number Of Tickets Should Be 1 to 100]" ForeColor="Red" Display="Dynamic"></asp:RangeValidator>
                </td>
     </tr>
    
     
     <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"   AssociatedControlID="ticcategory" CssClass="col-md-2 control-label">Ticket_Category:</asp:Label></td>
          <td><asp:DropDownList ID="ticcategory" CssClass="form-control" runat="server">
          </asp:DropDownList></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="ticcategory"
                    CssClass="text-danger" ForeColor="Red" ErrorMessage="The Ticket Category  field is required." /></td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%"> <asp:Label runat="server" AssociatedControlID="price1" CssClass="col-md-2 control-label">Price:</asp:Label></td>
         <td><asp:Label runat="server" ID="price1" CssClass="col-md-2 control-label"></asp:Label></td> 
        
     </tr>
          
           <tr><td><br /></td></tr>
     <tr>
       <td></td>
         <td style="margin:100%"><asp:Button runat="server" class="btn btn-primary" Text="BookTicket"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             
         <asp:Button runat="server"   class="btn btn-primary" Text="Reset" /></td>
     </tr>
            
     
 </table>
   </div>
    
    </div>   

            </center>
</asp:Content>
