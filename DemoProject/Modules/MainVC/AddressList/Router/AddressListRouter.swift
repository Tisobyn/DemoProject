//
//  AddressListRouter.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

class AddressListRouter: AddressListRouterProtocol {
	
	private unowned let view: AddressListViewProtocol
	
	init(view: AddressListViewProtocol) {
		self.view = view
	}
	
}
