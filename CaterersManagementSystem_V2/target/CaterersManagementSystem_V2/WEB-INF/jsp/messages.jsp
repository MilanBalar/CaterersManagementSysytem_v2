<%
    String message=(String) session.getAttribute("message");
   if(message != null)
   {  
      System.out.print(message);
      
%>

<div class="alert alert-info" role="alert">
  <b><h4 class="alert-heading"><strong>${message}</strong></h4></b>
</div>


<%
     session.removeAttribute("message"); 
   }
%>