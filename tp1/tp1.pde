//Nombre: Gustavo Vicente
//Comision: 5
//TP1

PImage fruta;
PImage cerezas;


void setup(){
 size(800,400);
 cerezas= loadImage("cerezas.jpg");
 background(123,203,18);
} 

void draw(){
  image(cerezas,0,0,400,400);
  
  noStroke();
  fill(165,20,30);
  circle(498,153,100);
  circle(587,167,100);
  circle(676,212,100);
  strokeWeight(1);
  stroke(165,20,30);
  fill(229,32,46);
  beginShape();
  curveVertex(453,151);
  curveVertex(447,151);
  curveVertex(416,210);
  curveVertex(435,312);
  curveVertex(491,327);
  curveVertex(531,263);
  curveVertex(536,209);
  curveVertex(512,155);
  curveVertex(488,149);
  curveVertex(475,156);
  curveVertex(450,145);
  curveVertex(452,148);
  curveVertex(462,156);
  endShape(CLOSE);
  beginShape();
   curveVertex(626,151);
   curveVertex(609,161);
   curveVertex(576,178);
   curveVertex(563,169);
   curveVertex(538,207);
   curveVertex(550,323);
   curveVertex(572,348);
   curveVertex(612,352);
   curveVertex(654,292);
   curveVertex(653,206);
   curveVertex(626,168);
  curveVertex(635,181);
   endShape(CLOSE);
  beginShape();
  curveVertex(720,243);
  curveVertex(710,255);
  curveVertex(696,252);
  curveVertex(668,277);
  curveVertex(665,343);
  curveVertex(690,396);
  curveVertex(691,398);
  curveVertex(747,398);
  curveVertex(770,361);
  curveVertex(772,295);
  curveVertex(746,237);
  curveVertex(721,235);
  curveVertex(718,239);
  endShape(CLOSE);
  strokeWeight(5);
  stroke(60,142,44);
  line(500,102,505,0);
  line(591,115,589,0);
  line(677,162,703,0);
  strokeWeight(7);
  stroke(70,232,101);
   line(475,155,490,0);
   line(587,173,594,0);
   line(709,254,702,0);
   noStroke();
   fill(255,108,120);
   ellipse(460,221,40,70);
   ellipse(490,205,30,70);
   ellipse(591,236,40,70);
   ellipse(620,219,45,63);
   ellipse(740,294,40,50);
   ellipse(709,314,30,50);
}
