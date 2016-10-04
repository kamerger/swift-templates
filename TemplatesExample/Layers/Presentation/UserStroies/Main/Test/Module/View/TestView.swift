//
//  TestView.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 04/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//

import NavigationKit

// MARK: - Interface
protocol TestViewInput: class {
    
    func update(withData data: String)
    func update(withError error: NSError )
}

protocol TestViewOutput: class {
    func moduleDidLoad()
}

// MARK: - View Controller

final class TestViewController: NKViewController {
    
    var output: TestViewOutput!
    
    // MARK: - Life cycle
    func configure() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.moduleDidLoad()
    }
    
    // MARK: View Input
}


// MARK: - View Input
extension TestViewController: TestViewInput {
    
    func update(withData data: <#DataDomainModel#>)
    {
        
    }
    
    func update(withError error: <#ErrorModel#> ) {
        
    }
}
