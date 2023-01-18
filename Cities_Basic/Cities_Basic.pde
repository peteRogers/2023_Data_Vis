JSONArray json;
PImage sea;

void setup() {
  size(1500, 750);
  //pixelDensity(2);
  //smooth();
  json = loadJSONArray("cities.json");
  sea = loadImage("sea.png");
  image(sea, 0, 0, width, height);
}

void draw() {
  
}

void mousePressed(){
  doVisualisation();
}



void doVisualisation(){
  image(sea, 0, 0, width, height);
   for (int i = 0; i < json.size(); i ++) { 
    JSONObject city = json.getJSONObject(i);
    String name = city.getString("asciiname");
    //get coordinates
    float lat = city.getFloat("lat");
    float lng = city.getFloat("lng");
    PVector v = mapCoordinates(lat, lng);
    noFill();
    strokeWeight(1);
    stroke(0, 100);
    point(v.x, v.y);
    }
}


 PVector mapCoordinates(float lat, float lng){
   PVector v = new PVector();
     v.y = map(lat, 90, -90, 0, height);
     v.x = map(lng, -180, 180, 0, width);
     return v;
  }
