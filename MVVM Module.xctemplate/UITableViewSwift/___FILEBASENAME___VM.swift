//___FILEHEADER___

import Foundation

final class ___VARIABLE_productName:identifier___VM: BaseVM {
  
  // MARK: - Variables
  var model: [___VARIABLE_productName:identifier___TableViewCellVM] = [] {
    didSet {
      reloadTableView?()
    }
  }
  
  // MARK: - Boxes & Closures
  var reloadTableView: (() -> Void)?
  
  // MARK: - Private Functions
  
  // MARK: - Public Fuction
  
}
