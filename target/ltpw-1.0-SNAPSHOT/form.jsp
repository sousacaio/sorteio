<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<div class="container">
    <div class="row">
        <input type="hidden" name="count" value="1" />
        <div class="control-group" id="fields">
            <label class="control-label" for="field1">Sorteio</label>
            <div class="controls" id="profs"> 
                <form  action="sortSvl" class="input-append" method="POST">
                    <div id="field">
                        <input class="form-control"  name="objeto" type="text" placeholder="Insira o objeto a ser sorteado" />
                        
                        <input autocomplete="off" class="input" id="field1" name="prof1" type="text" placeholder="Insira o nome" data-items="8"/>
                        <button id="b1" class="btn add-more" type="button">+</button></div>
                    <input type="submit">
                </form>
                <br>
                <small>Press + to add another form field :)</small>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
    var next = 1;
    $(".add-more").click(function(e){
        e.preventDefault();
        var addto = "#field" + next;
        var addRemove = "#field" + (next);
        next = next + 1;
        var newIn = '<input autocomplete="off" class="input form-control" id="field' + next + '" name="prof1"' + next + '" type="text">';
        var newInput = $(newIn);
        var removeBtn = '<button id="remove' + (next - 1) + '" class="btn btn-danger remove-me" >-</button></div><div id="field">';
        var removeButton = $(removeBtn);
        $(addto).after(newInput);
        $(addRemove).after(removeButton);
        $("#field" + next).attr('data-source',$(addto).attr('data-source'));
        $("#count").val(next);          
            $('.remove-me').click(function(e){
                e.preventDefault();
                var fieldNum = this.id.charAt(this.id.length-1);
                var fieldID = "#field" + fieldNum;
                $(this).remove();
                $(fieldID).remove();
            });
    });      
});
   
</script>