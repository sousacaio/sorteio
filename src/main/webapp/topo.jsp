<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SisLTPW</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Aluno<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="aluno_form.jsp">Novo Aluno</a></li>
          <li><a href="aluno_lista.jsp">Lista de Alunos</a></li>
    
        </ul>
      </li>
   <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Professor<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="professor_form.jsp">Novo Professor</a></li>
          <li><a href="#">Lista de Professores</a></li>
        </ul>
    </li> 

    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Turma<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Nova Turma</a></li>
          <li><a href="#">Lista de Turmas</a></li>
          <li><a href="#">Associar Alunos?</a></li>
        </ul>
    </li> 

    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tabelas Auxiliares<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Departamento</a></li>
          <li><a href="#">Disciplina</a></li>
          <li><a href="#">Gênero</a></li>
        </ul>
    </li> 

      
      
    </ul>
  </div>
</nav>

            <!-- Modal -->
       <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
         <div class="modal-dialog" role="document">
           <div class="modal-content">
             <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
               <h4 class="modal-title" id="modalLabel">Excluir Item</h4>
             </div>
             <div class="modal-body">
               Deseja realmente excluir este item?
             </div>
             <div class="modal-footer">
               <button type="button" class="btn btn-primary">Sim</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
             </div>
           </div>
         </div>
       </div> <!-- /.modal -->


<br><br><br>