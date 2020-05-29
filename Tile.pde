class Tile
{
  PImage bomb;
  PImage _tileImg;  
  PVector _position;
  int state;
  boolean isVisible = true;
  boolean isBomb;
  boolean isOver = false;
  Tile()
  {
  }

  Tile(PImage tileImg, int x, int y)
  {
    _tileImg = tileImg;
    _position = new PVector(x, y);

    int b = (int)random(0, 10);
    print(b);

    if (b < 2)
    {
      isBomb=true;
    }
    if (b >=2)
    {
      isBomb = false;
    }
    imageMode(CENTER);
    bomb = loadImage("bomb.png");
  }

  void Draw()
  {
    if (isVisible == true)
    {
      image(_tileImg, _position.x, _position.y );
      imageMode(CENTER);
    }
    if (isVisible == false)
    {
      if (isBomb == true)
      {
        if (Visiblecount >= 5)
        {
          
          Scene = 3;
        } else {
          image(bomb, _position.x, _position.y);
          Scene = 2;
        }
      }
    }
    if (Scene == 2)
    {
      isOver = true;
    }
    if (isOver == true)
    {
      // background(0);
    }
  }
}



// TO DO BEFORE MONDAY
// - draw all tile objects(an array of tiles) the array should be in corona_game tab((do this))
// - give positions to tiles in setup(use the for loops to do this)
// - call draw function of every tile in corona_game draw function.
//Therere are alot of bombs, there are 252 tile on the originl minesweeper.
//have to be able to click on a tile. when tile clicked it should disapear and if there is a corona ifected person on that tile you lose.'
//need numbers or some sourt to know how big of a chance there are to be killed.
//be able to see the infected persons after you died so that you know where they are


//task list
//scene when you die 
//maybe I could do if you get 20 tiles without bloqing youreself up you win and make a scene for that
