package input;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import main.GamePanel;


public class KeyboardInputs implements KeyListener {

    private GamePanel gamePanel;
    public KeyboardInputs(GamePanel gamePanel) {
        this.gamePanel = gamePanel;
        
    }
    @Override
    public void keyTyped(java.awt.event.KeyEvent e) {
        // TODO Auto-generated method stub
    }

    @Override
    public void keyReleased(java.awt.event.KeyEvent e) {
        // TODO Auto-generated method stub
    }

    @Override
    public void keyPressed(java.awt.event.KeyEvent e) {
      
        switch (e.getKeyCode()) {
            case KeyEvent.VK_W:
            gamePanel.changeDelta(0, -10);
                System.out.println("UP");
                break;
            case KeyEvent.VK_S:
            gamePanel.changeDelta(0, 10);
                System.out.println("DOWN");
                break;
            case KeyEvent.VK_A:
            gamePanel.changeDelta(-10, 0);
                System.out.println("LEFT");
                break;
            case KeyEvent.VK_D:
            gamePanel.changeDelta(10, 0);
                System.out.println("RIGHT");
                break;
            default:
                break;
        }
    }
}