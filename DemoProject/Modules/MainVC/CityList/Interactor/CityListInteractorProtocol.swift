//
//  CityListInteractorProtocol.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

protocol CityListInteractorProtocol: class {
	
	var presenter: CityListInteractorOutputProtocol! { get set }
	
	func loadAllCities()
}
