import Foundation
import UIKit

extension MyTableViewController {
    
        override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
            return true
        }
        
        override func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
            
            if sourceIndexPath.section != proposedDestinationIndexPath.section
            {
                return sourceIndexPath
            }
            
            return proposedDestinationIndexPath
        }
        
        override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
            
            let element = filteredArr[sourceIndexPath.row]
            filteredArr.remove(at: sourceIndexPath.row)
            filteredArr.insert(element, at: destinationIndexPath.row)
        }
}
