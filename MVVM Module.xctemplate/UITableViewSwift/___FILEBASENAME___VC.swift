//___FILEHEADER___

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: BaseViewController<___VARIABLE_productName:identifier___VM> {
  
  // MARK: - Storyboard
  override class var pageStoryBoard: AppStoryboard { .Main }
  
  // MARK: -  Outlets
  @IBOutlet weak var tableView: UITableView!
  
  
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setupView()
    
    setupTableView()
    
    setupData()
  }
  
  // MARK: - ViewModel Binding
  override func bindToViewModel() {
    super.bindToViewModel()
    
    viewModel.reloadTableView = { [weak self] in
      self?.tableView.reloadData()
    }
  }
  
  
  // MARK: - Action Methods
  
  
  // MARK: - Custom Methods
  private func setupView() {
    
  }
  
  private func setupData() {
    
  }
  
  private func setupTableView() {
    let cellNib = UINib(nibName: ___VARIABLE_productName:identifier___TableViewCell.cellNibName, bundle: nil)
    tableView.register(cellNib, forCellReuseIdentifier: ___VARIABLE_productName:identifier___TableViewCell.cellIdentifier)
    tableView.delegate    = self
    tableView.dataSource  = self
  }
}


// MARK: - TableView Datasource
extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.model.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: ___VARIABLE_productName:identifier___TableViewCell.cellIdentifier) as? ___VARIABLE_productName:identifier___TableViewCell
    else {
      return UITableViewCell()
    }
    
    let model = viewModel.model[indexPath.row]
    cell.configure(with: model)
    return cell
  }
}


// MARK: - TableView Delegate
extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let model = viewModel.model[indexPath.row]
  }
}
