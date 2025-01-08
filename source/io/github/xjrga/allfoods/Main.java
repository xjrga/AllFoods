package io.github.xjrga.allfoods;
import io.github.xjrga.allfoods.connections.ALLFOODS;
public class Main {
	public static void main( String[] args ) {
		final Main main = new Main();
		main.generateFoodsGlycemicXmlDoc( "foods_glycemic.xml" );
		main.generateFoodsXmlDoc( "foods.xml" );
	}
	/*
	 * Create foods.xml
	 */
	private void generateFoodsXmlDoc( String filepath ) {
		FoodAllFileGenerator o = new FoodAllFileGenerator( filepath , ALLFOODS.FILE.getConnection() );
		o.execute();
		o.close();
	}
	/*
	 * Create foods_glycemic.xml
	 */
	private void generateFoodsGlycemicXmlDoc( String filepath ) {
		FoodGlycemicFileGenerator o = new FoodGlycemicFileGenerator( filepath , ALLFOODS.FILE.getConnection() );
		o.execute();
		o.close();
	}
}
