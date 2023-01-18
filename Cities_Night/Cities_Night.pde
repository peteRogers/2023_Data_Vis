
JSONArray json;
PImage sea;


void setup() {
  size(1500, 750);
  pixelDensity(2);
  //smooth();
  json = loadJSONArray("cities.json");
  sea = loadImage("sea@2.png");
  
  
}

void draw() {
  //background(255);
  //doVisualisation();
  colorMode(RGB, 255);
  tint(25, 25, 50);
  image(sea, 0, 0, width, height);
  tint(255, 255, 255);
  doVisualisation();
 
}

void mousePressed(){
  doVisualisation();
}

void doVisualisation(){
  //
   for (int i = 0; i < json.size(); i ++) {
    JSONObject city = json.getJSONObject(i);
    float lat = city.getFloat("lat");
    float lng = city.getFloat("lng");
    String name = city.getString("asciiname");
    int pop = city.getInt("population");
    PVector v = mapCoordinates(lat, lng);
    
    noFill();
    strokeWeight(2);
    stroke(255, 150);
    float b = map(pop, 0, 100000, 50, random(500, 1024));
    strokeWeight(map(pop, 0, 15000000, 1.5, 4));
    colorMode(HSB,1024);
    stroke(170,1024-b, b);
    //translate(v.x, v.y);
    point(v.x, v.y);
    
    
    
    
    }
  
}


 PVector mapCoordinates(float lat, float lng){
   PVector v = new PVector();
     v.y = map(lat, 90, -90, 0, height);
     v.x = map(lng, -180, 180, 0, width);
     return v;
  }
