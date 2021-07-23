<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sign.aspx.cs" Inherits="MyProject.Sign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    function valid()
     {
        var isvalid = true;
        if (userName() == false)
            isvalid = false;
        if (password() == false)
            isvalid = false;
        if (phone() == false)
            isvalid = false;
        if (document.getElementById("pwdConfirm").value != document.getElementById("pwd").value) {
            isvalid = false;
            document.getElementById("pwdConfirm").style.backgroundColor = ("red");
            document.getElementById("confirm").innerHTML = "הסיסמאות לא תואמות";
        }
        else {
            document.getElementById("pwdConfirm").style.backgroundColor = ("white");
            document.getElementById("confirm").innerHTML = "";
        }
        return isvalid;

    }
    function userName() {
        var error = document.getElementById("userNameConfirm");
        var username = document.getElementById("username");
        error.innerHTML = "";
        username.style.backgroundColor = "white";
        if (username.value == "") {
            error.innerHTML = "אסור להשאיר את השדה ריק";
            username.style.backgroundColor = "red";
            return false;
        }
        return true;
    }
        function password() {
            var error = document.getElementById("password");
            var password = document.getElementById("pwd");
            error.innerHTML = "";
            password.style.backgroundColor = "white";
            if (password.value == "") {
                error.innerHTML = "אסור להשאיר את השדה ריק";
                password.style.backgroundColor = "red";
                return false;
            }
            var misparim = 0;
            var otiot1 = 0;
            var otiot2 = 0;
            for (var i = 0; i < password.value.length; i++) {
                if (isNaN(password.value[i]) == true) {
                    if (password.value[i] == password.value[i].toUpperCase())
                        otiot2++;
                    else
                        otiot1++;
                }
                else
                    misparim++;
            }
            if (misparim < 2) {
                error.innerHTML = "חייב להיות לפחות 2 מספרים";
                password.style.backgroundColor = "red";
                return false;
            }
            if (otiot1 < 1) {
                error.innerHTML = "חייב להיות לפחות אות קטנה אחת";
                password.style.backgroundColor = "red";
                return false;
            }
            if (otiot2 < 1) {
                error.innerHTML = "חייב להיות לפחות אות גדולה אחת";
                password.style.backgroundColor = "red";
                return false;
            }
            return true;

        }
        function phone() {
            var error = document.getElementById("phone");
            var phone = document.getElementById("tel");
            error.innerHTML = "";
            phone.style.backgroundColor = "white";
            if (phone.value == "") {
                error.innerHTML = "אסור להשאיר את השדה ריק";
                phone.style.backgroundColor = "red";
                return false;
            }
            for (var i = 0; i < phone.value.length; i++) {
                if (isNaN(phone.value[i]) == true) {
                    error.innerHTML = "אסור אותיות";
                    phone.style.backgroundColor = "red";

                    return false;
                }

            }
            if (phone.value.length < 7) {
                error.innerHTML = "מספר הטלפון קצר מידי";
                phone.style.backgroundColor = "red";

                return false;
            }
            return true;
        }
   
  
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>

<embed src=שמש.mp3 height="60" width="700" hidden="true"  loop="true"/> 
 <h1><img style="text-align:center" height="80"  src="כותרת.png"/></h1>
 
              <tr> <td>הכנס שם משתמש:</td></tr> 
              <tr> <td><input type="text" name="username"  id="username" /></td> <td id="userNameConfirm"></td></tr>
              <tr> <td>הכנס סיסמא:</td></tr> 
              <tr> <td><input type="password" name="pwd" id="pwd" /></td> <td id="password"></td></tr> 
              <tr> <td>הכנס סיסמא בשנית:</td></tr> 
              <tr> <td><input type="password" name="pwdConfirm" id="pwdConfirm" /></td><td id="confirm"></td></tr> 
              <tr> <td>הכנס מספר טלפון:</td></tr> 
              <tr> <td><input type="text" id="tel" name="tel"/><select name="select"> 
                <option value="052">052</option>
                <option value="050">050</option>
                <option value="054">054</option>
                <option value="053">053</option>
                <option value="058">058</option>
      </select></td>
          <td id="phone" name="phone"></td></tr> 

          <tr> <td><input type="submit" name="sub" value="הירשם לאתר!"  /> </td></tr> 

              </table>

</asp:Content>
