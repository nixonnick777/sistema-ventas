const btnSignIn =document.getElementById("sign-in"),
      btnSignUp =document.getElementById("sign-up"),
      formRegister = document.querySelector(".register"),
      formLogin = document.querySelector(".login");

btnSignIn.addEventListener("click", e=>{
    formRegister.classList.add("hide");
    formLogin.classList.remove("hide")
})

btnSignUp.addEventListener("click", e=>{
    formLogin.classList.add("hide");
    formRegister.classList.remove("hide")
})

const nameInput = document.querySelector('.register input[type="text"]');
const emailInput = document.querySelector('.register input[type="email"]');
const passwordInput = document.querySelector('.register input[type="password"]');
const registerForm = document.querySelector('.register form');

registerForm.addEventListener('submit', function (event) {
    
  if (nameInput.value.trim() === '') {
    alert('Por favor, ingrese su nombre.');
    event.preventDefault();
  }

  const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
  if (!emailPattern.test(emailInput.value)) {
    alert('Por favor, ingrese una dirección de correo electrónico válida.');
    event.preventDefault();
  }

  if (passwordInput.value.length < 6) {
    alert('La contraseña debe contener al menos 6 caracteres.');
    event.preventDefault();
  }
});
const googleIcon = document.getElementById("google-icon");
const githubIcon = document.getElementById("github-icon");
const linkedinIcon = document.getElementById("linkedin-icon");
googleIcon.addEventListener('click', function () {
  youtubeIframe.style.display = 'block';
  
});