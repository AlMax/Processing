boolean more = true;
Square[][] s;
int s_size = 10;

PImage myImage;

void setup() {
  size(330,330);
  
  s = new Square[width/10][height/10];
  
  //for(int i = 0; i < n ; i++) {
    //s[i] = new Square((i+1)*(s_size), (i+1)*(s_size), s_size, s_size);
  //}

   background(0);
   
   PImage myImage = loadImage("A.jpg");


   for(int i = 0; i < width/10 ; i++){
    for(int j = 0; j < height/10; j++){
       s[i][j] = new Square((j*10),(i*10),5,5);
    }
  }
    
}

void draw() {
  for(int i = 0; i < width/10 ; i++) {
    for(int j = 0; j < height/10 ; j++) {
      s[i][j].setX((j*10)+(int)random(-4,4));
      s[i][j].setY((i*10)*(int)random(-4,4));
      s[i][j].show(true);
    }
  }
}

void showLetter(){
  for(int i = 0; i < width/10 ; i++){
    for(int j = 0; j < height/10; j++){
       color c = myImage.get(j*10, i*10);
       s[i][j] = new Square(j*10,i*10,3,3);
       s[i][j].setColor(c);
    }
  }
}

//void squares(){
  //for(int i = 0; i < n ; i++) {
    //s[i].show(s[i].getMore());
    
    //if(s[i].getX() >= width-n)
     // s[i].setMore(false);
    //else if (s[i].getX() <= (n/2))
      //s[i].setMore(true);
      
    //if(s[i].getMore())
      //s[i].moreX(speed);
    //else
    
    //s[i].moreX(-speed);
  //}
//}
