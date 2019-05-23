function validate(){
    var chk = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식

    var id = document.getElementById("id");
    var pwd = document.getElementById("pwd");
    var pwd_chk = document.getElementById("pwd_chk");

    // if(!check(re,id,"아이디는 4~12자의 영문 대소문자와 숫자로만 입력")){
    //     return false;
    // }

    // if(!check(re,pwd,"비밀번호는 4~12자의 영문 대소문자와 숫자로만 입력")){
    //     return false;
    // }

    if(join.pwd.value != join.pwd_chk.value){
        alert("비밀번호가 다릅니다. 다시 확인해주세요.");
        join.pwd_chk.value="";
        join.pwd_chk.focus();
        return false;
    }

}

function check(re,what,message){
    if(re.test(what.value)){
        return true;
    }
    alert(message);
    what.value="";
    what.focus();
}