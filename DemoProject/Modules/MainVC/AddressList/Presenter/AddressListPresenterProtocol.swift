//
//  AddressListPresenterProtocol.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//


protocol AddressListPresenterProtocol: class {
	
	var router: AddressListRouterProtocol! { set get }
	var interactor: AddressListInteractorProtocol! { set get }
	
	func save(city: String?, street: String?, apartment: String?)
	
}
