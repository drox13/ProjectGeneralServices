package edu.uptc.model;

public enum EServicePlan {
	DAILY("Diario"), WEEKLY("Semanal"), BIWEEKLY("Quincenal"), MONTHLY("Mensual");
	private String name;
	
	EServicePlan(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
}
