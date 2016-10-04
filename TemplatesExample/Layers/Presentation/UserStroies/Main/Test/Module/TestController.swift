//
//  TestController.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 04/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//

import UIKit

// MARK: - Controller
final class TestController: TestModuleInput, 
	TestViewOutput, 
	TestInteractorOutput
{
	var interactor: TestInteractorInput!
	var router: TestRouterInput!
	weak var view: TestViewInput!
	weak var output: TestModuleOutput?

	// MARK: - Module Input
	func setupDelegate(output: TestModuleOutput) {
		self.output = output
	}


	// MARK: - Interactor Output


	// MARK: - View Output

	func moduleDidLoad() {
		//
	}
}
