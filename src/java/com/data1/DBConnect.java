package com.data1;
import java.sql.*;

public class DBConnect {

    public Connection getConnection()throws Exception{
        Connection con = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
//        String url = "jdbc:sqlserver://"+serverName+":"+portNumber + "\\" + instance +";databaseName="+dbName;
        String xUrl = "jdbc:sqlserver://" + xServer + ":" + xPort + ";databaseName=" + xDBName;
        try {
            con = DriverManager.getConnection(xUrl, xUser, xPW);
//             con = DriverManager.getConnection(url, userID, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return (con);
    }
    private static String xServer = "localhost";
    private static String xPort = "1433";
    private static String xDBName = "vnPost";
    private static String xUser = "sa";
    private static String xPW = "sa";
//    private final String serverName = "localhost";
//    private final String portNumber = "1433";
//    private final String dbName = "PRJ321";
//    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
//    private final String userID = "sa";
//    private final String password = "sa";
}
