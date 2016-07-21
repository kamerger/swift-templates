//
//  ViperRouter.swift
//  Created by Maksim Bazarov on 24.04.16.
//

import UIKit

//
// MARK: - VIPER Router Interface
protocol VIPERRouterInterface
{
    weak var window : UIWindow? {get set}
    weak var navigationController : UINavigationController? {get set}

    /**
     Present as child of parent view controller
     
     - parameter vc: View controller for presenting
     - parameter parent: Parent view controller for presenting from
     */
    func presentChild(vc: UIViewController, from parent: UIViewController)
    
    
    /**
     Present as modal from parent view controller
     
     - parameter vc: View controller for presenting
     - parameter parent: Parent view controller for presenting from
     */
    func presentModal(vc: UIViewController, from parent: UIViewController)

    
    /**
     Present as *window* root view controller
     
     - parameter vc: View controller for presenting
     - parameter window: Window for presenting from
     */
    func present(vc: UIViewController, using window:UIWindow)
    
    
    /**
     Present in navigation controller
     
     - parameter vc: View controller for presenting
     - parameter nc: Navigation controller for pushing
     */
    func present(vc: UIViewController, using nc: UINavigationController)
    
    func popCurrentScreen()
    func popToRoot()

}

//
// MARK: - VIPER Router
class VIPERRouter:  VIPERRouterInterface
{
    weak var window : UIWindow?
    weak var navigationController : UINavigationController?

    func presentChild(vc: UIViewController, from parent: UIViewController)
    {
        parent.addChildViewController(vc)
        vc.view.frame = parent.view.bounds
        parent.view.addSubview(vc.view)
        vc.didMoveToParentViewController(parent)
    }

    func presentModal(vc: UIViewController, from parent: UIViewController)
    {
        parent.presentViewController(vc, animated: true, completion: { })
    }

    func present(vc: UIViewController, using window:UIWindow)
    {
        let nc = UINavigationController(rootViewController: vc)
        nc.navigationBarHidden = true
        window.rootViewController = nc
        window.makeKeyAndVisible()
        navigationController = nc
        
        self.window = window
    }

    func present(vc: UIViewController, using nc: UINavigationController)
    {
        if nc.topViewController != vc {
            navigationController = nc
            nc.pushViewController(vc, animated: true)
        }
    }

    func popCurrentScreen()
    {
        if let nc = navigationController {
            nc.popViewControllerAnimated(true)
        }
    }
    
    func popToRoot()
    {
        if let nc = navigationController {
            nc.popToRootViewControllerAnimated(true)
        }
    }
}


//
// MARK: - Routable protocol

protocol Routable
{
    associatedtype RouterType
    
    var router: RouterType! {get set}
    
    func presentChild(from parent: UIViewController)
    func presentModal(from parent: UIViewController)
    func present(fromWindow window:UIWindow)
    func present(inNavigation nc: UINavigationController)
    
    func showError(error: String)
}

extension Routable where RouterType : VIPERRouterInterface, Self: UIViewController
{
    
    func presentChild(from parent: UIViewController)
    {
        router.presentChild(self, from: parent)
    }
    
    func presentModal(from parent: UIViewController)
    {
        router.presentModal(self, from: parent)
    }
    
    func present(fromWindow window:UIWindow)
    {
        router.present(self, using: window)
    }
    
    func present(inNavigation nc: UINavigationController)
    {
        router.present(self, using: nc)
    }
}

