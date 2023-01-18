JSONArray countries;

void setup(){
  size(1400, 700);
  pixelDensity(2);
  countries = loadJSONArray("countriesInfo.json");
  textAlign(CENTER, CENTER);
  textSize(8);
 
}

void draw(){
  background(0);
  for(int i = 0; i < countries.size(); i ++){
    JSONObject country = countries.getJSONObject(i);
    float lat = country.getFloat("latitude");
    float lng = country.getFloat("longitude");
    String name = country.getString("country");
    PVector v = mapCoordinates(lat, lng);
    println(name);
  }
  
}



PVector mapCoordinates(float lat, float lng){
   PVector v = new PVector();
     v.y = map(lat, 90, -90, 0, height);
     v.x = map(lng, -180, 180, 0, width);
     return v;
  }
