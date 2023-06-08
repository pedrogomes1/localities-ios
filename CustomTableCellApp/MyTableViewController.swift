//
//  MyTableViewController.swift
//  CustomTableCellApp
//
//  Created by Pedro Henrique on 07/06/23.
//

import UIKit

class MyTableViewController: UITableViewController, UISearchBarDelegate {

    
    @IBOutlet weak var mySearchbar: UISearchBar!
    
    var filteredArr = [Property]()
    var myRefreshControl: UIRefreshControl!
    
    func filterByTitle(itens: [Property], searchedText: String) -> [Property] {
        
        if (!searchedText.isEmpty) {
            return itens.filter { (item: Property) -> Bool in
                return item.title.contains(searchedText)
            }
        } else {
            return MyData.propertiesArr
        }
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // To work, need added NavigationController and link to tablevViewController -> Relationship Segue (root view controller)
        // and NavigationController with is initial controller
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        mySearchbar.delegate = self
        DummyPopulate.populate()
        
        filteredArr = filterByTitle(itens: MyData.propertiesArr, searchedText: "")
        
        myRefreshControl = UIRefreshControl()
        myRefreshControl.addTarget(self, action: #selector(refreshFunc), for: UIControl.Event.valueChanged)
        
        self.tableView.addSubview(myRefreshControl)
        
        
    }
    
    @objc func refreshFunc() {
        filteredArr.append(Property(title: "Street house in New York", description: "This is a beatiful house", bedrooms: 2, bathrooms: 2))
        self.tableView.reloadData()
        myRefreshControl.endRefreshing()
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredArr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! PropertyTableViewCell

        let thisProperty = filteredArr[indexPath.row]
        
        cell.topLabel.text = thisProperty.title
        cell.descriptionTextView.text = thisProperty.description
        cell.bedroomLabel.text = "\(thisProperty.bedrooms!) bedrooms"
        cell.bathroomLabel.text = "\(thisProperty.bathrooms!) bathrooms"

        return cell
    }

}
