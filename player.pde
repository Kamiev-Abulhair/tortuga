final int POINTS_FOR_COIN = 1;
final int POINTS_FOR_EMARALD = 10;
final int POINTS_FOR_RUBY = 100;
final int POINTS_FOR_CHEST = 10000;

int playerX;
int playerY;
int playerScore = 0;

void placePlayer(int x, int y) {
  playerX = x;
  playerY = y;
}

void movePlayer(int dx, int dy) {
  int nextX = playerX + dx;
  int nextY = playerY + dy;
  
  if(currentLevel[nextY][nextX] != '#') {
    playerX = nextX;
    playerY = nextY;
    if (currentLevel[nextY][nextX] == 'E') {
      loadNextLevel();
      doorSound.play();
      doorSound.rewind();
    } else if (currentLevel[nextY][nextX] == '*') {
      playerScore += POINTS_FOR_COIN;
      currentLevel[nextY][nextX] = ' ';
      coinSound.play();
      coinSound.rewind();
    }else if (currentLevel[nextY][nextX] == 'i') {
      playerScore += POINTS_FOR_EMARALD;
      currentLevel[nextY][nextX] = ' ';
     emeraldSound.play();
      emeraldSound.rewind();
    } else if (currentLevel[nextY][nextX] == 'r') {
      playerScore += POINTS_FOR_RUBY;
      currentLevel[nextY][nextX] = ' ';
      rubySound.play();
      rubySound.rewind();
    } else if (currentLevel[nextY][nextX] == 'c') {
      playerScore += POINTS_FOR_CHEST;
      currentLevel[nextY][nextX] = ' ';
      chestSound.play();
      chestSound.rewind();
    }
  }
}

void drawPlayer () {
  int pixelX = playerX * cellSize + centeringShiftX;
  int pixelY = playerY * cellSize + centeringShiftY;
  image(playerImage, pixelX, pixelY, cellSize, cellSize);
}

void drawPlayerScoere() {
  fill(255);
  textSize(60);
  textAlign(CENTER, CENTER);
  text("Score" + playerScore , width / 2, 100);
}
