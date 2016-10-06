//
//  Test2Assembly.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 06/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//
import NavigationKit

final class Test2Assembly
{
	class func createModule(usingDI diContainer: DIContainer, configure: (_ module: Test2ModuleInput) -> Void) -> NKTableViewController {
	
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "Test2ViewController") as! Test2ViewController
	
        view.configure()

		let interactor = Test2Interactor()
		let controller = Test2Controller()
		let router = Test2Router()

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

