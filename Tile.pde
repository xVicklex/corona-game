class Tile
{

  PImage _tileImg;  
  PVector _position;
  int state;
  
  Tile()
  {
    
    
  }
  
  Tile(PImage tileImg, int x, int y)
  {
    _tileImg = tileImg;
    _position = new PVector(x,y);
  }
  
  void Draw()
  {
    image(_tileImg, _position.x,_position.y );
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
