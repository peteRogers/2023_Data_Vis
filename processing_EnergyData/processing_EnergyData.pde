JSONObject json;
PFont header;

void setup() {
  size(800, 800);
 
 
 
  textAlign(LEFT, CENTER);
  textSize(30);
  //json = loadJSONObject("https://api.carbonintensity.org.uk/generation");
  //JSONArray energyData = json.getJSONObject("data").getJSONArray("generationmix");
  
  json = loadJSONObject("https://api.carbonintensity.org.uk/regional/postcode/SE14");
  JSONArray energyData = json.getJSONArray("data").getJSONObject(0).getJSONArray("data").getJSONObject(0).getJSONArray("generationmix");
  println(energyData);
  println(energyData.getJSONObject(0).getString("fuel"));
  
  //for(int i = 0; i < energyData.size(); i ++){
  //  println(energyData.getJSONObject(i).getString("fuel"));
  //  println(energyData.getJSONObject(i).getFloat("perc"));
  //  fill(255);
  //  float a = map(energyData.getJSONObject(i).getFloat("perc"), 0, 100, 0, width - 100);
  //  rect(100, ((i) * 60)+ 10, a, 50);
  //  fill(0);
  //  text( energyData.getJSONObject(i).getString("fuel"),100+10, ((i) * 60)+10, 400, 50);
  //}
  
}
