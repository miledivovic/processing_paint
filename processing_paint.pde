//base for all the tools
class ToolObject {
  boolean hovered;
  boolean selected;
  //set highlight color based on if mouse is hovering over it or it is the currently selected item
  public void highlight() {
    if (this.hovered) {
      fill(208, 237, 247);
    } else if (this.selected) {
      fill(158, 213, 232);
    }
  }
}
//tool to wipe the drawing space
class ClearScreenTool extends ToolObject {
  ClearScreenTool() {
    hovered = false;
    selected = false;
  }

  public void drawClearScreenTool() {
    if ((mouseX > 865 && mouseX < 1045) && (mouseY > 5 && mouseY < 90)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }
    highlight();
    if (this.hovered || this.selected) {
      rect(860, 5, 180, 85);
    }
    image(clearImg, 860, 15);
  }
}
//tool to type text
class TextTool extends ToolObject {
  TextTool() {
    hovered = false;
    selected = false;
  }

  public void drawTextTool() {
    if ((mouseX > 145 && mouseX < 175) && (mouseY > 8 && mouseY < 40)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }

    highlight();
    if (this.hovered || this.selected) {
      rect(145, 8, 30, 32);
    }
    image(textImg, 150, 12);
  }
}
//tool to draw with a pencil
class PencilTool extends ToolObject {
  PencilTool() {
    this.hovered = false;
    this.selected = false;
  }

  public void drawPencilTool() {
    if ((mouseX > 105 && mouseX < 135) && (mouseY > 8 && mouseY < 40)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }
    highlight();
    if (this.hovered || this.selected) {
      rect(105, 8, 30, 32);
    }
    image(pencilImg, 105, 2);
  }
}
//tool to erase with precision
class EraserTool extends ToolObject {
  EraserTool() {
    this.hovered = false;
    this.selected = false;
  }

  public void drawEraserTool() {
    if ((mouseX > 105 && mouseX < 135) && (mouseY > 45 && mouseY < 79)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }
    highlight();
    if (this.hovered || this.selected) {
      rect(105, 45, 30, 34);
    }
    image(eraserImg, 108, 48);
  }
}
//spray paint tool
class SprayTool extends ToolObject {
  SprayTool() {
    this.hovered = false;
    this.selected = false;
  }

  public void drawSprayTool() {
    if ((mouseX > 145 && mouseX < 175) && (mouseY > 45 && mouseY < 79)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }
    highlight();
    if (this.hovered || this.selected) {
      rect(145, 45, 30, 34);
    }
    image(sprayImg, 148, 50);
  }
}
//Brush tool, includes paintbrush, marker, and colored pencil
class BrushTool extends ToolObject {
  String typeOfBrush;
  boolean selectMenu;
  BrushTool() {
    this.hovered = false;
    this.selected = false;
    typeOfBrush = "Paintbrush";
    selectMenu = false;
  }

  public void drawBrushTool() {
    if ((mouseX > 185 && mouseX < 235) && (mouseY > 5 && mouseY < 89)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }
    highlight();
    if (this.hovered || this.selected) {
      rect(185, 5, 50, 53);
      rect(185, 59, 50, 30);
    }
    //brushes text
    fill(0);
    text("Brushes", 188, 75);
    triangle(205, 80, 215, 80, 210, 85);
    //change icon based on which brush tool is selected
    if (this.typeOfBrush == "Paintbrush") {
      image(brushImg, 190, 15);
    } else if (this.typeOfBrush == "Marker") {
      image(markerImg, 195, 15);
    } else if (this.typeOfBrush =="ColoredPencil") {
      image(coloredPencilImg, 200, 20);
    }
    //new sub menu for selecting brush type
    if (selectMenu == true) {
      fill(208, 237, 247);
      if ((mouseX > 245 && mouseX < 285) && (mouseY > 5 && mouseY < 55)) {
        rect(245, 5, 40, 50);
      } else if ((mouseX > 245 && mouseX < 285) && (mouseY > 55 && mouseY < 100)) {
        rect(245, 55, 40, 40);
      } else if ((mouseX > 285 && mouseX < 325) && (mouseY > 5 && mouseY < 55)) {
        rect(285, 5, 45, 45);
      }
      image(markerImg, 250, 10);
      image(coloredPencilImg, 255, 60);
      image(brushImg, 290, 10);
    }
  }
}
//tool to save an image of your work
class SaveTool extends ToolObject {

  SaveTool() {
    this.hovered = false;
    this.selected = false;
  }

