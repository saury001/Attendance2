import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.Toolkit;
import java.awt.event.*;
import javax.swing.*;

public class StudentDetails extends JFrame {

	JLabel stud_name_lbl,stud_father_lbl,stud_roll_lbl;
	JTextField stud_name_tf,stud_father_tf,stud_roll_tf,stud_class_tf;
	JPanel container_pnl,side_pnl;
	JLabel photo;
	
	StudentDetails(String stud_name,String stud_father_name,String stud_univ_roll){
		setSize(700,500);
		setResizable(false);
		setLayout(null);
		
		//initialize labels and text fields
		stud_name_lbl=new JLabel(stud_name);
		stud_name_lbl.setFont(new Font(stud_name_lbl.getName(), Font.ITALIC, 22));
		stud_father_lbl=new JLabel(stud_father_name);
		stud_father_lbl.setFont(new Font(stud_father_lbl.getName(), Font.ITALIC, 18));
		stud_roll_lbl=new JLabel(stud_univ_roll);
		stud_roll_lbl.setFont(new Font(stud_roll_lbl.getName(), Font.ITALIC, 18));
		stud_name_tf=new JTextField("xyz",10);
		stud_name_tf.setEditable(false);
		stud_class_tf=new JTextField("xyz",10);
		stud_father_tf=new JTextField("xyz",10);
		stud_roll_tf=new JTextField("xyz",10);
		photo=new JLabel(new ImageIcon("person.jpg"));
		
		//create panels
		 side_pnl=new JPanel(new FlowLayout(FlowLayout.CENTER,50,20));
		 container_pnl=new JPanel(new FlowLayout(FlowLayout.LEFT,25,20));
		
		//setting styles
		side_pnl.setBackground(Color.CYAN);
		container_pnl.setBackground(Color.LIGHT_GRAY);
		

		
		//add items to panels
		 side_pnl.add(photo);
		 side_pnl.add(stud_name_lbl);
		 side_pnl.add(stud_father_lbl);
		 side_pnl.add(stud_roll_lbl);
		 /*
         side_pnl.add(new JLabel("Student's name: "));
         side_pnl.add(stud_name_tf);
         side_pnl.add(new JLabel("Father's name: "));
         side_pnl.add(stud_father_tf);
         side_pnl.add(new JLabel("University Roll no: "));
         side_pnl.add(stud_roll_tf);
         side_pnl.add(new JLabel("Class Roll no: "));
         side_pnl.add(stud_class_tf);*/
		
		//locate panels
        side_pnl.setBounds(10,50,200,400);
        container_pnl.setBounds(220,50,460,400);
        
        addToContainer(container_pnl,"JAVA","TCS-505","55");
        addToContainer(container_pnl,"DBMS","TCS-504","98");
        addToContainer(container_pnl,"TOC","TCS-502","79");
        addToContainer(container_pnl,"XCS","XCS-500","75");

        addToContainer(container_pnl,"OS","TCS-501","60");

		
		//add Panels
         add(side_pnl);
         add(container_pnl);
         
 		setVisible(true);

         Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();

         // Determine the new location of the window
         int w = this.getSize().width;
         int h = this.getSize().height;
         int x = (dim.width-w)/2;
         int y = (dim.height-h)/2;

         // Move the window
         this.setLocation(x, y);
         
         
         
		
	}
	public static void main(String a[]){
		new StudentDetails("u","7","8");
	}
	
	void addToContainer(JPanel contain,String subject,String subCode,String perc){
		
		
		JPanel panel=new JPanel();
		JLabel subject_lbl=new JLabel(subject);
		JLabel perc_lbl=new JLabel(perc+"%");
		perc_lbl.setFont(new Font(perc_lbl.getName(), Font.BOLD, 18));
		JLabel subCode_lbl=new JLabel(subCode);
		subject_lbl.setHorizontalAlignment(JLabel.CENTER);
		perc_lbl.setHorizontalAlignment(JLabel.CENTER);
		subCode_lbl.setHorizontalAlignment(JLabel.CENTER);
		panel.setLayout(new GridLayout(4,1));
		panel.add(subject_lbl);
		panel.add(subCode_lbl);
		panel.add(perc_lbl);
		panel.add(new JButton("Details"));
       panel.setPreferredSize(new Dimension(120,100));
       if(Double.parseDouble(perc)<75.00)
    	   panel.setBackground(Color.RED);
       else
    	   panel.setBackground(Color.GREEN);
		contain.add(panel);
	}

}
