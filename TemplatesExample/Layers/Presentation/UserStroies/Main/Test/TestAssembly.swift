//
//  TestAssembly.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 04/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//

import NavigationKit

final class TestAssembly
{


	class func createModule(configure: (_ module: TestModuleInput) -> Void) -> NKViewController {
	
        let storyboard = UIStoryboard(name: "main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
	
        view.configure()

		let interactor = TestInteractor()
		let controller = TestController()
		let router = TestRouter()

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

