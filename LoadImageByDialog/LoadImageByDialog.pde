PImage img = null;
String myFilePath = "";

void setup() {
  frame.setResizable(true);
  selectInput("Select a file to process:", "fileSelected");
  interrupt();
  img = loadImage(myFilePath);
}

void draw(){
  imgLoad();
}

void imgLoad(){
  if(img != null){
    String os = System.getProperty("os.name");
    if(os.substring(0, 3).equals("Win")){
      int wh = 16, he = 38;
      frame.setSize(img.width + wh, img.height + 38);   
    }
    else frame.setSize(img.width, img.height);   
    image(img, 0, 0);  
  }
}

void interrupt() {
  while(myFilePath == "") noLoop();
  loop();
}

void fileSelected(File selection) {
  if(selection == null) println("Window was closed or the user hit cancel.");
  else myFilePath = selection.getAbsolutePath();
}
