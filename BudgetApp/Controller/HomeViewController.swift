//
//  HomeViewController.swift
//  BudgetApp
//
//  Created by Pawel Milek on 22/05/2018.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  typealias MenuItems = [MenuItem]
  
  @IBOutlet weak var userIdLabel: UILabel!
  @IBOutlet weak var menuItemsTableView: UITableView!
  
  private var menuItems: MenuItems?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
}


// MARK: - ViewSetupable protocol
extension HomeViewController: ViewSetupable {
  
  func setup() {
    setTableviewDelegate()
    LoadMenuItems()
  }
  
}


// MARK: - Private - Set tableview delegate
private extension HomeViewController {
  
  func setTableviewDelegate() {
    menuItemsTableView.dataSource = self
    menuItemsTableView.delegate = self
  }
  
}


// MARK: - Private - Load menu items
private extension HomeViewController {
  
  func LoadMenuItems() {
    if let plistData = try? PlistFileLoader.loadFile(with: "HomeMenuItems") {
      PlistFileLoader.decode(data: plistData, for: MenuItems.self, decodeCompletion: { result in
        menuItems = []
        
        switch result {
        case .success(let items):
          menuItems = items
          menuItems?.forEach {
            print($0)
          }
          
        case .failure(let error):
          print(error)
        }
      })
    }
  }
  
}


// MARK: - Prepare for segue
extension HomeViewController {
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // TODO: Implement
  }
  
}


// MARK: - TableViewDataSource delegate
extension HomeViewController: UITableViewDataSource {

  func numberOfSections(in tableView: UITableView) -> Int {
    return HomeSectionType.numberOfSections.count
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let numberOfMenuItems = (menuItems?.count ?? 0)
    return section == HomeSectionType.userId.rawValue ? section : numberOfMenuItems
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
    return cell
  }
  
}


// MARK: - TableViewDelegate delegate
extension HomeViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // TODO: Initial Storyboards
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80
  }
  
}
