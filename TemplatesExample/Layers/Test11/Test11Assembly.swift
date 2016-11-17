//
//  Test11Assembly.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 17/11/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//
import UIKit

final class Test11Assembly
{
	class func createModule(configure: (_ module: Test11ModuleInput) -> Void) -> UIViewController {
	
		let view = Test11ViewController(nibName: "Test11ViewController", bundle: nil)
	
        view.configure()

		let interactor = Test11Interactor()
		let controller = Test11Controller()
		let router = Test11Router()

		interactor.output = controller

		controller.view = view
		controller.interactor = interactor
		controller.router = router

		configure(controller)

		view.output = controller

		router.view = view

		return view
	}
  
}