  public void drawSaveTool() {
    if ((mouseX > 2 && mouseX < 97) && (mouseY > 4 && mouseY < 99)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }

    highlight();
    if (this.hovered || this.selected) {
      rect(2, 4, 95, 95);
    }
    image(saveImg, 5, 8);
  }
}
//tool to change strokeWeight or spray radius
class SizeTool extends ToolObject {
  int pencilStrokeWeight;
  int markerStrokeWeight;
  int brushStrokeWeight;
  int sprayPaintRadius;
  boolean selectMenu;
  SizeTool() {
    this.hovered = false;
    this.selected = false;
    this.pencilStrokeWeight = 1;
    this.markerStrokeWeight = 5;
    this.brushStrokeWeight = 5;
    this.sprayPaintRadius = 20;
    this.selectMenu = false;
  }
  public void drawSizeTool() {
    if ((mouseX > 495 && mouseX < 545) && (mouseY > 5 && mouseY < 85)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }
    highlight();
    if (this.hovered || this.selected) {
      rect(495, 5, 50, 80);
    }
    image(sizeImg, 500, 10);
    fill(0);
    text("Size", 508, 60);
    triangle(515, 65, 525, 65, 520, 70);
    //new sub menu for selecting size
    if (this.selectMenu == true) {
      fill(208, 237, 247);
      if ((mouseX > 365 && mouseX < 485) && (mouseY > 5 && mouseY < 20)) {
        //line 1
        rect(365, 5, 120, 15);
      } else if ((mouseX > 365 && mouseX < 485) && (mouseY > 20 && mouseY < 40)) {
        //line 2
        rect(365, 20, 120, 20);
      } else if ((mouseX > 365 && mouseX < 485) && (mouseY > 40 && mouseY < 60)) {
        //line 3
        rect(365, 40, 120, 20);
      } else if ((mouseX > 365 && mouseX < 485) && (mouseY > 60 && mouseY < 90)) {
        //line 4
        rect(365, 60, 120, 30);
      }
      //the sizes to choose from
      stroke(0);
      strokeWeight(1);
      line(370, 13, 480, 13);
      strokeWeight(5);
      line(370, 30, 480, 30);
      strokeWeight(10);
      line(370, 50, 480, 50);
      strokeWeight(20);
      line(375, 75, 475, 75);
    }
  }
}
//tool to see what color you're currently using
class ColorTool extends ToolObject {
  int r;
  int g;
  int b;
  ColorTool() {
    this.hovered = false;
    this.selected = true; 
    this.r = 0;
    this.g = 0;
    this.b = 0;
  }
  public void drawColorTool() {
    highlight();
    if ((mouseX > 575 && mouseX < 625) && (mouseY > 5 && mouseY < 85)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }
    if (this.hovered || this.selected) {
      noStroke();
      rect(575, 5, 50, 80);
    }
    fill(255);
    stroke(0);
    strokeWeight(1);
    rect(580, 15, 40, 40);
    noStroke();
    fill(this.r, this.g, this.b);
    rect(582, 17, 37, 37);
    fill(0);
    text("Color", 585, 70);
  }
}
// the little color chooser boxes
class ColorSelectBox extends ToolObject {
  int r;
  int g;
  int b;
  int xPos;
  int yPos;
  ColorSelectBox(int R, int G, int B, int x, int y) {
    this.hovered = false;
    this.selected = false;
    this.r = R;
    this.g = G;
    this.b = B;
    this.xPos = x;
    this.yPos = y;
  }

  public void drawColorSelectBox() {
    if ((mouseX > this.xPos - 2 && mouseX < this.xPos + 17) && (mouseY > this.yPos - 2 && mouseY < this.yPos + 17)) {
      this.hovered = true;
    } else {
      this.hovered = false;
    }
    highlight();
    if (this.hovered || this.selected) {
      rect(this.xPos - 2, this.yPos - 2, 19, 19);
    }
    fill(this.r, this.g, this.b);
    rect(this.xPos, this.yPos, 15, 15);
  }
  //check which box was selected and assign its color to the ColorTool
  public void selectColorBox() {
    if ((mouseX > xPos && mouseX < (xPos + 15)) && (mouseY > yPos && mouseY < (yPos + 15))) {
      ColorTool.r = this.r;
      ColorTool.g = this.g;
      ColorTool.b = this.b;
    }
  }
}

//new object that gets created when using text tool
class TextObject {
  String text;
  int r;
  int g;
  int b;
  int x;
  int y;


