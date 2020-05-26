//For a array we need to declare it, Assign it a data type.

//Initialize the quantety that we will have in our array.
//Assign data to each index of the array.
//for loop. The For loop would go through all the integers. The for loops job is only to count and do somethin a certain amount of time.
int [] Y = new int[1024];
int [] X = new int[1024];
PImage tileImg;
Tile[] GameBoard;
boolean A=false;
boolean B=false;
void setup()
{
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

      X[32*y+x] = x*25;
      Y[32*y+x] = y*25;
      GameBoard[i] = new Tile(tileImg, x*25, y*25);
      i++;
    }
  }
  print(Y[32]);
  print(X[32]);
} 

void draw()
{

  if (mouseX< 25 &&mouseX> 0);
  {
    if (mouseY< 25 &&mouseY> 0);
    {
      A=true;
    }
  }
  for (int i=0; i < GameBoard.length; i++)
  {  
    if (A==true&&i==0&&B==true)
    {  
      A=false;
      B=false;
    } else
    {
      GameBoard[i].Draw();
    }
  }
}

void mouseClicked()
{
  B=true;
}




























//  for(int y=0; y<32; y++)
// {
//for (int x=0; x<32; x++)
//{
// image(tileImg, x*25, y*25);
// }
// }
