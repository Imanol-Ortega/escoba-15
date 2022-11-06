document.querySelector('.btn-preferencias').addEventListener('click',()=>{
    document.querySelector('.menu').classList.add('disp');
    document.querySelector('.sub-preferencias').classList.remove('disp');
});
document.querySelector('.atras').addEventListener('click',()=>{
    document.querySelector('.sub-preferencias').classList.add('disp');
    document.querySelector('.menu').classList.remove('disp');
});
document.querySelector('.btn-reglas').addEventListener('click',()=>{
    document.querySelector('.sub-reglas').classList.remove('disp');
    document.querySelector('.sub-preferencias').classList.add('disp');
});
document.querySelector(".atras-reglas").addEventListener("click",()=>{
    document.querySelector(".sub-reglas").classList.add("disp");
    document.querySelector(".sub-preferencias").classList.remove("disp");
});

