/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.util.*;
import java.sql.*;
/**
 *
 * @author Najihah Zanudin
 */
public class JDBCUtility 
{
    Connection con;
    String driver;
    String url;
    String userName;
    String password;

    //use this constructor if using ConnectionPool
    public JDBCUtility()
    {
    }

    //use this constructor if not using ConnectionPool
    //ConnectionPool is used for multi user!
    public JDBCUtility(String driver,
                       String url,
                       String userName,
                       String password)
    {
        this.driver = driver;
        this.url = url;
        this.userName = userName;
        this.password = password;
    }

    public  void jdbcConnect()
    {
        try
	{
            Class.forName (driver);
            con = DriverManager.getConnection(url, userName, password);

            DatabaseMetaData dma = con.getMetaData ();
            System.out.println("\nConnected to " + dma.getURL());
            System.out.println("Driver       " + dma.getDriverName());
            System.out.println("Version      " + dma.getDriverVersion());
            System.out.println("");
	}
        
	catch (SQLException ex)
	{
            while (ex != null)
            {
		System.out.println ("SQLState: " +
                                    ex.getSQLState ());
                System.out.println ("Message:  " +
                                    ex.getMessage ());
		System.out.println ("Vendor:   " +
                                    ex.getErrorCode ());
                ex = ex.getNextException ();
		System.out.println ("");
            }

            System.out.println("Connection to the database error");
	}
	catch (java.lang.Exception ex)
	{
            ex.printStackTrace ();
	}
    }

    public Connection jdbcGetConnection()
    {
	return con;
    }

    public void jdbcConClose()
    {
	try
	{
            con.close();
	}
	catch (Exception ex)
	{
	}
    }
}