  TextObject() {
    this.x = mouseX;
    this.y = mouseY;
    this.text = "";
    this.r = ColorTool.r;
    this.g = ColorTool.g;
    this.b = ColorTool.b;
  }

  public void drawTextObject() {
    fill(this.r, this.g, this.b);
    text(this.text, this.x, this.y - 5);
  }
}


//function to clear selected tools when switching between tools
public void clearAllSelects() {
  saveTool.selected = false;
  pencilTool.selected = false;
  textTool.selected = false;
  eraserTool.selected = false;
  sprayTool.selected = false;
  brushTool.selected = false;
  sizeTool.selected = false;
}
//handle the pencil button being clicked
public void handlePencilButton() {
  tool = "Pencil";
  clearAllSelects();
  pencilTool.selected = true;
}
//text button being clicked
public void handleTextButton() {
  tool = "Text";
  clearAllSelects();
  textTool.selected = true;
}

//what happens when eraser button is clicked
public void handleEraserButton() {
  tool = "Eraser";
  clearAllSelects();
  eraserTool.selected = true;
}
//what happens when spray button is clicked
public void handleSprayButton() {
  tool = "Spray";
  clearAllSelects();
  sprayTool.selected = true;
}
//what happens when brush button is clicked
public void handleBrushButton() {
  tool = "Brush";
  clearAllSelects();
  brushTool.selected = true;
}
//what happens when the brush selector is clicked
public void handleBrushSelectButton() {
  tool = "Brush";
  clearAllSelects();
  brushTool.selected = true;
  if (brushTool.selectMenu == true) {
    brushTool.selectMenu = false;
  } else {
    brushTool.selectMenu = true;
  }
}
//what happens when the size button is clicked
public void handleSizeButton() {
  if (sizeTool.selectMenu == true) {
    sizeTool.selectMenu = false;
  } else {
    sizeTool.selectMenu = true;
  }
}
//what happens when the save button is clicked
public void handleSaveButton() {
  fill(255);
  rect(0, 0, 1280, 100);
  save("MyPaintDrawing.png");
}

//record all mouse clicks and check which tool they are clicking on
void mouseClicked() {
  int x = mouseX;
  int y = mouseY;

  for (ColorSelectBox box : colorBoxList) {
    box.selectColorBox();
  }

  if ((x > 2 && x < 97) && (y > 4 && y < 99)) {
    handleSaveButton();
  } else if ((x > 105 && x < 135) && (y > 8 && y < 40)) {
    handlePencilButton();
  } else if ((x > 145 && x < 175) && (y > 8 && y < 40)) {
    handleTextButton();
  } else if ((x > 105 && x < 135) && (y > 45 && y < 79)) {
    handleEraserButton();
  } else if ((x > 145 && x < 175) && (y > 45 && y < 79)) {
    handleSprayButton();
  } else if ((x > 185 && x < 235) && (y > 5 && y < 58)) {
    handleBrushButton();
  } else if ((x > 185 && x < 235) && (y > 59 && y < 89)) {
    handleBrushSelectButton();
  } else if ((x > 495 && x < 545) && (y > 5 && y < 85)) {
    handleSizeButton();
  }
  //check click for text
  if (y > 100) {
    if (tool == "Text") {
      textObject = new TextObject();
    }
  }
  //select brush
  if (brushTool.selectMenu == true) {
    if ((mouseX > 245 && mouseX < 285) && (mouseY > 5 && mouseY < 55)) {
      brushTool.typeOfBrush = "Marker";
      brushTool.selectMenu = false;
    } else if ((mouseX > 245 && mouseX < 285) && (mouseY > 55 && mouseY < 100)) {
      brushTool.typeOfBrush = "ColoredPencil";
      brushTool.selectMenu = false;
    } else if ((mouseX > 285 && mouseX < 325) && (mouseY > 5 && mouseY < 55)) {
      brushTool.typeOfBrush = "Paintbrush";
      brushTool.selectMenu = false;
    }
  }
  //select size
  if (sizeTool.selectMenu == true) {
    if ((mouseX > 365 && mouseX < 485) && (mouseY > 5 && mouseY < 20)) {
      //line 1
      sizeTool.pencilStrokeWeight = 1;
      sizeTool.sprayPaintRadius = 20;
      sizeTool.markerStrokeWeight = 5;
      sizeTool.brushStrokeWeight = 5;
      sizeTool.selectMenu = false;
    } else if ((mouseX > 365 && mouseX < 485) && (mouseY > 20 && mouseY < 40)) {
      //line 2
      sizeTool.pencilStrokeWeight = 2;
      sizeTool.sprayPaintRadius = 30;
      sizeTool.markerStrokeWeight = 10;
      sizeTool.brushStrokeWeight = 10;
      sizeTool.selectMenu = false;
    } else if ((mouseX > 365 && mouseX < 485) && (mouseY > 40 && mouseY < 60)) {
      //line 3
      sizeTool.pencilStrokeWeight = 3;
      sizeTool.sprayPaintRadius = 40;
      sizeTool.markerStrokeWeight = 15;
      sizeTool.brushStrokeWeight = 15;
      sizeTool.selectMenu = false;
    } else if ((mouseX > 365 && mouseX < 485) && (mouseY > 60 && mouseY < 90)) {
      //line 4
      sizeTool.pencilStrokeWeight = 4;
      sizeTool.sprayPaintRadius = 50;
      sizeTool.markerStrokeWeight = 20;
      sizeTool.brushStrokeWeight = 20;
      sizeTool.selectMenu = false;
    }
  }
  //clear screen
  if ((mouseX > 865 && mouseX < 1045) && (mouseY > 5 && mouseY < 90)) {
    fill(255);
    strokeWeight(1);
    if (textObject != null) {
      textObject.text = "";
    }
    rect(0, 100, 1280, 620);
  }
}

