import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import java.util.Random;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.Timer;

import java.lang.Math;

public class Navigator extends JFrame {

    private JPanel townPanel;
    private JLabel coordinateLabel;
    private final int WIDTH = 500;
    private final int HEIGHT = 500;
    private final int TIMER_DELAY = 500;
    private int x = WIDTH / 2; // initial x coordinate of lost person
    private int y = HEIGHT / 2; // initial y coordinate of lost person
    private static long startTime;
    private static JLabel timeLabel;
    private static Timer timer;
    private static boolean running = false;


    public Navigator() {
        Scanner LostPerson = new Scanner(System.in);
        System.out.println("Enter the lost person's name: ");
        String name = LostPerson.nextLine();

        setTitle("MyCity Searcher");
        setSize(WIDTH, HEIGHT);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(null);


        /**  -We can view each building as a 'Vertex' in a graph data structure,
        and the 'Edge' between them as the possible paths that a lost person could take to reach their destination.
            -In this case, the 'Edge' would be the possible paths between buildings,
        such as the roads or sidewalks that connect them. */


        // create the town panel and add it to the frame
        townPanel = new JPanel() {
            @Override
            protected void paintComponent(Graphics g) {
                super.paintComponent(g);

                // draw the black background
                g.setColor(Color.GRAY);
                g.fillRect(0, 0, getWidth(), getHeight());

                // draw the buildings
                g.setColor(Color.WHITE);
                if (x >= 50 && x <= 200 && y >= 50 && y <= 200) {
                    g.setColor(Color.MAGENTA);
                } /** Hospital -> Vertex 1 */
                g.fillRect(50, 50, 150, 150);
                g.setColor(Color.BLACK);
                g.drawRect(50, 50, 150, 150);


                g.setColor(Color.WHITE);
                if (x >= 250 && x <= 350 && y >= 50 && y <= 250) {
                    g.setColor(Color.GREEN);
                } /** Living Plaza -> Vertex 2 */
                g.fillRect(250, 50, 100, 200);
                g.setColor(Color.BLACK);
                g.drawRect(250, 50, 100, 200);


                g.setColor(Color.WHITE);
                if (x >= 400 && x <= 450 && y >= 50 && y <= 150) {
                    g.setColor(Color.CYAN);
                } /** Police Station -> Vertex 3 */
                g.fillRect(400, 50, 50, 100);
                g.setColor(Color.BLACK);
                g.drawRect(400, 50, 50, 100);


                g.setColor(Color.WHITE);
                if (x >= 50 && x <= 150 && y >= 250 && y <= 400) {
                    g.setColor(Color.ORANGE);
                } /** Mie Gacoan -> Vertex 4 */
                g.fillRect(50, 250, 100, 150);
                g.setColor(Color.BLACK);
                g.drawRect(50, 250, 100, 150);


                g.setColor(Color.WHITE);
                if (x >= 200 && x <= 350 && y >= 300 && y <= 400) {
                    g.setColor(Color.YELLOW);
                } /** McDonalds -> Vertex 5 */
                g.fillRect(200, 300, 150, 100);
                g.setColor(Color.BLACK);
                g.drawRect(200, 300, 150, 100);


                g.setColor(Color.WHITE);
                if (x >= 400 && x <= 550 && y >= 250 && y <= 400) {
                    g.setColor(Color.BLUE);
                } /** Supermarket -> Vertex 6 */
                g.fillRect(400, 250, 150, 150);
                g.setColor(Color.BLACK);
                g.drawRect(400, 250, 150, 150);


                g.setColor(Color.WHITE);
                if (x >= 250 && x <= 400 && y >= 360 && y <= 420) {
                    g.setColor(Color.PINK);
                } /** Post Office -> Vertex 7 */
                g.fillRect(250, 360, 100, 60);
                g.setColor(Color.BLACK);
                g.drawRect(250, 360, 100, 60);


                // draw the building names
                g.setColor(Color.BLACK);
                Font boldFont = new Font("Arial", Font.BOLD, 12); //create a bold font
                g.setFont(boldFont); //set the bold font

                g.drawString("Hospital", 55, 75);

                g.drawString("Living Plaza", 255, 75);

                Graphics2D g2d = (Graphics2D) g.create();
                g2d.rotate(Math.toRadians(90), 385, 75);
                g2d.drawString("Police Station", 370, 40);
                g2d.dispose();

                g.drawString("Mie Gacoan", 55, 275);

                g.drawString("McDonalds", 205, 325);

                Graphics2D g2dII = (Graphics2D) g.create();
                g2dII.rotate(Math.toRadians(90), 420, 290);
                g2dII.drawString("Supermarket", 420, 290);
                g2dII.dispose();

                g.drawString("Post Office", 270, 395);

                // set font for the name tag
                Font font = new Font("Helvetica Neue", Font.BOLD, 14);
                g.setFont(font);
                g.setColor(Color.BLACK);

                // get the width and height of the name tag
                FontMetrics fm = g.getFontMetrics();
                int nameWidth = fm.stringWidth(name);
                int nameHeight = fm.getHeight();

                // draw the name tag above the dot
                g.drawString(name, x - nameWidth / 2, y - nameHeight - 2);

                // draw the lost person
                g.setColor(Color.RED);
                g.fillOval(x - 5, y - 5, 10, 10);
            }

            /** Hence, 10 edges exist in this Digraph Graph:
             - Edge between Hospital (Vertex 1) and Living Plaza (Vertex 2)
             - Edge between Hospital (Vertex 1) and Mie Gacoan (Vertex 4)
             - Edge between Hospital (Vertex 1) and Supermarket (Vertex 6)
             - Edge between Living Plaza (Vertex 2) and Police Station (Vertex 3)
             - Edge between Police Station (Vertex 3) and Mie Gacoan (Vertex 4)
             - Edge between Police Station (Vertex 3) and Supermarket (Vertex 6)
             - Edge between Mie Gacoan (Vertex 4) and Mcdonalds (Vertex 5)
             - Edge between McDonalds (Vertex 5) and Supermarket (Vertex 6)
             - Edge between McDonalds (Vertex 5) and Post Office (Vertex 7)
             - Edge between Supermarket (Vertex 6) and Post Office (Vertex 7) */

        };
        townPanel.setBounds(0, 0, WIDTH, HEIGHT);
        add(townPanel);

        // create the coordinate label and add it to the frame
        coordinateLabel = new JLabel();
        coordinateLabel.setBounds(0, HEIGHT - 20, WIDTH, 20);
        add(coordinateLabel);

        // create a timer to update the lost person's location
        Timer coordinator = new Timer(TIMER_DELAY, e -> updateLostPersonLocation());
        coordinator.start();
    }

