Player myPlayer;

class Player
{
  PVector playerPosition;
  
  float playerWidth;
  float playerHeight;
  float playerHalfWidth;
  float playerHalfHeight;
  
  float playerHeadWidth;
  float playerHeadHeight;
  float playerHalfHeadWidth;
  float playerHalfHeadHeight;
  float playerHeadX;
  float playerHeadY;
  
  float playerLegWidth = 10;
  float playerLegHeight = 25;
  
  color playerColour = color(random(255), random(255), random(255));
  
  float playerSpeed;
  
  Player()
  {
    playerPosition = new PVector(200, 200);
    
    playerWidth = 30;
    playerHeight = 50;
    playerHalfWidth = playerWidth /2;
    playerHalfHeight = playerHeight /2;
    
    playerHeadWidth = playerWidth;
    playerHeadHeight = playerHeadWidth;
    playerHalfHeadWidth = playerHeadWidth / 2;
    playerHalfHeadHeight = playerHeadHeight / 2;
    
    
    
    playerSpeed = 5;
  }
  
  void playerDraw()
  { 
    fill(playerColour);
    //body
    rect(playerPosition.x, playerPosition.y, playerWidth, playerHeight);
    //head
    ellipse(playerPosition.x + playerHalfHeadWidth, playerPosition.y - playerHalfHeadHeight, playerHeadWidth, playerHeadHeight);
    //left leg
    stroke(playerColour);
    strokeWeight(playerLegWidth);
    line(playerPosition.x + playerLegWidth / 2, playerPosition.y + playerHeight, playerPosition.x + playerLegWidth / 2, playerPosition.y + playerHeight + playerLegHeight);
    //right leg
    line(playerPosition.x + playerWidth - playerLegWidth / 2, playerPosition.y + playerHeight, playerPosition.x + playerWidth - playerLegWidth / 2, playerPosition.y + playerHeight + playerLegHeight);
    noStroke();
    
    if (keyPressed)
    {
      //general up down left and right movement
      if(key == 'a')
      {
       playerPosition.x -= playerSpeed;
      }
      if(key == 'd')
      {
       playerPosition.x += playerSpeed;
      } 
      if(key == 'w')
      {
        playerPosition.y -= playerSpeed;
      }
      if(key == 's')
      {
        playerPosition.y += playerSpeed;
      }
    }
  }
}