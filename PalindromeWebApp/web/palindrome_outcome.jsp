<%-- 
    Document   : palindrome_outcome
    Created on : 17 Feb 2025, 6:59:59 PM
    Author     : nhlak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Palindrome outcome</title>
    </head>
    <body>
        <h1>Oui Outcome Mate: </h1>
        <%
            int number = Integer.parseInt(request.getParameter("number"));
            int original_number = number;
            int reveresd = 0;
            while(number != 0){
                reveresd = reveresd * 10 + number % 10;
                number = number / 10;
            }
            
            String palindrome = "";
            if(reveresd == original_number){
                palindrome = "it is a palindrome";
            }else{
                palindrome ="not a palindrome";
            }

        %>
        <p>
            The outcome is: number entered: <%=original_number%> reversed form: <%=reveresd%> outcome <%=palindrome%>.
        </p>
        
        <p>Click <a href="index.html">here</a> to go back home</p>
    </body>
</html>
