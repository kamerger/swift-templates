//
//  Test2Controller.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 06/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//


// MARK: - Controller
final class Test2Controller: Test2ModuleInput {

	var interactor: Test2InteractorInput!
	var router: Test2RouterInput!
	weak var view: Test2ViewInput!
	weak var output: Test2ModuleOutput?

	// MARK: - Module Input
	func setupDelegate(output: Test2ModuleOutput) {
		self.output = output
	}
}

// MARK: - Interactor Output
extension Test2Controller: Test2InteractorOutput {
	
}

// MARK: - View Output
extension Test2Controller: Test2ViewOutput {
	
	func moduleDidLoad() {
		//
	}
}
