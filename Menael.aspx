<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menael.aspx.cs" Inherits="MyProject.Menael" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%Table(); %>
<div>
<input type="submit" name="delete" value="מחק משתמש" />
<input type="submit" name="update" value="עדכן משתמש" />
<input type="text" name="menahel" value="" />
<asp:Label Text="" ID="error" runat="server" />
<%Edit(); %>
</div>
</asp:Content>
