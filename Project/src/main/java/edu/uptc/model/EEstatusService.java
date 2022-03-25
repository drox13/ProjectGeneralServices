package edu.uptc.model;

public enum EEstatusService {
	QUOTED("Cotizado"), NOT_DONE("No realizado"), STARTED("Iniciado"),
	CANCELLED_CUSTOMER("Cancelado_Cliente"), CANCELLED_EXPERT("Cancelado_Experto"),
	CANCELED_FORCE("Cancelado_Fuerza"), SUSPENDED("Suspendido"), RESUMED("Reanudado"),
	PENDING("Pendiente"), COMPLETED("Completado");
	private String name;
	
	private EEstatusService(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
}