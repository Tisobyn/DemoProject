//
//  AddressListInteractor.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

class AddressListInteractor: AddressListInteractorProtocol {
	
	private let service: AddressServiceProtocol
	
	weak var presenter: AddressListInteractorOutputProtocol!
	
	init(service: AddressServiceProtocol = AddressService()) {
		self.service = service
	}
	
	func save(city: String, street: String, apartment: String) {
		service.save(city: city, street: street, apartment: apartment)
		presenter.didSaveAddress(with: .success(()))
	}
}
