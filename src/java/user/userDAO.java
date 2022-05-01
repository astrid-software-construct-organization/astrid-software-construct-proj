/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import bean.user;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

/**
 *
 * @author Asha Dalila binti Zulkifly
 */
public class userDAO {

        String dbName = "webapplicationad";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";
 
    public user get(int id) throws SQLException, IOException{
        user usr =null;
        String sql = "SELECT * FROM user WHERE userID =?";
    try(Connection connection = DriverManager.getConnection(url, userName, password)){
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                usr = new user();

                Blob blob = result.getBlob("profileImage");
                 
                ByteArrayOutputStream outputStream;
                String base64Image;
                try (InputStream inputStream = blob.getBinaryStream()) {
                    outputStream = new ByteArrayOutputStream();
                    byte[] buffer = new byte[4096];
                    int bytesRead = -1;
                    while ((bytesRead = inputStream.read(buffer)) != -1) {                  
                        outputStream.write(buffer, 0, bytesRead);
                    }   byte[] imageBytes = outputStream.toByteArray();
                    base64Image = Base64.getEncoder().encodeToString(imageBytes);
                }
                outputStream.close();

                usr.setBase64Image(base64Image);
            }      
    }catch (SQLException | IOException ex) {
            ex.printStackTrace();
            throw ex;
    }      
    finally{    
        return usr;
    }
        
    }
}
