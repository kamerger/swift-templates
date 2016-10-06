//
//  Test2View.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 06/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//

import NavigationKit


// MARK: - Interface
protocol Test2ViewInput: class {
    func update(withData data: [TestDomainModel])
    func update(withError error: String)
}

protocol Test2ViewOutput: class {
    func moduleDidLoad()
}


// MARK: - View Controller
final class Test2ViewController: NKTableViewController {
    
    var output: Test2ViewOutput!
	var dataSource = Test2TableDataSource()    
    
    // MARK: - Life cycle
    func configure() {
        /* basic view configuration */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.dataSource = dataSource
        output.moduleDidLoad()
    }
}


// MARK: - View Input 
extension Test2ViewController: Test2ViewInput {
    
    func update(withData data: [TestDomainModel]) { 
		dataSource.update(data: data)
		tableView.reloadData()
		
    }
    
    func update(withError error: String) {
        
    }
}
