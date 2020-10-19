//
//  CityService.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

import RealmSwift

class CityService: CityServiceProtocol {
	
	private let realm: Realm
	private var isFirstLaunch: Bool {
		get {
			let key = Constants.Common.isFirstLaunch
			if let firstLaunch = UserDefaults.standard.value(forKey: key) as? Bool {
				return firstLaunch
			}
			UserDefaults.standard.set(false, forKey: key)
			return true
		}
	}
	private lazy var addressGenerator = AddressGenerator()
	private var cities = [City]()
	
	init() {
		self.realm = try! Realm()
		if isFirstLaunch {
			let cities = addressGenerator.genarateCities(cityCount: 5, addressesPerCityCount: 20)
			try! realm.write {
				cities.forEach { realm.add($0) }
				self.cities = cities
			}
		}
		
	}
	
	func loadAllCities() -> [City] {
		let items = realm.objects(City.self)
		self.cities = items.sorted { _,_ in true }
		return cities
	}
}
