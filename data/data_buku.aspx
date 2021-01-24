
<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"  CodeBehind="data_buku.aspx.vb" Inherits="contoso_vb.data_buku1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <h2> Data Buku </h2>

    <a runat="server" href="~/Student/Create">Create</a>
    <div class="row">
        <div class="col-md-4">
           <table border="0" width="100%">
               <tr>
                   <td width="30%"><asp:Label runat="server" > Nama Buku : </asp:Label></td>
                   <td width="50%" ><asp:TextBox ID="src_buku" runat="server" Width="330px" ></asp:TextBox></td>
               </tr>
               
               <tr>
                   <td width="30%"></td>
                   <td > <br /><asp:Button ID="search" runat="server" Text="Search" Width="79px" /></td>
               </tr>
           </table>
        </div>
      </div>
    <br />
    <br />
     
     <div class="GridView">
        <asp:GridView CssClass="table" ID="GridView" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="3" RowStyle-BorderWidth="1" align="center" CellPadding="4" Color="black" GridLines="None">
      
            <Columns>
              
                <asp:BoundField DataField="ID_Student" HeaderText="ID Student" />
                <asp:BoundField DataField="First_Name" HeaderText="First Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" />
                <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" />
                <asp:HyperLinkField Text="Detail" DataNavigateUrlFields="ID_Student" DataNavigateUrlFormatString="~/Student/Detail?id={0}" />
                <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="ID_Student" DataNavigateUrlFormatString="~/Student/Edit?id={0}" />
                <asp:HyperLinkField Text="Hapus" DataNavigateUrlFields="ID_Student" DataNavigateUrlFormatString="~/Student/Delete?id={0}" />
            </Columns>
        </asp:GridView>
      </div>

  
    
   <br />
</asp:Content>