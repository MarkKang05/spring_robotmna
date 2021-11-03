let index={
    init:function () {
        $("#btn-save").on("click", ()=>{
            this.save();
        });

        // $("#btn-login").on("click", ()=>{
        //     this.login();
        // });
    },

    save:function () {
        // alert('user의 save함수 호출됨');
        let data = {
            username: $("#username").val(),
            email: $("#email").val(),
            password: $("#password").val(),
        }
        // console.log(data);
        $.ajax({
            type: "POST",
            url: "/auth/joinProc",
            data: JSON.stringify(data), //http body data
            contentType: "application/json; charset=utf-8",
            dataType: "json"   // 응답
        }).done(function (res) {
            alert("회원 가입이 완료되었습니다.");
            console.log(res);
            location.href="/";
        }).fail(function (err) {
            alert(JSON.stringify(err));
        });
    },


    // login:function () {
    //     // alert('user의 save함수 호출됨');
    //     let data = {
    //         username: $("#username").val(),
    //         password: $("#password").val(),
    //     }
    //     // console.log(data);
    //     $.ajax({
    //         type: "POST",
    //         url: "/api/user/login",
    //         data: JSON.stringify(data), //http body data
    //         contentType: "application/json; charset=utf-8",
    //         dataType: "json"   // 응답
    //     }).done(function (res) {
    //         alert("로그인이 완료되었습니다.");
    //         console.log(res);
    //         location.href="/";
    //     }).fail(function (err) {
    //         alert(JSON.stringify(err));
    //     });
    // }

}

index.init();