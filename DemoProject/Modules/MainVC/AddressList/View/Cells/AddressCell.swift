//
//  AddressCell.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//


import UIKit

class AddressCell: UICollectionViewCell {
	
	@IBOutlet weak var containerView: UIView!
	@IBOutlet weak var addressLabel: UILabel!
	
	
	
	override func awakeFromNib() {
		super.awakeFromNib()
		containerView.layer.cornerRadius = Constants.UI.defaultCornerRadius
		
	}
	
	func configureCell(with address: String) {
		addressLabel.text = address
	}
}
