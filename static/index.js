const palabra = document.querySelector(".pal").value;
const dificultad = document.querySelector(".dif").value;
const contCaj = document.querySelector('.palabra');
let limit =0;
let cont = 1;
let contP = 0;
let letC = "";
const comprobar = (letra)=>{
    let band = true;
    let letE = false;
    for(let i=0; i<letC.length; i++){
        if(letra == letC[i]){
            letE = true;
            break;
        }
    }
    if(letE == false){
        for(let i=0; i <limit;i++){
            if(palabra[i] == letra){
                contP++;
                band = false;
                letC += letra;
                document.querySelector(`.letra${i}`).textContent = palabra[i];
            }
        }
    }
    if(band == true && letE == false){
        cont++;
        if(cont<=6){
            document.querySelector('.imagen').src = `static/img/${cont}.png`;
        }
    }
    if(cont == 6 ){
        document.querySelector('.mensaje').classList.remove('display');
        document.querySelector('.perdedor').classList.remove('display');
        document.querySelector('.mPalabra').classList.remove('display');
        document.querySelector('.mPalabra').textContent += palabra;
    }
    if(contP == limit){
        document.querySelector('.mensaje').classList.remove('display');
        document.querySelector('.ganador').classList.remove('display');
        
    }
}
const crearCajas = ()=>{ 
    if(dificultad == 'facil'){
        limit = 5;
    }
    else if(dificultad == 'medio'){
        limit = 6;
    }
    else{
        limit = 7;
    }
    const frag = document.createDocumentFragment();
    for(let i=0; i <limit;i++){
        let div = document.createElement('div');
        div.classList.add(`letra${i}`);
        div.classList.add('cajaLetra');
        frag.appendChild(div);
    }
    contCaj.appendChild(frag);
}
crearCajas();
console.log(palabra);
addEventListener('keydown',(e)=>{
    if(cont<6){
        if(e.key == 'a' || e.key == 'A' ){
            comprobar('A');
        }
        else if(e.key == 'b' || e.key == 'B' ){
            comprobar('B');
        }
        else if(e.key == 'c' || e.key == 'C' ){
            comprobar('C');
        }
        else if(e.key == 'd' || e.key == 'D' ){
            comprobar('D');
        }
        else if(e.key == 'e' || e.key == 'E' ){
            comprobar('E');
        }
        else if(e.key == 'f' || e.key == 'F' ){
            comprobar('F');
        }
        else if(e.key == 'g' || e.key == 'G' ){
            comprobar('G');
        }
        else if(e.key == 'h' || e.key == 'H' ){
            comprobar('H');
        }
        else if(e.key == 'i' || e.key == 'I' ){
            comprobar('I');
        }
        else if(e.key == 'j' || e.key == 'J' ){
            comprobar('J');
        }
        else if(e.key == 'k' || e.key == 'K' ){
            comprobar('K');
        }
        else if(e.key == 'l' || e.key == 'L' ){
            comprobar('L');
        }
        else if(e.key == 'm' || e.key == 'M' ){
            comprobar('M');
        }
        else if(e.key == 'n' || e.key == 'N' ){
            comprobar('N');
        }
        else if(e.key == '??' || e.key == '??' ){
            comprobar('??');
        }
        else if(e.key == 'o' || e.key == 'O' ){
            comprobar('O');
        }
        else if(e.key == 'p' || e.key == 'P' ){
            comprobar('P');
        }
        else if(e.key == 'q' || e.key == 'Q' ){
            comprobar('Q');
        }
        else if(e.key == 'r' || e.key == 'R' ){
            comprobar('R');
        }
        else if(e.key == 's' || e.key == 'S' ){
            comprobar('S');
        }
        else if(e.key == 't' || e.key == 'T' ){
            comprobar('T');
        }
        else if(e.key == 'u' || e.key == 'U' ){
            comprobar('U');
        }
        else if(e.key == 'v' || e.key == 'V' ){
            comprobar('V');
        }
        else if(e.key == 'w' || e.key == 'W' ){
            comprobar('W');
        }
        else if(e.key == 'x' || e.key == 'X' ){
            comprobar('X');
        }
        else if(e.key == 'y' || e.key == 'Y' ){
            comprobar('Y');
        }
        else if(e.key == 'z' || e.key == 'Z' ){
            comprobar('Z');
        }
    }
});
document.querySelector('.reiniciar').addEventListener("click",()=>{
    window.location.href = '/index.html';
});
document.querySelector('.menu').addEventListener("click",()=>{
    window.location.href = '/menu.html';
})