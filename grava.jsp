<%@page language="java" import="java.sql.*" %>

<%

 //cria as variaveis
 String vnome = request.getParameter("nome");
 String vsobrenome = request.getParameter("sobrenome");
 String vemail = request.getParameter("email");
 String  vdia = request.getParameter("dia");
 String vhorario = request.getParameter("horario");
 
 
 //cria as variaveis para acessar o banco de dados 
 String banco = "Projeto_web";
 String url = "jdbc:mysql://localhost:3306/" + banco;
 String usuario = "root";
 String senha = "root";

 //driver para o banco Mysql
 String driver = "com.mysql.jdbc.Driver";

 //carregar driver na memoria
 Class.forName(driver);

 //criar variavel para conectar com o banco
 Connection conexao ;

 conexao = DriverManager.getConnection(url, usuario, senha);

 Statement stm = conexao.createStatement();

 String sql = "insert into agendamento (nome,sobrenome,email,dia,horario) values ('"+ vnome + "', '"+ vsobrenome + "', '"+ vemail + "', '"+ vdia + "', '"+ vhorario +"')";

 ResultSet dados;

 stm.executeUpdate(sql) ;

 conexao.close();
 stm.close();


 out.print("Dados gravados com sucesso!");
 out.print("<br><br>");
 out.print("<a href='agendar.html'>Voltar</a>");
%>

