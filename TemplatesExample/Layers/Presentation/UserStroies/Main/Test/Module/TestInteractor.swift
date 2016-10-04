//
//  TestInteractor.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 04/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//

// MARK: - Interface
protocol TestInteractorInput: class
{
  
}

//MARK: Output
protocol TestInteractorOutput: class
{
  
}

// MARK: - Interactor
final class TestInteractor: TestInteractorInput
{
	weak var output: TestInteractorOutput!
}

