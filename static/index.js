
/*console.log(carta)*/
let img1 = document.querySelectorAll('.img-cartajugador1');
let img2 = document.querySelectorAll('.img-cartajugador2');
let imgMesa = document.querySelectorAll('.img-mesa');
let car = document.querySelector('.input').value;

let cartas =[];
let nameCarta = "";
let contador = 0;

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
    console.table(cartas)
    console.log(cartas.length)
}
sacarCartas()

img1[0].setAttribute("src",'static/cartasesp/reverso-min.png');
img1[1].setAttribute("src",'static/cartasesp/reverso-min.png');
img1[2].setAttribute("src",'static/cartasesp/reverso-min.png');

img2[0].setAttribute("src",`static/cartasesp/${cartas[1]}`);
img2[1].setAttribute("src",`static/cartasesp/${cartas[2]}`);
img2[2].setAttribute("src",`static/cartasesp/${cartas[3]}`);

imgMesa[0].setAttribute("src",`static/cartasesp/${cartas[7]}`);
imgMesa[1].setAttribute("src",`static/cartasesp/${cartas[9]}`);
imgMesa[2].setAttribute("src",`static/cartasesp/${cartas[34]}`);
imgMesa[3].setAttribute("src",`static/cartasesp/${cartas[22]}`);