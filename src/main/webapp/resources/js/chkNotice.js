$(function () {
  $("#userPw").keyup(function () {
    $("#chkNotice").html("");
  });

  $("#userPwChk").keyup(function () {
    if ($("#userPw").val() != $("#userPwChk").val()) {
      $("#chkNotice").html("비밀번호 일치하지 않음<br><br>");
      $("#chkNotice").attr("color", "#f82a2aa3");
    } else {
      $("#chkNotice").html("비밀번호 일치함<br><br>");
      $("#chkNotice").attr("color", "#199894b3");
    }
  });
});