//check what keys are pressed to record typing for textTool
void keyPressed() {
  if (tool == "Text") {
    if (textObject != null) {

      textObject.text += key;
    }
  }
}

//function to handle spray painting
public void sprayPaint() {
  //choose random points within a circle of fixed radius surrounding the current mouse location
  float r = sizeTool.sprayPaintRadius;
  float rSquared = r*r;
  for (int i = 0; i < 300; i++) {
    float x = random(-r, r);
    float y = (float) random(-1, 1) * sqrt(rSquared - (x * x));
    x += mouseX;
    y += mouseY;

    fill(ColorTool.r, ColorTool.g, ColorTool.b);
    ellipse(x, y, 1, 1);
  }
}



//do the actual drawing while the mouse is held down
public void startDrawing(int x, int y) {
  //assert that mouse is in the drawing space
  if (mouseY > 100) {
    if (tool == "Pencil") {
      stroke(ColorTool.r, ColorTool.g, ColorTool.b);
      strokeWeight(sizeTool.pencilStrokeWeight);
      line(x, y, pmouseX, pmouseY);
    } else if (tool == "Eraser") {
      stroke(255);
      strokeWeight(sizeTool.markerStrokeWeight);
      line(x, y, pmouseX, pmouseY);
    } else if (tool == "Spray") {
      sprayPaint();
    } else if (tool == "Brush") {
      if (brushTool.typeOfBrush == "Paintbrush") {
        stroke(ColorTool.r, ColorTool.g, ColorTool.b);
        strokeWeight(sizeTool.brushStrokeWeight);
        line(x, y, pmouseX, pmouseY);
      } else if (brushTool.typeOfBrush == "Marker") {
        stroke(ColorTool.r, ColorTool.g, ColorTool.b, 80);
        strokeWeight(sizeTool.markerStrokeWeight);
        line(x, y, pmouseX, pmouseY);
      } else if (brushTool.typeOfBrush == "ColoredPencil") {
        stroke(ColorTool.r, ColorTool.g, ColorTool.b, 40);
        strokeWeight(sizeTool.pencilStrokeWeight);
        line(x, y, pmouseX, pmouseY);
      }
    }
  }
}

//the menu bar
void menuBarDefault() {
  stroke(0, 20);
  strokeWeight(1);
  fill(255);
  //bar
  rect(0, 0, 1280, 100);
  //tools
  rect(100, 0, 80, 100);
  //brushes
  rect(180, 0, 60, 100);
  //shapes
  rect(240, 0, 250, 100);
  //size
  rect(490, 0, 60, 100);
  //colors
  rect(550, 0, 300, 100);

  //tools text
  fill(128);
  text("Tools", 125, 95);


  fill(128);
  //colors text
  text("Colors", 665, 95);
}




