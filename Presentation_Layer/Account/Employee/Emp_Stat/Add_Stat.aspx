<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Master.Master" AutoEventWireup="true" CodeBehind="Add_Stat.aspx.cs" Inherits="Presentation_Layer.Account.Employee.Emp_Stat.Add_Stat" %>
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
       <div class="panel-heading"> <h3>Add Statistics</h3></div></div>
   
    
       <div class="panel-body">
       <table>
     <tr  style="height:100%;margin:10%">
          <td><asp:Label runat="server" AssociatedControlID="TeamName" CssClass="col-md-2 control-label">Team_Name:</asp:Label></td>
      <td><asp:DropDownList ID="TeamName" CssClass="form-control" runat="server">
          </asp:DropDownList></td>
         <td><asp:RequiredFieldValidator runat="server" ControlToValidate="TeamName"
                    CssClass="text-danger" ForeColor="Red" ErrorMessage="TeamName field is required." /></td>

     </tr>
     <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblPlayed" Text="Played:"></asp:Label></td>
         <td><asp:TextBox runat="server"  class="col-xs-3" CssClass="form-control" ID="txtPlayed"></asp:TextBox></td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td style="width:40%"><asp:Label class="control-label col-sm-2" Width="20%" runat="server" ID="lblWon" Text="Won:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  CssClass="form-control" ID="txtWon"></asp:TextBox></td>
     </tr>
     <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblLost" Text="Lost:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="txtLost"></asp:TextBox></td>
     </tr>
    <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblTied" Text="Tied:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="txtTied"></asp:TextBox></td>
     </tr>
    <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblNR" Text="N/R:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="txtNR"></asp:TextBox></td>
     </tr>
    <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblNetRR" Text="NetRR:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="txtNetRR"></asp:TextBox></td>
     </tr>
     <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblPoints" Text="Points:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="TextBox1"></asp:TextBox></td>
     </tr>
    <tr style="margin:10%">
         <td><asp:Label runat="server" class="control-label col-sm-2" ID="lblFromPoints" Text="From_Points:"></asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" CssClass="form-control" ID="txtFromPoints"></asp:TextBox></td>
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
