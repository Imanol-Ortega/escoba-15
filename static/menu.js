document.querySelector('.elegir-modo').addEventListener('change',()=>{
    console.log(document.querySelector('.elegir-modo').value);
    document.querySelector('.dificultad').value = document.querySelector('.elegir-modo').value;
});
document.querySelector('.agg').addEventListener('click',()=>{
    window.location.href = '/agregar.html';
})