
// gioi thieu
$.('#introduce').on('show.bs.modal',function(){
    $('#introduce').focus();
});
// lien he
$.('#sendMessage').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget);
    var recipient = button.data('whatever');
    var modal = $.(this);
    modal.find('.modal-title').text('New message to ' + recipient);
    modal.find('.modal-body input').val(recipient);
});
// quy dinh
$.('#provisions').on('show.bs.modal', function() {
    $('#provisions').focus();
});
// sticky