//
//  Test2Interactor.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 06/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//


// MARK: - Interface
protocol Test2InteractorInput: class {
	
}

//MARK: Output
protocol Test2InteractorOutput: class {
	
}

// MARK: - Interactor
final class Test2Interactor: Test2InteractorInput {
	
	weak var output: Test2InteractorOutput!
}

