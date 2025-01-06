
package car_sales;

import static car_sales.DetailPage.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Car_sales {

    public static void main(String[] args) {
       try {
                for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                    if ("Nimbus".equals(info.getName())) {
                        javax.swing.UIManager.setLookAndFeel(info.getClassName());
                        break;
                    }
                }
            } 
            catch (Exception ex) 
            {
                java.util.logging.Logger.getLogger(homepage.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
            }
            try
            {
                Connection conn = DriverManager.getConnection(path, username, password);
                String myqry = "select * from usertable";
                PreparedStatement st = conn.prepareStatement(myqry);  
                ResultSet rst = st.executeQuery(); 
                if(rst.next())
                { 
                    login_page obj = new login_page();
                    obj.setVisible(true);
                     
                }
                else
                {
                    CreateAdmin obj = new CreateAdmin();
                    obj.setVisible(true);
                }  
            } 
            catch (Exception ex)
            {
                
            } 
    }
}
