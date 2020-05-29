//For a array we need to declare it, Assign it a data type.

//Initialize the quantety that we will have in our array.
//Assign data to each index of the array.
//for loop. The For loop would go through all the integers. The for loops job is only to count and do somethin a certain amount of time.
boolean isVisible = true;
PImage tileImg;
PImage bomb;
Tile[] GameBoard;
float Bomb;
int Scene = 1; 
int Visiblecount = 0;
void setup()
{
  imageMode(CENTER);
  bomb = loadImage("bomb.png");
  bomb.resize(24, 24);

  tileImg = loadImage("Tile.png");
  size(800, 800);
  //instance
  //Tile T = new Tile();
  GameBoard = new Tile[1024];


  int i = 0;
  for (int y=0; y<32; y++)
  {
    for (int x=0; x<32; x++)
    {
      GameBoard[i] = new Tile(tileImg, x*25, y*25);
      i++;
    }
  }
} 

void draw()
{

  if (Scene == 1)
  {
    Scene1();
  } else if (Scene == 2)
  {
    Scene2();
  } else if (Scene == 3)
  {
    Scene3();
  }
}

void Scene1()
{
  Visiblecount=0;
  background(0);
  image(bomb, 50, 50);
  for (int i=0; i < GameBoard.length; i++)
  { 
    if ( GameBoard[i].isVisible == false)
    {
      Visiblecount +=1;
    }
  }
  for (int i=0; i < GameBoard.length; i++)
  {  

    if (mousePressed)
    {
      if (dist(mouseX, mouseY, GameBoard[i]._position.x, GameBoard[i]._position.y )<12.5)
      {
        GameBoard[i].isVisible = false;
      }
    }

    GameBoard[i].Draw();
  }

  for (int i = 0; i<GameBoard.length; i++)
  {
    Bomb = random(50);

    //ellipse(random(1000), i, BombX+Bomb, BombY);
  }

  //if (dist(mouseX, mouseY, BombX, BombY)<10)
  //{

  // }
}

void Scene2()
{
  background(0);
  text("Game Over", 200, 400);
  textSize(100);
}

void Scene3()
{
  background(0);
  text("congrats you won", 100, 400);
  textSize(100);
}
