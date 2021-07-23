<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="MyProject.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<embed src=מביט.mp3 height="60" width="700" hidden="true"  loop="true"/> 
<h3><%Response.Write(Session["kavua"]); %></h3>
</asp:Content>
