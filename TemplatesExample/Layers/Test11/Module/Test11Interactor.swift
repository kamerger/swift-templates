//
//  Test11Interactor.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 17/11/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//


// MARK: - Interface
protocol Test11InteractorInput: class {
	
}

//MARK: Output
protocol Test11InteractorOutput: class {
	
}

// MARK: - Interactor
final class Test11Interactor: Test11InteractorInput {
	
	weak var output: Test11InteractorOutput!
}

