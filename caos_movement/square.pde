class Square{
  int w;
  int h;
  
  int x;
  int y;
  
  int col;
  
  boolean more;
  Square(int x1, int y1, int w1, int h1){
     x = x1;
     y = y1;
     w = w1;
     h = h1;
     
     more = true;
     col = 255;
  }
  
  void setColor(int col_new){
    col = col_new;
  }
  
  void show(boolean form){
    fill(col);
    if(form)
      rect(x,y,w,h);
    else
      ellipse(x,y,w,h);
  }
  
  int getX(){
    return x;
  }
  
  int getY(){
    return y;
  }
  
  void setX(int x1){
    x = x1;
  }
  
  void setY(int y1){
    y = y1;
  }
  
  boolean getMore(){
    return more;
  }
  
  void setMore(boolean bool){
    more = bool;
  }
  
  void moreX(float x_more){
    x += x_more;
  }
}
