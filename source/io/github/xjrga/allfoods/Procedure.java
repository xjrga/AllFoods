package io.github.xjrga.allfoods;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * @author jr
 */
public class Procedure {
  protected CallableStatement proc;

  public Procedure(Connection connection, String procedure) {
    try {
      proc = connection.prepareCall(procedure);
    } catch (SQLException ex) {
      ex.printStackTrace();
    }
  }

  public void close() {
    try {
      proc.close();
    } catch (SQLException ex) {
      ex.printStackTrace();
    }
  }
}
