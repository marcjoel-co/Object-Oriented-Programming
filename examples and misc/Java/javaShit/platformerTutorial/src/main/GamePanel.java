package main;

import input.KeyboardInputs;
import input.Mouse;
import java.awt.Graphics;
import javax.swing.JPanel;
import java.awt.Dimension;
import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import javax.imageio.ImageIO;



public class GamePanel extends JPanel {

    private Mouse mouse;
    private float xDelta = 0, yDelta = 0;
    private int frames = 0; 
    private long lastcheck = 0;
    private BufferedImage img, subImage;

    public GamePanel() {
     
        importimage();
        mouse = new Mouse(this);
        setPanelSize();
        addKeyListener(new KeyboardInputs(this));
        addMouseListener(mouse);
        addMouseMotionListener(mouse);
    }

    private void importimage() {
        InputStream is = getClass().getResourceAsStream("/res/player_sprites.png");

        try {
            img = ImageIO.read(is);    
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void setPanelSize() {
        Dimension size = new Dimension(1280, 800);
        setMinimumSize(size);
        setPreferredSize(size);
        setMaximumSize(size);
    }

    public void setRectPos(int x, int y) {
        this.xDelta = x;
        this.yDelta = y;
        repaint();
    }

    public void changeDelta(int x, int y) {
        this.xDelta += x;
        this.yDelta += y;
        repaint();
    }

  
    public void paintComponent(Graphics g) {
        super.paintComponent(g); // calls the super class which is Jpanel
        

        subImage = img.getSubimage(1*64, 8*40, 64, 40);
        g.drawImage(subImage, (int) xDelta,(int) yDelta, 128, 80, null);
        /* This gets call when ever we press the bottoms
         * this takes care of the drawing of the game
         * 
         * graphic Object is used to draw the game
         *
         * basically 
         * Jframe + JPanel = painting
         */
    }
}

