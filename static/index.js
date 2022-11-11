

const socket = io();
const socket_private = io('http://127.0.0.1:5000/private');



const img1 = document.querySelectorAll('.img-cartajugador1');
const img2 = document.querySelectorAll('.img-cartajugador2');
const imgMesa = document.querySelectorAll('.img-mesa');
const car = document.querySelector('.input').value;
const valorInput = document.querySelectorAll('.input-carta');
let nombre = obtenerCockie('username');
let cartas =[];
let randomCartasj1 = [];
let nameCarta = "";
let contador = 0;
let control = []
const contains = (n, arr) => arr.includes(n);
const generator = (from, to, arr) => {
    const n = Math.floor(Math.random() * to) + from;
    return contains(n, arr)
           ? generator(from, to, arr)
           : n;
}
const sacarCartas = ()=>{
    for(let i = 0;i<car.length;i++){
        if(car[i] == ' ' && car[i+1] == "'"){
            i+=2;
            while(car[i]!='g'){
                nameCarta+=car[i];
                i++;
            }
            nameCarta+=car[i]
            contador++;
        }
        if(nameCarta){
            cartas.push(nameCarta);
            nameCarta = ''
        }
    }
    contador=0;
}
const randCartas = ()=>{
    for(let i=0;i<10;i++){
        const n = generator(0,40,control);
        control.push(n);
        randomCartasj1[i]=cartas[n];
    }
}

sacarCartas()
randCartas();

img1[0].setAttribute("src",'static/cartasesp/reverso-min.png');
valorInput[0].value = randomCartasj1[7];
img1[1].setAttribute("src",'static/cartasesp/reverso-min.png');
valorInput[1].value = randomCartasj1[8];
img1[2].setAttribute("src",'static/cartasesp/reverso-min.png');
valorInput[2].value = randomCartasj1[9];

img2[0].setAttribute("src",`static/cartaspoker/${randomCartasj1[0]}`);
valorInput[3].value = randomCartasj1[0];
img2[1].setAttribute("src",`static/cartaspoker/${randomCartasj1[1]}`);
valorInput[4].value = randomCartasj1[1];
img2[2].setAttribute("src",`static/cartaspoker/${randomCartasj1[2]}`);
valorInput[5].value = randomCartasj1[2];

imgMesa[2].setAttribute("src",`static/cartaspoker/${randomCartasj1[3]}`);
valorInput[6].value = randomCartasj1[3];
imgMesa[1].setAttribute("src",`static/cartaspoker/${randomCartasj1[4]}`);
valorInput[7].value = randomCartasj1[4];
imgMesa[0].setAttribute("src",`static/cartaspoker/${randomCartasj1[5]}`);
valorInput[8].value = randomCartasj1[5];
imgMesa[3].setAttribute("src",`static/cartaspoker/${randomCartasj1[6]}`);
valorInput[9].value = randomCartasj1[6];

socket_private.emit('username',nombre)
socket_private.on('envio',(msg)=>{
    console.table(msg[0])
})
/*imgMesa[3].style.visibility = 'hidden';*/
