package io.github.xjrga.allfoods;
import io.github.xjrga.allfoods.queries.PROCEDURE;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
/**
 *
 * @author jr
 */
public class FoodGlycemicFileGenerator extends Procedure {
	private final String filepath;
	public FoodGlycemicFileGenerator( String filepath , Connection connection ){
		super( connection , PROCEDURE.EXPORT_FOOD_LIST_TO_XML_INCLUDES_GLYCEMIC_LOAD.get() );
		this.filepath = filepath;
	}
	public void execute() {
		try {
			proc.execute();
			ResultSet rs = proc.getResultSet();
			if ( ! rs.wasNull() ) {
				ResultSetMetaData md = rs.getMetaData();
				int cols = md.getColumnCount();
				for ( int i = 0 ; i < cols ; i++ ) {
					md.getColumnLabel( i + 1 );
				}
				createFoodListDoc( rs );
			}
		} catch( SQLException ex ) {
			ex.printStackTrace();
		}
	}
	private void createFoodListDoc( ResultSet rs ) throws SQLException {
		Utilities.append_to_file( filepath , "<foods xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance'>" );
		while( rs.next() ) {			
			Utilities.append_to_file( filepath , rs.getString( 2 ) );
		}
		Utilities.append_to_file( filepath , "</foods>" );
	}
}