PImage saveImg;
PImage pencilImg;
PImage textImg;
PImage eraserImg;
PImage sprayImg;
PImage brushImg;
PImage sizeImg;
PImage markerImg;
PImage coloredPencilImg;
PImage clearImg;
SaveTool saveTool;
PencilTool pencilTool;
TextTool textTool;
EraserTool eraserTool;
SprayTool sprayTool;
BrushTool brushTool;
SizeTool sizeTool;
ColorTool ColorTool;
ClearScreenTool clearScreenTool;
ColorSelectBox black;
ColorSelectBox grey;
ColorSelectBox darkRed;
ColorSelectBox red;
ColorSelectBox orange;
ColorSelectBox yellow;
ColorSelectBox green;
ColorSelectBox blue;
ColorSelectBox darkBlue;
ColorSelectBox purple;
ColorSelectBox white;
ColorSelectBox lightGrey;
ColorSelectBox brown;
ColorSelectBox pink;
ColorSelectBox beige;
ColorSelectBox darkGreen;
ColorSelectBox lightBlue;
TextObject textObject;
ArrayList<ColorSelectBox> colorBoxList = new ArrayList<ColorSelectBox>();
String tool;

void setup() {
  size(1280, 720);
  background(255);
  saveTool = new SaveTool();
  pencilTool = new PencilTool();
  textTool = new TextTool();
  eraserTool = new EraserTool();
  sprayTool = new SprayTool();
  brushTool = new BrushTool();
  sizeTool = new SizeTool();
  ColorTool = new ColorTool();
  clearScreenTool = new ClearScreenTool();
  black = new ColorSelectBox(0, 0, 0, 670, 10);
  grey = new ColorSelectBox(128, 128, 128, 690, 10);
  darkRed = new ColorSelectBox(153, 5, 14, 710, 10);
  red = new ColorSelectBox(255, 0, 0, 730, 10);
  orange = new ColorSelectBox(255, 85, 0, 750, 10);
  yellow = new ColorSelectBox(255, 255, 0, 770, 10);
  green = new ColorSelectBox(0, 255, 0, 790, 10);
  blue = new ColorSelectBox(0, 0, 255, 810, 10);
  darkBlue = new ColorSelectBox(13, 3, 128, 830, 10);
  white = new ColorSelectBox(255, 255, 255, 670, 30);
  purple = new ColorSelectBox(89, 7, 130, 690, 30);
  lightGrey = new ColorSelectBox(186, 186, 186, 710, 30);
  brown = new ColorSelectBox(87, 66, 42, 730, 30);
  pink = new ColorSelectBox(245, 122, 200, 750, 30);
  beige = new ColorSelectBox(237, 214, 183, 770, 30);
  darkGreen = new ColorSelectBox(5, 99, 30, 790, 30);
  lightBlue = new ColorSelectBox(98, 166, 245, 810, 30);

  //add all of the color boxes to the array list
  colorBoxList.add(black);
  colorBoxList.add(grey);
  colorBoxList.add(darkRed);
  colorBoxList.add(red);
  colorBoxList.add(orange);
  colorBoxList.add(yellow);
  colorBoxList.add(green);
  colorBoxList.add(blue);
  colorBoxList.add(darkBlue);
  colorBoxList.add(white);
  colorBoxList.add(purple);
  colorBoxList.add(lightGrey);
  colorBoxList.add(brown);
  colorBoxList.add(pink);
  colorBoxList.add(beige);
  colorBoxList.add(darkGreen);
  colorBoxList.add(lightBlue);

  saveImg = loadImage("floppy_disc.png");
  pencilImg = loadImage("pencil.png");
  textImg = loadImage("letter_t.png");
  eraserImg = loadImage("eraser.png");
  sprayImg = loadImage("sprayImg.png");
  brushImg = loadImage("paintBrush.png");
  sizeImg = loadImage("size.PNG");
  markerImg = loadImage("marker.png");
  coloredPencilImg = loadImage("coloredPencil.png");
  clearImg = loadImage("clearButton.png");
}


void draw() {
  menuBarDefault();
  saveTool.drawSaveTool();
  pencilTool.drawPencilTool();
  textTool.drawTextTool();
  eraserTool.drawEraserTool();
  sprayTool.drawSprayTool();
  brushTool.drawBrushTool();
  sizeTool.drawSizeTool();
  ColorTool.drawColorTool();
  clearScreenTool.drawClearScreenTool();
  for (ColorSelectBox box : colorBoxList) {
    box.drawColorSelectBox();
  }
  //let user draw
  if (mousePressed == true) {
    startDrawing(mouseX, mouseY);
  }
  if (textObject != null) {
    textObject.drawTextObject();
  }
}





