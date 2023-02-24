const signinButton = document.getElementById("signinButton");
const informModal = document.getElementById("informModal");
const closeModalButton = document.getElementById("closeModalButton");
const modalMessage = document.getElementById("modalMessage");
const signinForm = document.getElementById("signinForm");


 

function showModal() {
    informModal.style.display = "block";
    localStorage.setItem("modalShown", "true");
    localStorage.setItem("content", modalMessage.innerHTML);
}

function hideModal() {
     
    informModal.style.display = "none";
    localStorage.setItem("modalShown", "false");
}

signinButton.addEventListener("click", function (event) {
    event.preventDefault();
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    const recaptchaResponse = grecaptcha.getResponse();

    isValidSignIn(username, password, recaptchaResponse);
});


function isValidSignIn(username, password, recaptchaResponse) {
    $.ajax({
        url: "checkauth",
        type: "POST",
        data: {
            username: username, password: password, captcha: recaptchaResponse
        },
        success: function (response) {
            if (username.length === 0 ) {
                modalMessage.innerHTML = "please enter username!";

            } else if (password.length === 0) {
                modalMessage.innerHTML = "please enter password!";
           
            } else {
                if (response === "false") {
                    modalMessage.innerHTML = "Captcha required";
                } else {
                    if (response === "not confirmed") {
                        modalMessage.innerHTML = "This account has not been activated, select forgot password to activate this account!";
                        grecaptcha.reset();
                    } else if (response === "invalid") {
                        modalMessage.innerHTML = "This account is invalid!";
                        grecaptcha.reset();
                    } else {
                        hideModal();
                        signinForm.submit();
                    }


                }
                
            }
            showModal();
        },
        error: function () {
            console.log("Error checking username availability");
        }
    });
}

closeModalButton.addEventListener("click", function () {
    hideModal();
}
);

// Check if modal has been shown before
const modalShown = localStorage.getItem("modalShown");

if (modalShown === "true") {
   modalMessage.innerHTML=localStorage.getItem("content");
    showModal();
}