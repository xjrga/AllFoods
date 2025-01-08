package io.github.xjrga.allfoods;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author jr
 */
public class Utilities {
	
	public static void append_to_file( String filePath , String txt ) {
		try( BufferedWriter out = new BufferedWriter( new FileWriter( filePath , true ) ) ) {
			out.write( txt );
		} catch( IOException ex ) {}
	}
	
}
