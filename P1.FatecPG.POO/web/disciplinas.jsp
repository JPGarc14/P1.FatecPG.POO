<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas</title>
    </head>
    <body>

        <h1>Disciplinas</h1>
        <table border ="i">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Ementa</th>
                    <th>Ciclo</th>
                    <th>Nota</th>
                </tr>
            </thead>
            <tbody>
                <%for (int i = 0;i < listaDisciplinas.getList().size(); i++){%>
                <tr>
                    <td><%= listaDisciplinas.getList().get(i).getNome<()%>/td>
                    <td><%= listaDisciplinas.getList().get(i).getEmenta<()%></td>
                    <td><%= listaDisciplinas.getList().get(i).getCiclo<()%></td>
                    
                    <td>
                        <form method="post">
                            <%= listaDisciplinas.getList().get(i).getNota<()%></td>
                            <input type="number" nome="nota" value="0.0" step="0.1" max="10" min="0" required/>
                            <input type="submit" nome alterar value="Alterar Nota"/>
                            <input type="hidden" name="i" value ="<%=i%>"/>
                        </form>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </body>
</html>
