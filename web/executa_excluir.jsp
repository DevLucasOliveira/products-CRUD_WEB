<%-- 
    Document   : executa_excluir
    Created on : 17/02/2020, 20:25:22
    Author     : Lucas Oliveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "dao.ProdutoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

           <%
           try{
               ProdutoDAO prd = new ProdutoDAO();
               prd.excluir(Integer.parseInt(request.getParameter("codigo")));
               response.sendRedirect("index.jsp");
           }catch(Exception erro){
                throw new RuntimeException("Erro 9: "+erro);
            }

           %>


        
    </body>
</html>
