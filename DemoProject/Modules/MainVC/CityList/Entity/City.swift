//
//  City.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

import RealmSwift

class City: Object {
	
	@objc dynamic var name: String
	var addresses = List<Address>()
	
	init(name: String) {
		self.name = name
	}
	
	required init() {
		name = ""
	}
	
	func add(address: Address) {
		addresses.append(address)
	}
}
