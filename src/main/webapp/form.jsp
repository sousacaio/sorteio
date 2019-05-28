<jsp:include page = "head.jsp" />
<div class="container">
        <input type="hidden" name="count" value="1" />
        <div class="control-group" id="fields">
            <div class="controls" id="profs"> 
                <form  action="sortSvl" class="input-append" method="POST">
                    <div id="field">
                        <div class="form-group">
                              <label class="control-label" for="field1">Premiação:</label>
                            <input class="form-control" name="objeto" type="text" REQUIRED="TRUE" placeholder="Insira o objeto a ser sorteado" />
                        </div>
                         <div class="form-group">
                               <label class="control-label" for="field1">Participantes:</label>
                        <input autocomplete="off" class="input form-control" id="field1" REQUIRED="TRUE" name="prof1" type="text" placeholder="Insira o nome do participante" data-items="8"/>
                         </div>
                        <button id="b1" class="btn add-more" type="button">+</button>
                    </div>
                    <br/>
                    <input type="submit" class="btn btn-primary btn-lg btn-block">
                </form>
                <br>    
            </div>
        </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        var next = 1;
        $(".add-more").click(function (e) {
            e.preventDefault();
            var addto = "#field" + next;
            var addRemove = "#field" + (next);
            next = next + 1;
            var newIn = '<input REQUIRED="TRUE" autocomplete="off" class="input form-control" id="field' + next + '" name="prof1"' + next + '" type="text">';
            var newInput = $(newIn);
            var removeBtn = '<button id="remove' + (next - 1) + '" class="btn btn-danger remove-me" >-</button></div><div id="field">';
            var removeButton = $(removeBtn);
            $(addto).after(newInput);
            $(addRemove).after(removeButton);
            $("#field" + next).attr('data-source', $(addto).attr('data-source'));
            $("#count").val(next);
            $('.remove-me').click(function (e) {
                e.preventDefault();
                var fieldNum = this.id.charAt(this.id.length - 1);
                var fieldID = "#field" + fieldNum;
                $(this).remove();
                $(fieldID).remove();
            });
        });
    });

</script>
