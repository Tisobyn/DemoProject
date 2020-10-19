//
//  AddressFormCell.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//
import UIKit

protocol AddressFormCellDelegate: class {
	func didTapSave(city: String?, street: String?, apartment: String?)
}

class AddressFormCell: UICollectionViewCell {

	
	@IBOutlet weak var cView: UIView!
	@IBOutlet weak var cityTextField: UITextField!
	@IBOutlet weak var addressTextField: UITextField!
	@IBOutlet weak var apartmentTextField: UITextField!
	
	
	weak var delegate: AddressFormCellDelegate?
	
	override func awakeFromNib() {
		super.awakeFromNib()
		contentView.layer.cornerRadius = Constants.UI.defaultCornerRadius
		cView.layer.cornerRadius = Constants.UI.defaultCornerRadius
	}
	
	@IBAction func addButtonPressed(_ sender: Any) {
		delegate?.didTapSave(
			city: cityTextField.text,
			street: addressTextField.text,
			apartment: apartmentTextField.text
		)
	}
	
}
