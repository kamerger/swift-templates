//
//  Test11Controller.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 17/11/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//


// MARK: - Controller
final class Test11Controller: Test11ModuleInput {

	var interactor: Test11InteractorInput!
	var router: Test11RouterInput!
	weak var view: Test11ViewInput!
	weak var output: Test11ModuleOutput?

	// MARK: - Module Input
	func setupDelegate(output: Test11ModuleOutput) {
		self.output = output
	}
}

// MARK: - Interactor Output
extension Test11Controller: Test11InteractorOutput {
	
}

// MARK: - View Output
extension Test11Controller: Test11ViewOutput {
	
	func moduleDidLoad() {
		//
	}
}
