# 2023_World_Data
### Processing examples to load Geolocated country JSON data and visualise it in 2D.
![Screenshot](lat_lng.gif)
```java
JSONObject json;
PFont header;

void setup() {
  size(800, 800);
 
 
 background(0);
  textAlign(LEFT, CENTER);
  textSize(30);
  //json = loadJSONObject("https://api.carbonintensity.org.uk/generation");
  //JSONArray energyData = json.getJSONObject("data").getJSONArray("generationmix");
  
  json = loadJSONObject("https://api.carbonintensity.org.uk/regional/postcode/SE14");
  JSONArray energyData = json.getJSONArray("data").getJSONObject(0).getJSONArray("data").getJSONObject(0).getJSONArray("generationmix");
  println(energyData);
  //println(energyData.getJSONObject(0).getString("fuel"));
  
  //for(int i = 0; i < energyData.size(); i ++){
  //  println(energyData.getJSONObject(i).getString("fuel"));
  //  println(energyData.getJSONObject(i).getFloat("perc"));
  //  fill(255);
  //  float a = map(energyData.getJSONObject(i).getFloat("perc"), 0, 100, 0, width - 100);
  //  rect(100, ((i) * 60)+ 10, a, 50);
  //  fill(0);
  //  text( energyData.getJSONObject(i).getString("fuel"),100+10, ((i) * 60)+10, 400, 50);
  //}
  
  
  
  for(int i = 0; i < energyData.size(); i++){
    String fuel = energyData.getJSONObject(i).getString("fuel");
    
    float perc = energyData.getJSONObject(i).getFloat("perc");
    //text(fuel+" : "+perc, 200, i * 50 + 30);
    
    if(fuel.equals("wind")){
      for(int x = 0; x < perc; x++){
        fill(128,128, 255);
        ellipse(random(0, width),random(0, height), 50, 50);
      }
    }
    
     if(fuel.equals("gas")){
      for(int x = 0; x < perc; x++){
        fill(50,50, 50);
        ellipse(random(0, width),random(0, height), 50, 50);
      }
    }
    
  }
  
}
```