    // To see if the lost person has entered the building
    private void updateLostPersonLocation() {
        Random random = new Random();

        /** The lost person's coordinates can be viewed as a 'Node' in the graph.
         We can then use graph algorithms to find the shortest path from their current location to their destination. */

        // move the lost person randomly
        int dx = random.nextInt(4) - 1;
        int dy = random.nextInt(4) - 1;
        x += dx * 10;
        y += dy * 10;

        /** We can use graph algorithms to determine the next node that the lost person
         should move to in order to get to their destination. */

        // wrap the lost person's location if it goes out of bounds
         if (x < 0) {
            x = WIDTH;
        } else if (x > WIDTH) {
            x = 0;
        }
        if (y < 0) {
            y = HEIGHT;
        } else if (y > HEIGHT) {
            y = 0;
        }

        // repaint the town panel to update the lost person's location
        townPanel.repaint();
    }

    private static void updateLabel(long elapsedTime) {
        long minutes = TimeUnit.MILLISECONDS.toMinutes(elapsedTime);
        elapsedTime -= TimeUnit.MINUTES.toMillis(minutes);
        long seconds = TimeUnit.MILLISECONDS.toSeconds(elapsedTime);
        elapsedTime -= TimeUnit.SECONDS.toMillis(seconds);
        long millis = elapsedTime;

        String minutesStr = String.format("%02d", minutes);
        String secondsStr = String.format("%02d", seconds);
        String millisStr = String.format("%03d", millis);

        timeLabel.setText(minutesStr + ":" + secondsStr + ":" + millisStr);
    }


    public static void main(String[] args) {

        new Navigator().setVisible(true);

        JFrame frame = new JFrame("Stopwatch");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());

        timeLabel = new JLabel("00:00:000");
        timeLabel.setHorizontalAlignment(JLabel.CENTER);
        timeLabel.setFont(new Font("Arial", Font.BOLD, 40));
        frame.add(timeLabel, BorderLayout.CENTER);

        frame.pack();
        frame.setVisible(true);
        frame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                if (running) {
                    timer.stop();
                    running = false;
                }
            }
        });

        frame.pack();
        frame.setVisible(true);
        frame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                if (running) {
                    timer.stop();
                    running = false;
                }
            }
        });

        startTime = System.currentTimeMillis();
        timer = new Timer(1, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                long elapsedTime = System.currentTimeMillis() - startTime;
                updateLabel(elapsedTime);
            }
        });
        timer.start();
        running = true;
    }
}
