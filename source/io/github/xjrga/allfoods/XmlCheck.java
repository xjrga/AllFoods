package io.github.xjrga.allfoods;

import java.io.File;
import java.io.IOException;
import javax.xml.XMLConstants;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import org.xml.sax.SAXException;

public class XmlCheck {
  public XmlCheck() {}

  public static Boolean validate(String schema_path, String xmldoc_path) {
    Boolean valid = false;
    Source xmlDoc = new StreamSource(new File(xmldoc_path));
    SchemaFactory schemaFactory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
    Validator validator = null;
    try {
      Schema xmlSchema = schemaFactory.newSchema(new File(schema_path));
      validator = xmlSchema.newValidator();
    } catch (SAXException e) {
      e.printStackTrace();
    } finally {
      try {
        validator.validate(xmlDoc);
        valid = true;
      } catch (SAXException | IOException e) {
        e.printStackTrace();
      }
    }
    return valid;
  }
}
