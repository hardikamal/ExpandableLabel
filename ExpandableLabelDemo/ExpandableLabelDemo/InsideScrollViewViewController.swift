//
//  InsideScrollViewViewController.swift
//  ExpandableLabelDemo
//
//  Created by Don Mag on 9/29/17.
//  Copyright © 2017 Mathias Koehnke. All rights reserved.
//

import UIKit

class InsideScrollViewViewController: UIViewController, ExpandableLabelDelegate {

	@IBOutlet weak var expandableLabel: ExpandableLabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		expandableLabel.delegate = self
		
		let linkAttributes = [NSForegroundColorAttributeName:UIColor.red]
		
		expandableLabel.collapsedAttributedLink = NSMutableAttributedString(string: " Read More", attributes: linkAttributes)
		expandableLabel.expandedAttributedLink = NSMutableAttributedString(string: " Read Less", attributes: linkAttributes)
		
		expandableLabel.shouldCollapse = true
		expandableLabel.textReplacementType = .word
		expandableLabel.numberOfLines = 3
		expandableLabel.collapsed = true
		expandableLabel.text = "This is some sample text to demonstrate using apploft's \"ExpandableLabel\" inside a UIScrollView. Using constraints, this label defines the .contentSize of the containing scroll view. There is enough text in this label to extend its height - when expanded - beyond the bounds of the scroll view, thus requiring / enabling scrolling when expanded, but not when collapsed."
		
	}

	//
	// MARK: ExpandableLabel Delegate
	//

	func willExpandLabel(_ label: ExpandableLabel) {
		
	}
	
	func didExpandLabel(_ label: ExpandableLabel) {

	}
	
	func willCollapseLabel(_ label: ExpandableLabel) {
		
	}
	
	func didCollapseLabel(_ label: ExpandableLabel) {

	}
	
}
