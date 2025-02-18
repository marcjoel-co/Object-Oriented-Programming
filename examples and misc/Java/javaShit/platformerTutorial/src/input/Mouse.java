package input;

import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import main.GamePanel;

public class Mouse implements MouseListener, MouseMotionListener {
 
    private GamePanel gamePanel;
    
    public Mouse(GamePanel gamePanel) {
        this.gamePanel = gamePanel;
    }
    @Override
    public void mouseDragged(MouseEvent e) {
        System.out.println("Mouse dragged");
    }

    @Override
    public void mouseMoved(MouseEvent e) {
       gamePanel.setRectPos(e.getX(), e.getY());
    }

    @Override
    public void mouseClicked(MouseEvent e) {
        System.out.println("Mouse clicked");
    }

    @Override
    public void mousePressed(MouseEvent e) {
        System.out.println("Mouse pressed");
    }

    @Override
    public void mouseReleased(MouseEvent e) {
        System.out.println("Mouse released");
    }

    @Override
    public void mouseExited(MouseEvent e) {
        // Implement the method
    }

    @Override
    public void mouseEntered(MouseEvent e) {
        // Implement the method
    }
}