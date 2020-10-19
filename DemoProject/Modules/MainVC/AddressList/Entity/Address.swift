//
//  Address.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

import RealmSwift

class Address: Object {
	@objc dynamic var street: String
	@objc dynamic var apartment: String
	
	init(street: String, apartment: String) {
		self.street = street
		self.apartment = apartment
	}
	
	required init() {
		self.street = ""
		self.apartment = ""
	}
}

extension Address: AddressRepresentable {
	var fullAddress: String {
		return "\(street)\n\nКв. \(apartment)"
	}
}
