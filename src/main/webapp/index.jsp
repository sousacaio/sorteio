
<!------ Include the above in your HEAD tag ---------->
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                   url = "jdbc:mysql://localhost/sorteio"
                   user = "root"  password = ""/>

<sql:query dataSource = "${snapshot}" var = "result">
    SELECT * from sorteios ORDER BY id DESC;
</sql:query>
  <jsp:include page = "head.jsp" />
<div class="container">
    <div class="row">
        <div>
            <form action="#" >
                <div class="input-group">
                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                    <input class="form-control" id="system-search" name="q" placeholder="Procurar por" required>
                    <span class="input-group-btn">
                        <button type="hidden" class="btn btn-default">Pesquisar</button>
                    </span>
                </div>
            </form>
        </div>
        <br>
    </div>
    <div class="row">
        <div >
            <a href="form.jsp" class="btn btn-primary btn-lg btn-block">Novo sorteio</a>
        </div>
    </div>
    <div class="row">
        <h2>Últimos sorteios registrados:</h2>
        <div>
            <table class="table table-list-search">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Objeto</th>
                        <th>Ganhador</th>
                    </tr>
                </thead>
                <c:forEach var = "row" items = "${result.rows}">
                    <tr>
                        <td> <c:out value = "${row.id}"/></td>
                        <td> <c:out value = "${row.objeto}"/></td>
                        <td> <c:out value = "${row.ganhador}"/></td>
                    </tr>
                </c:forEach>
                <tbody>

                </tbody>
            </table>   
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        var activeSystemClass = $('.list-group-item.active');

        //something is entered in search form
        $('#system-search').keyup(function () {
            var that = this;
            // affect all table rows on in systems table
            var tableBody = $('.table-list-search tbody');
            var tableRowsClass = $('.table-list-search tbody tr');
            $('.search-sf').remove();
            tableRowsClass.each(function (i, val) {

                //Lower text for case insensitive
                var rowText = $(val).text().toLowerCase();
                var inputText = $(that).val().toLowerCase();
                if (inputText != '')
                {
                    $('.search-query-sf').remove();
                    tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Procurando por: "'
                            + $(that).val()
                            + '"</strong></td></tr>');
                } else
                {
                    $('.search-query-sf').remove();
                }

                if (rowText.indexOf(inputText) == -1)
                {
                    //hide rows
                    tableRowsClass.eq(i).hide();

                } else
                {
                    $('.search-sf').remove();
                    tableRowsClass.eq(i).show();
                }
            });
            //all tr elements are hidden
            if (tableRowsClass.children(':visible').length == 0)
            {
                tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
            }
        });
    });
</script>
