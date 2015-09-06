package util;

public enum DataSourceEnum {
	
	LEVEL1ALL("level1All"), 
	LEVEL1CRIME("level1Crime"),
	LEVEL1ACCIDENT("level1Accident"), 
	
	LEVEL2ALL("level2All"), 
	LEVEL2A("level2A"), 
	LEVEL2B("level2B"), 
	LEVEL2C("level2C"), 
	LEVEL2D("level2D"), 
	LEVEL2E("level2E"), 
	LEVEL2F("level2F");
	
    private String value;

    private DataSourceEnum(String value) {
        this.value = value;
    }

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}



}
