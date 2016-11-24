import java.awt.*;
import java.sql.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class TakeAttendance extends JFrame {

	JScrollPane attendance_pane;
	JPanel btn_pnl,container_pnl,head_pnl;
	JButton submit_btn,all_present_btn,all_absent_btn;
	JLabel class_lbl;
	Statement statement=null;
	
	
	TakeAttendance(String sub_code) throws Exception{
		 Class.forName("com.mysql.jdbc.Driver");
    	 Connection con=DriverManager.getConnection(
    			 "jdbc:mysql://localhost:3306/attendance","root","");
    	 statement=con.createStatement();
    	 
		setSize(700,500);
		setDefaultLookAndFeelDecorated(true);
		setLayout(null);
		setBackground(Color.LIGHT_GRAY);
		
		//initialization
		class_lbl=new JLabel("CS-B");
		head_pnl=new JPanel(new FlowLayout());
		btn_pnl=new JPanel();
		submit_btn=new JButton("SUBMIT");
		all_present_btn=new JButton("Mark all Present");
		all_absent_btn=new JButton("Mark all Absent");
		container_pnl=new JPanel();
		attendance_pane=new JScrollPane(container_pnl);
		
		
		//add to scroll
		for(byte i=0;i<20;i++)
		addAttendanceItem(container_pnl,"Saurabh Badola","1414142"+i,"36");
		
		//setting styles
		attendance_pane.setBackground(Color.BLACK);
		btn_pnl.setLayout(new FlowLayout());
		container_pnl.setLayout(new BoxLayout(container_pnl,BoxLayout.Y_AXIS));
		class_lbl.setFont(new Font(class_lbl.getName(), Font.ITALIC, 20));
		
		//setting positions
	    attendance_pane.setBounds(15,70,665,330);
	    btn_pnl.setBounds(0, 410, 690, 100);
	    head_pnl.setBounds(0, 10, 700, 50);
	
	    //Event handling
	    submit_btn.addActionListener(new ActionListener(){

			@Override
			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
			  //  JDialog.setDefaultLookAndFeelDecorated(true);
			    int response = JOptionPane.showConfirmDialog(null, "Are you sure you want to Submit?\n Press Yes to Confirm\n Press No to return\n", "Confirm",
			        JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
			   /* if (response == JOptionPane.NO_OPTION) {
			      System.out.println("No button clicked");
			    } else if (response == JOptionPane.YES_OPTION) {
			      System.out.println("Yes button clicked");
			    } else if (response == JOptionPane.CLOSED_OPTION) {
			      System.out.println("JOptionPane closed");
			    }*/
			  }
			
	    	
	    });
	    
	    
	    //add
	    head_pnl.add(class_lbl);
	    btn_pnl.add(all_present_btn);
	    btn_pnl.add(submit_btn);
	    btn_pnl.add(all_absent_btn);
	    
	    //add to frame
	    add(head_pnl);
	    add(attendance_pane);
	    add(btn_pnl);
	    
	    

        Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();

        // Determine the new location of the window
        int w = this.getSize().width;
        int h = this.getSize().height;
        int x = (dim.width-w)/2;
        int y = (dim.height-h)/2;

        // Move the window
        this.setLocation(x, y);
	    
	    
	    setVisible(true);
	    setResizable(false);
	}
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
       //new TakeAttendance();
	}
	
	void addAttendanceItem(JPanel contain,String name,String enrollment,String roll){
		JRadioButton present=new JRadioButton("Present");
		JRadioButton absent=new JRadioButton("Absent");
		ButtonGroup bg=new ButtonGroup();
		bg.add(present);
		bg.add(absent);
		JPanel pnl=new JPanel(new GridLayout(1,5));
		pnl.add(new JLabel(name));
		pnl.add(new JLabel(roll));
		pnl.add(new JLabel(enrollment));
		pnl.add(present);
		pnl.add(absent);
		contain.add(pnl);
		pnl.setPreferredSize(new Dimension(50,50));
		pnl.setBackground(Color.LIGHT_GRAY);

		contain.add(Box.createRigidArea(new Dimension(0,5)));
		
	}

}
