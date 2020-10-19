//
//  AddressListConfigurator.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

class AddressListConfigurator: AddressListConfiguratorProtocol {
	func configure(view: AddressListViewProtocol) {
		let interactor = AddressListInteractor()
		let presenter = AddressListPresenter(view: view)
		let router = AddressListRouter(view: view)
		
		view.presenter = presenter
		presenter.router = router
		presenter.interactor = interactor
		interactor.presenter = presenter
	}
}
