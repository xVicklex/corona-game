
//For a array we need to declare it, Assign it a data type.

//Initialize the quantety that we will have in our array.
//Assign data to each index of the array.
//for loop. The For loop would go through all the integers. The for loops job is only to count and do somethin a certain amount of time.

PImage tileImg;


void setup()
{

  size(800, 800);
  tileImg = loadImage("Tile.png");
}

void draw()
{

  for (int y=0; y<32; y++)
  {
    for (int x=0; x<32; x++)
    {
      image(tileImg, x*25, y*25);
    }
  }
}
