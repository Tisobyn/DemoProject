//
//  CityListRouter.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

import Foundation

class CityListRouter: CityListRouterProtocol {
	
	private unowned let view: CityListViewProtocol
	
	init(view: CityListViewProtocol) {
		self.view = view
	}
	
	func showAddresses(for city: City) {
		NotificationCenter.default.post(name: .didSelectCity, object: city)
	}
	
	func showCreateAddressForm() {
		NotificationCenter.default.post(name: .didSelectCreateAddress, object: nil)
	}
}
