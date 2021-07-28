
var domen = "https://localhost:44304";

var loadFile = function (event) {
		var image = document.getElementById('output');
		image.src = URL.createObjectURL(event.target.files[0]);
	};
//Check username exists
function checkUserExists() {
  var username = $("#username").val();
  $.ajax({
    type: "POST",
    url: domen+"/api/User/checkUserExists?username=" + username,
    contentType: "application/json; charset=utf-8",
    async: true,
    success: function(response) {
      $("#message_user").html(response);
    },
  });
}
//Check email exists
function checkEmailExists() {
  var email = $("#userEmail").val();
  $.ajax({
    type: "POST",
    url: domen+"/api/User/checkEmailExists?email=" + email,
    contentType: "application/json; charset=utf-8",
    async: true,
    success: function(response) {
      $("#message_email").html(response);
    },
  });
}
//Check tel exists
function checkTelExists() {
  var tel = $("#userTel").val();
  $.ajax({
    type: "POST",
    url: domen+"/api/User/checkTelExists?tel=" + tel,
    contentType: "application/json; charset=utf-8",
    async: true,
    success: function(response) {
      $("#message_tel").html(response);
    },
  });
}

//Check IDnumber exists
function checkIdNumberExists() {
  var idNum = $("#idNumber").val();
  $.ajax({
    type: "POST",
    url: domen+"/api/User/checkIdNumberExists?idnum=" + idNum,
    contentType: "application/json; charset=utf-8",
    async: true,
    success: function(response) {
      $("#message_number").html(response);
    },
  });
}
$(document).ready(function() {
  $("#username").keyup(function() {
    checkUserExists();
  });
  $("#userEmail").keyup(function() {
    checkEmailExists()
  });
  $("#idNumber").keyup(function() {
    checkIdNumberExists()
  });
  $("#userTel").keyup(function() {
    checkTelExists()
  });
});

//validation
function validateForm() {
  var username = $("#username").val();
  var userrepass = $("#retypePass").val();
  var userpass = $("#userPass").val();
  var userEmail = $("#userEmail").val();
  var userFirstname = $("#userFirstname").val();
  var userLastname = $("#userLastname").val();
  var userTel = $("#userTel").val();
  var message_number = $("#idNumber").val();
  var response = $("#message_user").text();
  var responseEmail = $('#message_email').text();
  var responseTel = $('#message_tel').text();
  var responseIdnumber = $('#message_number').text();
  var flag = true;
  if (username == "") {
    $("#message_user").html("User name can not be empty");
    flag = false;
  }else{
    flag = true;
  }
  if (userpass == "") {
    $("#message_pass").html("Password can not be empty");
    flag = false;
  }else{
    flag = true;
  }
  if (userrepass == "") {
    $("#message_repass").html("Confirm Password can not be empty");
    flag = false;
  }else{flag = true;return true;
  }
  if (userrepass != userpass) {
    $("#message_repass").html("Confirm Password not correct");
    flag = false;
  }else{
    flag = true;
  }
  if (userEmail == "") {
    $("#message_email").html("Email can not be empty");
    flag = false;
  }else{
    flag = true;
  }
  if (userFirstname == "") {
    $("#message_fname").html("First name can not be empty");
    flag = false;
  }else{
    flag = true;
  }
  if (userLastname == "") {
    $("#message_lname").html("Last name can not be empty");
    flag = false;
  }else{
    flag = true;
  }
  if (userTel == "") {
    $("#message_tel").html("Tel can not be empty");
    flag = false;
  }else{
    flag = true;
  }
  if (message_number == "") {
    $("#message_number").html("IDStudent can not be empty");
    flag = false;
  }else{
    flag = true;
  }
  if (response != "") {
    flag = false;
  }else{
    flag = true;
  }
  if(responseEmail != ""){
    flag = false;
  }else{
    flag = true;
  }
  if(responseTel != ""){
    flag = false;
  }else{
    flag = true;
  }
  if(responseIdnumber != ""){
    flag = false;
  }else{
    flag = true;
  }
  return flag;
}

var name1 = document.querySelector("#username");
var pass = document.querySelector("#userPass");
var repass = document.querySelector("#retypePass");
var fname = document.querySelector("#userFirstname");
var lname = document.querySelector("#userLastname");
var tel = document.querySelector("#userTel");
var number = document.querySelector("#idNumber");
var email = document.querySelector("#userEmail");

name1.oninput = function() {
  $("#message_user").html("");
};
pass.oninput = function() {
  $("#message_pass").html("");
};
repass.oninput = function() {
  $("#message_repass").html("");
};
email.oninput = function() {
  $("#message_email").html("");
};
fname.oninput = function() {
  $("#message_fname").html("");
};
lname.oninput = function() {
  $("#message_lname").html("");
};
tel.oninput = function() {
  $("#message_tel").html("");
};
number.oninput = function() {
  $("#message_number").html("");
};

//Create new account
$(document).ready(function() {
  $("#register").click(function() {
    var check = validateForm();
    console.log(check)
    if (check){
      var form = new FormData($("#registerForm")[0]);
      $.ajax({
        type: "POST",
        url: domen+"/api/Account/Register",
        dataType: 'text',
        data: form,
        processData: false,
        contentType: false,
        async: true,
        success: function(response) {
          if (response.succeeded == "Success") {
            window.location.href = "response.html";
          }
        },
      });
    }
    
  });
  
});
