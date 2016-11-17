//
//  Test11View.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 17/11/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//

import UIKit


// MARK: - Interface
protocol Test11ViewInput: class {
}

protocol Test11ViewOutput: class {
    func moduleDidLoad()
}


// MARK: - View Controller
final class Test11ViewController: UIViewController {
    
    var output: Test11ViewOutput!    
    
    // MARK: - Life cycle
    func configure() {
        /* basic view configuration */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.moduleDidLoad()
    }
}


// MARK: - View Input 
extension Test11ViewController: Test11ViewInput {
}
