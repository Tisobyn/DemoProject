//
//  CityListConfigurator.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

class CityListConfigurator: CityListConfiguratorProtocol {
	
	func configure(with view: CityListView) {
		let presenter = CityListPresenter(view: view)
		let interactor = CityListInteractor()
		let router = CityListRouter(view: view)
		
		view.presenter = presenter
		interactor.presenter = presenter
		presenter.interactor = interactor
		presenter.router = router
	}
}
