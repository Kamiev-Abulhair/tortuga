 import ddf.minim.*;

Minim minim;
AudioPlayer coinSound;
AudioPlayer doorSound;
AudioPlayer emeraldSound;
AudioPlayer rubySound;
AudioPlayer chestSound;

void loadSounds() {
  minim = new Minim(this);
  coinSound = minim.loadFile("Coin.wav");
  doorSound = minim.loadFile("door.wav");
  emeraldSound = minim.loadFile("emerald.wav");
  rubySound = minim.loadFile("ruby.wav");
  chestSound = minim.loadFile("chest.wav");
}
