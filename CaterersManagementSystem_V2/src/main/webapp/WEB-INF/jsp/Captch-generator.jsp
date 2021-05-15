<!DOCTYPE html>  
<html>  
<head>  
    <title>Create Captcha</title>  
    <script type="text/javascript">  
        /* Function to Generat Captcha */  
        function GenerateCaptcha() {  
            var chr1 = Math.ceil(Math.random() * 10) + '';  
            var chr2 = Math.ceil(Math.random() * 10) + '';  
            var chr3 = Math.ceil(Math.random() * 10) + '';  
  
            var str = new Array(4).join().replace(/(.|$)/g, function () { return ((Math.random() * 36) | 0).toString(36)[Math.random() < .5 ? "toString" : "toUpperCase"](); });  
            var captchaCode = str + chr1 + ' ' + chr2 + ' ' + chr3;  
            document.getElementById("txtCaptcha").value = captchaCode  
        }  
  
        /* Validating Captcha Function */  
        function ValidCaptcha() {  
            var str1 = removeSpaces(document.getElementById('txtCaptcha').value);  
            var str2 = removeSpaces(document.getElementById('txtCompare').value);  
  
            if (str1 == str2)
            {  $('#register').removeAttr('disabled');
                 return true;  
            }
            else{
            	 $('#register').attr('disabled', 'disabled');
            return false;  
            }
        }  
  
        /* Remove spaces from Captcha Code */  
        function removeSpaces(string) {  
            return string.split(' ').join('');  
        }  
    </script>  
   <style>
.container {
  position: relative;
  font-family: courier;
}

.text-block {
  position: absolute;
  bottom: 20px;
  left: 0px;
  background-color: black;
  color: white;
  padding-left: 20px;
  padding-right: 20px;
}
</style>
 
</head>  
<body onload="GenerateCaptcha();"> 
 

  <!--   ------------------------------ -->
  <br><br><br>  <br><br><br> <br><br><br> <br><br><br>
   <div class="container">

  <div class="text-block">
    <div style="text-align:center; color: white;">

       <h2><u>Generating Captcha </u></h2> <br>
        <input type="text" id="txtCaptcha" size="50" style="color:black;" /><br><br>
        <h4>Enter the Captcha Text:  </h4>
       
        <input type="text" style="color: black" id="txtCompare" /> <br><br>
         <input id="btnValid" style="color: black" type="button" value="Check" onclick="alert(ValidCaptcha());" />
        <input type="button" style="color: black" id="btnrefresh" value="Refresh" onclick="GenerateCaptcha();" />  
         
     </div>
  </div>
</div>
    
 <!--    -------------------------------- -->
  
</body>  
</html>  