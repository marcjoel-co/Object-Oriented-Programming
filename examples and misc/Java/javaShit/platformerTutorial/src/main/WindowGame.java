package main;

import javax.swing.JFrame;

public class WindowGame {
    private JFrame jframe;

    public WindowGame(GamePanel gamePanel) {

        jframe = new JFrame();
        jframe.add(gamePanel);
        jframe.setLocationRelativeTo(null);
        jframe.setResizable(false);
        jframe.pack();
        jframe.setVisible(true);   

    }

    
}
