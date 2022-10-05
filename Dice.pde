int count;       
        void setup()
  {
    size(300,300);
      noLoop();
  }
  void draw()
  {
      count = 0;
      background(200, 150);
      for(int y = 0; y<= 300; y = y + 50) {
        for(int x = 0; x<= 300; x = x + 50){
          Die bob = new Die(x, y, 50);
          count = count + bob.dRandom;
          bob.show();
          bob.roll();
   }
  }
   textSize(20);
   text("Sum: " + count, 0, 330);
  }
  void mousePressed(){
      redraw();
  }
  class Die {
      int myX, myY;//member variable declarations here
      int dRandom;
      int size;
      int s = 10;
      Die(int x, int y, int z) //constructor
      {
          size = z;
          myX = x;
          myY = y;//variable initializations here
          roll();
      }
      void roll()
      {
         dRandom = (int)((Math.random()*7)+1); //your code here
      }
      void show()
      {
         fill(250,200,0);
         square(myX,myY,size);
         fill(0);
         if (dRandom == 1)
         for(int i = 1; i <= dRandom; i++){
           ellipse(myX + (size/2), myY + (size/2), s, s);
       } else if(dRandom == 3){
         for(int i = 1; i<=2; i++){
           for(int j = 1; j<=2; j++{
             ellipse(myX + (10 + (10*(dRandom-2))) + (10*(i-(dRandom-1))), myY +
       
  }
