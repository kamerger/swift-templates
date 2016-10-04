//
//  TestInterface.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 04/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//


// MARK: - Module interface

//MARK: Input

protocol TestModuleInput: class
{
	func setupDelegate(output: TestModuleOutput)
}


//MARK: Output

protocol TestModuleOutput: class
{
  
}

