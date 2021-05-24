window.onload=function () {
  render();
};
function render() {
    window.recaptchaVerifier=new firebase.auth.RecaptchaVerifier('recaptcha-container');
    recaptchaVerifier.render();
}
function phoneAuth() {
    //get the number
    var number=document.getElementById('number').value;
    
    firebase.auth().signInWithPhoneNumber(number,window.recaptchaVerifier).then(function (confirmationResult) {
        //s is in lowercase
        window.confirmationResult=confirmationResult;
        coderesult=confirmationResult;
        console.log(coderesult);
        document.getElementById("msg").innerHTML="Message sent";
    }).catch(function (error) {
       document.getElementById("msg").innerHTML=error.message;
    });
}
function codeverify() {
    var code=document.getElementById('verificationCode').value;
    coderesult.confirm(code).then(function (result) {
        var user=result.user;
        console.log(user);
 		document.getElementById("msg").innerHTML="Successfully Logged in. Redirecting to complaint page..";
 		submitform();
        }).catch(function (error) {
        document.getElementById("msg").innerHTML="Invalid OTP."
    });
}

function submitform()
{
 var delayInMilliseconds = 3000; //3 second

setTimeout(function() {
    document.getElementById("loginForm").submit();
}, delayInMilliseconds);

}