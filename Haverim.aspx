<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Haverim.aspx.cs" Inherits="MyProject.Haverim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<% if (Request["know"] =="לא מחובר")
   {
       Session["kavua"] = "!דף רק לרשומים";
       Response.Redirect("WebForm6.aspx");
   }
%> 

 
  
<embed src=mangina.mp3 height="60" width="700" hidden="true"  loop="true"/> 
  <img style="text-align:center" height="100"  src="haverim.png">
   <br />
  <table style=" background: rgba( 255 ,255, 224,0.7)"  >
   <tr> 
  <td><img style= height="100" width="105"   src="שאנן.jpg"></td>
  <td><div style="font-family:Tamir"   font-size:"small">
  שׁאֲנָן סטריט (נולד ב-6 במאי 1971) הוא מוזיקאי ישראלי, סולן להקת ההיפ הופ הדג נחש,גדל וחי בירושלים.
  בגיל 14 החל לכתוב שירים, אך את הקריירה המוזיקלית החל לממש רק בגיל 25,
  לאחר פגישה מקרית עם דודוש קלמס מלהקת "מנדו", שבעקבותיה הוקמה להקת הדג נחש.
  בשנת 2001 הקים סטריט את עמותת "פסטיבל בשקל", שמארגנת מדי שנה הופעות של אמנים בשכונות ובפריפריה, תמורת מחיר סמלי של שקל אחד, 
  .מתוך תפיסה שתרבות אינה מותרות, וכי עליה להיות נגישה לכל
  </td>
  </tr>
   <tr> 
  <td><img style= height="100" width="105"   src="גיא.jpg"></td>
  <td><div style="font-family:Tamir"   font-size:"small">
   ב1998 הרגישו חברי "הדג נחש" שהם צריכים חיזוק בדמותו של די.ג'יי בהרכב. 
   גיא מר נבחר למשימה ומהופעות אורח הפך לחבר קבוע ואף לסולן בלהקה. 
   גיא מוכר בשם הבמה כגיר מר אך במקור הוא גיא מרגלית,הוא אף מלחין ופזמונאי
  </td>
  </tr>
   <tr> 
  <td><img style= height="100" width="105"   src="דודו.jpg"></td>
  <td><div style="font-family:Tamir"   font-size:"small">
  בן 42 (נולד ב-3/5/1973). נולד בשם:דוד אריאל קלמס,
  פזמונאי, מלחין, מעבד וחבר להקת הדג נחש.
   דודוש קלמס מוכר בעיקר כקלידן להקת הדג נחש
  </td>
  </tr>
   <tr> 
  <td><img style= height="100" width="105"   src="משה.jpg"></td>
  <td><div style="font-family:Tamir"   font-size:"small">
  משה אסרף, פזמונאי, מלחין, מעבד, מתופף וחבר להקת הדג נחש מאז הקמתה ועד היום,
  .בנוסף היה בהרכב של קרולינה עם חבר נוסף מהדג נחש
  </td> 
  </tr>
     <tr> 
  <td><img style= height="100" width="105"   src="יאיא.jpg"></td>
  <td><div style="font-family:Tamir"   font-size:"small">
    יאיר (יאיא) כהן אהרונוב (נולד ב-13 באפריל 1977) הוא מוזיקאי ישראלי,
    בעודו בן 18, הקים יחד עם שאנן סטריט, דודוש קלמס ומשה אסרף את להקת ההיפ-הופ הדג נחש 
   .ובמקביל לפעילותו ב"דג נחש", הקים כהן אהרונוב שתי להקות נוספות: צ'קלקה ואניקוקו,בנוסף שיתף פעולה עם אמנים רבים
  </td>
  </tr>
    <tr> 
  <td><img style= height="100" width="105"   src="שלומי.jpg"></td>
  <td><div style="font-family:Tamir"   font-size:"small">
  שלומי אלון הצטרף ללהקת הדג נחש באלבומה "לזוז", שיצא בשנת 2003, כנגן סקסופון.
  שלומי מנגן  על סקסופון טנור, סקסופון אלט, סקסופון באריטון, סקסופון סופרן וחליל, 
  .בנוסף הוא גם מלחין וכותב חלק משיריה של הדג נחש
  </td>
  </tr>
</asp:Content> 
