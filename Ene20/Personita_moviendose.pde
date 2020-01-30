float tamano, tamano1;
float posicionHoriz;
float posicionVert;
float delta;
float alfa;
float tangulo;
void setup(){
size(400,400);
background(255);
tamano = random(20,100);
tamano1 = random(20,100);
posicionHoriz = 0;
posicionVert = ceil(random(0,300));
delta=2;
alfa=2;
}

void draw(){
if(posicionHoriz>width){//saber si salio de la pantalla
println("El mono se salio de la pantalla");
posicionHoriz = -tamano;
}
if(posicionHoriz > width-tamano){
delta = -2;
}
if(posicionHoriz < 0){
delta = 2;
}
if((posicionVert+tamano) > height){
  posicionVert = -tamano;
} 

if((posicionVert+tamano) > height-tamano){
alfa=-2;
}

if(posicionVert < 0){
alfa = 2;
}

//background (255);
posicionHoriz = posicionHoriz + delta;
posicionVert = posicionVert + alfa;
ellipseMode(CORNER);
fill(random(255), random(255), random(255));
ellipse(posicionHoriz,posicionVert,tamano,tamano);
fill(random(255), random(255), random(255));
rect(posicionHoriz,posicionVert + tamano,tamano,tamano);
//noStroke();
}
