import Foundation
import UIKit

extension MyTableViewController {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if(!searchBar.text!.isEmpty) {
            filteredArr = filterByTitle(itens: MyData.propertiesArr, searchedText: searchText)
        }
        else  {
            filteredArr = MyData.propertiesArr
        }
        self.tableView.reloadData()
    }
}
