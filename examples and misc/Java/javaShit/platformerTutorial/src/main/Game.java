package main; // study about packages in java
    
public class Game implements Runnable{ // what does it mean to be public in java?

    private WindowGame gameWindow; // what does it mean to be private in java?
    private GamePanel gamePanel; 
    private Thread gameThread;
    private final int FPS_SET = 32;

    public Game() { // this is a constructor
        // considered as the head method of the class
        gamePanel = new GamePanel();
        gameWindow = new WindowGame(gamePanel); // what does it mean to be new in java?
        gamePanel.requestFocus();
        startGameloop();
    }

    private void startGameloop(){
        gameThread = new Thread(this);
        gameThread.start();
    }
    @Override
    public void run() {
        // TODO Auto-generated method stub
        double timePerFrame = 1000000000.0 / FPS_SET;
        long lastFrame = System.nanoTime();
        long now = System.nanoTime();

        int frames = 0;
        long lastcheck = System.currentTimeMillis();
        while (true){

            now = System.nanoTime();
            if (System.nanoTime() - lastFrame >= timePerFrame) {
                gamePanel.repaint();
                lastFrame = now;
                frames++;
            }

            
            if(System.currentTimeMillis() - lastcheck > 1000) {
                lastcheck = System.currentTimeMillis();
                System.out.println("Frames: " + frames);
                frames = 0;
            }
    
        }
    }
}