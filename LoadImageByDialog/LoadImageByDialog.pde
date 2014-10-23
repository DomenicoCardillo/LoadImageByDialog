PImage img = null;
String myFilePath = "";

int wh = 16;
int he = 38;

void setup() {
  frame.setResizable(true);
  selectInput("Select a file to process:", "fileSelected");
}

void draw(){
  if(myFilePath != "") img = loadImage(myFilePath);
  if(img != null){
    frame.setSize(img.width + wh, img.height + he);   
    image(img, 0, 0);  
  }
}

void fileSelected(File selection) {
  if (selection == null){
    println("Window was closed or the user hit cancel.");
  } 
  else{
    myFilePath = selection.getAbsolutePath();
  }
}
