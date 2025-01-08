package io.github.xjrga.allfoods.test;
import io.github.xjrga.allfoods.XmlCheck;
import junit.framework.TestCase;
import org.junit.Assert;
import org.junit.Test;
/**
 *
 * @author jr
 */
public class Tests extends TestCase {
	@Test
	public void testValidateFoodGlycemicDoc() {
		Boolean valid = XmlCheck.validate( "resources/schemas/foods.xsd" , "foods_glycemic.xml" );
		Assert.assertTrue( valid );
	}
	@Test
	public void testValidateFoodsDoc() {
		Boolean valid = XmlCheck.validate( "resources/schemas/foods.xsd" , "foods.xml" );
		Assert.assertTrue( valid );
	}
}
