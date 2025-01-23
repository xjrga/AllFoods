package io.github.xjrga.allfoods.queries;

public enum PROCEDURE {
  EXPORT_FOOD_LIST_TO_XML("{CALL PUBLIC.EXPORT_FOOD_LIST_TO_XML()}"),
  EXPORT_FOOD_LIST_TO_XML_INCLUDES_GLYCEMIC_LOAD(
      "{CALL PUBLIC.EXPORT_FOOD_LIST_TO_XML_INCLUDES_GLYCEMIC_LOAD()}");
  private final String procedure;

  PROCEDURE(String procedure) {
    this.procedure = procedure;
  }

  public String get() {
    return procedure;
  }
}
