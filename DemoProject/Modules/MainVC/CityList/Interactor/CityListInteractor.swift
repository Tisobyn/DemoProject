//
//  CityListInteractor.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

class CityListInteractor: CityListInteractorProtocol {
	
	private let service: CityServiceProtocol
	
	weak var presenter: CityListInteractorOutputProtocol!
	
	init(service: CityServiceProtocol = CityService()) {
		self.service = service
	}
	
	func loadAllCities() {
		let cities = service.loadAllCities()
		presenter.didLoad(cities: cities)
	}
}
