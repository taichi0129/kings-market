$(function() {
  function buildHTML(comment){
    var html = `
      <div class="side-data__comment__box">
        <div class="side-data__comment__box--main">
          ${comment.text}
        </div>
        <div class="side-data__comment__box__info">
          <div class="side-data__comment__info--name">
            ${comment.user_name}
          </div>
          <div class="side-data__comment__info--date">
            ${comment.date}
          </div>
        </div>
      </div>`
    return html;
  }
  $('#new-message').on('submit', function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      type: 'POST',
      url: url,
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.side-data__comment').append(html);
      $('.side-data__comment').animate({ scrollTop: $('.side-data__comment')[0].scrollHeight});
      $('.side-data__form--message').val('');
      $('.side-data__form--btn').prop('disabled', false);
    })
    .fail(function(){
      alert('送信に失敗しました');
    })
  });
});