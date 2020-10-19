//
//  UIView+Extension.swift
//  DemoProject
//
//  Created by Yermek Sabyrzhan on 16.10.2020.
//

import UIKit

extension UIView {
	
	func addShadow(offset: CGSize, color: UIColor, radius: CGFloat, opacity: Float) {
		
		layer.masksToBounds = false
		layer.shadowOffset = offset
		layer.shadowColor = color.cgColor
		layer.shadowRadius = radius
		layer.shadowOpacity = opacity

//		layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
//		layer.shouldRasterize = true
//		layer.rasterizationScale = UIScreen.main.scale
		
		let backgroundCGColor = backgroundColor?.cgColor
		backgroundColor = nil
		layer.backgroundColor =  backgroundCGColor
	}
	
}
