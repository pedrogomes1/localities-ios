import Foundation
import UIKit

extension MyTableViewController {
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            filteredArr.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.middle)
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Delete \(filteredArr[indexPath.row].title!)?"
    }
}
