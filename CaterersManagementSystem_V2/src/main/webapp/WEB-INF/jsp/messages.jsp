<%
    String message=(String) request.getAttribute("message");
   if(message != null)
   {  
      System.out.print(message);
      
%>



<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">${message}</h4>
 <!--  <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p> -->
  <hr>
<!--   <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p> -->
</div>

<%
   /*  session.removeAttribute("message"); */
   }
%>