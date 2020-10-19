//
//  CityListPresenterProtocol.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

protocol CityListPresenterProtocol: class {
	
	var router: CityListRouterProtocol! { set get }
	var interactor: CityListInteractorProtocol! { set get }
	
	func loadCities()
	func didSelect(item: CityListView.ItemType)
	
}
