//
//  AddressListViewProtocol.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

protocol AddressListViewProtocol: class {
	var presenter: AddressListPresenterProtocol! { get set }
	
	func present(addresses: [Address])
	func presentAddressForm()
	func showAlert(title: String, message: String)
	func updateCities()
}
