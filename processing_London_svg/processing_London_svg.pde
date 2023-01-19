
PShape london;

/**
urbanpath
lakepath
seapath
areapaths-grey
townpaths
SE-14 districtpath
districttexts
**/

void setup() {
  size(1000, 1000); 
  pixelDensity(1);
  london = loadShape("londonSVG.svg");
  
  
}

void draw() {
  background(255);
 // PShape postcodes = london.getChild("districttexts");
 // PShape se13 = london.getChild("SE-13 districtpath");
  PShape thames = london.getChild("seapath");
 // se13.disableStyle();
  noStroke();
  thames.disableStyle();
  fill(0, 128, 255);
  shape(thames, 0, 0, 1000, 1000);
  fill(255, 50, 100);
  //shape(se13, 0, 0, 1000, 1000);
  //shape(postcodes, 0, 0, 1000, 1000);
}
