package com.bean;

public class Vehicle {
	private String vehicleId;
	private String modelName;
	private String companyName;
	private String dateOfProducution;
	private String dateOfDispatch;
	private int ownerId;
	
	public int getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}
	public String getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}
	public String getModelName() {
		return modelName;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getDateOfProducution() {
		return dateOfProducution;
	}
	public void setDateOfProducution(String dateOfProducution) {
		this.dateOfProducution = dateOfProducution;
	}
	public String getDateOfDispatch() {
		return dateOfDispatch;
	}
	public void setDateOfDispatch(String dateOfDispatch) {
		this.dateOfDispatch = dateOfDispatch;
	}
	public Vehicle(String vehicleId, String modelName, String companyName,
			String dateOfProducution, String dateOfDispatch, int ownerId) {
		super();
		this.vehicleId = vehicleId;
		this.modelName = modelName;
		this.companyName = companyName;
		this.dateOfProducution = dateOfProducution;
		this.dateOfDispatch = dateOfDispatch;
		this.ownerId = ownerId;
	}
	
	
	

}
