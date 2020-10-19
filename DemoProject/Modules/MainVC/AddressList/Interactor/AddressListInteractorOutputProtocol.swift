//
//  AddressListInteractorOutputProtocol.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

protocol AddressListInteractorOutputProtocol: class {
	func didSaveAddress(with result: Result<Void, PersistenceError>)
}

enum PersistenceError: Error {
	case notValid
	
	var localizedDescription: String {
		switch self {
		case .notValid:
			return "Ошибка"
		}
	}
	
}
