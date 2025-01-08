package io.github.xjrga.allfoods.connections;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public enum ALLFOODS {
	FILE( "jdbc:hsqldb:file:database/dbfiles/allfoods;shutdown=true" ),
	LOCALHOST( "jdbc:hsqldb:hsql://localhost/database" );
	private final String url;
	ALLFOODS( String url ){
		this.url = url;
	}
	public Connection getConnection() { return createConnection( "org.hsqldb.jdbcDriver" , url , "SA" , "" ); }
	public Connection createConnection( String driver , String url , String user , String password ) {
		Connection connection = null;
		try {
			Class.forName( driver );
			connection = DriverManager.getConnection( url , user , password );
		} catch( ClassNotFoundException | SQLException ex ) {
			ex.printStackTrace();
		}
		return connection;
	}
}
