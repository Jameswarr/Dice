int count;       
        void setup()
  {
    size(400,400);
      noLoop();
  }
  void draw()
  {
      count = 0;
      background(200, 150);
      for(int y = 40; y<= 300; y = y + 60) {
        for(int x = 55; x<= 300; x = x + 60){
          Die bob = new Die(x, y, 55);
          count = count + bob.dRandom;
          bob.show();
          bob.roll();
   }
  }
  fill(0);
   textSize(20);
   text("Sum: " + count, 165, 370);
   
  }
  void mousePressed(){
      redraw();
  }
  class Die {
    int size;
      int myX, myY;//member variable declarations here
      int dRandom;
      int s = 9;
      Die(int x, int y, int z) //constructor
      {
          myX = x;
          myY = y;
          size = z;//variable initializations here
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
         fill(180);
         if (dRandom == 1)
      for (int i = 1; i <= dRandom; i++) {
        ellipse(myX + (size/2), myY + (size/2), s, s);
      } else if (dRandom <= 3) {
      for (int i = 1; i <= dRandom; i++) {
        ellipse(myX + (15 + (15*(dRandom-2))) + (15 * (i-(dRandom-1))), myY + (15 + (15*(dRandom-2))) + (15 * (i-(dRandom-1))), s, s);
      }
    } else if (dRandom == 5) {
      for (int i = 1; i <= 2; i++) {
        for (int j = 1; j <= 2; j++) {
          ellipse(myX + 15 + (30 * (i-1)), myY + 10 + (40 * (j-1)), s, s);
        }
      }
      ellipse(myX + (size/2), myY + (size/2), s, s);
    } else if (dRandom == 4) {
      for (int j = 1; j <= 2; j++) {
        for (int i = 1; i <= 2; i++) {
          ellipse(myX + 15 + (30 * (i - 1)), myY + 15 + (30 * (j - 1)), s, s);
        }
      }
    } else {
      for (int j = 1; j <= 3; j++) {
        for (int i = 1; i <= 2; i++) {
          ellipse(myX + 15 + (30 * (i - 1)), myY + 30 + (15 * (j - 2)), s, s);
        }
      }
    }
  }
}
