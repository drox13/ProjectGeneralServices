package edu.uptc.model;

public enum EService {
	RECIDENTIAL("Residencial"), COMMERCIAL("Comercial");
	private String name;
	
	private EService(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
}