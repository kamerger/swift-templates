//
//  Test2DataSource.swift
//  Templates Example
//
//  Created by Maksim Bazarov on 06/10/2016.
//  Copyright © 2016 Maxim Bazarov. All rights reserved.
//

import NavigationKit

final class Test2TableDataSource: NSObject {
    var data: [TestDomainModel]?
    
	func update(data: [TestDomainModel]?) {
		self.data = data
    }
    
    func item(forIndexPath indexPath: IndexPath) -> TestDomainModel? {
        let row = indexPath.row
        guard let data = data, data.indices.contains(row) else { return nil }
        return data[row]
    }
}

extension Test2TableDataSource: UITableViewDataSource {
    
    
    // MARK: Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // MARK: Rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let item = item(forIndexPath: indexPath),
            let cell = tableView.dequeueReusableCell(withIdentifier: Test2TableViewCell.reuseIdentifier) as? Test2TableViewCell
        else { return UITableViewCell() }
        
        cell.fill(withData: item)
        return cell
    }
}