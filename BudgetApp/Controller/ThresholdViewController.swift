//
//  ThresholdViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/4/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class ThresholdViewController: UIViewController {
  @IBOutlet var openBarButtonItem: UIBarButtonItem!
  @IBOutlet var segmentedControl: UISegmentedControl!
  @IBOutlet var seuilsTableView: UITableView!
  
  private var threshold: Threshold?
  
  private var items = [String]()
  private var selectedSegment: Int = 0 {
    didSet {
      let itemsForCategories = ["Alimentation", "Transport", "Communication", "Divertissement", "Imprévus"]
      let itemsForPeriod = ["Journalier", "Hebdomadaire", "Mensuel", "Annuel"]
      items = (selectedSegment == 0 ? itemsForPeriod : itemsForCategories)
      seuilsTableView.reloadData()
    }
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if self.revealViewController() != nil {
      openBarButtonItem.target = self.revealViewController()
      openBarButtonItem.action = Selector("revealToggle:")
      
      self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
      // Do any additional setup after loading the view.
    }
    
  }
}


// MARK: - Setup
extension ThresholdViewController: ViewSetupable {
  
  func setup() {
    seuilsTableView.delegate = self
    seuilsTableView.dataSource = self
    selectedSegment = segmentedControl.selectedSegmentIndex
  }
  
}


// MARK: - UITableViewDataSource protocol
extension ThresholdViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
    return items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cellIdentifier = "Cell"
    let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
    
    let row = indexPath.row
    cell.textLabel?.text = items[row]
    return cell
  }
  
}


// MARK: - UITableViewDelegate protocol
extension ThresholdViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let row = indexPath.row
    print(items[row])
  }
}


// MARK: - Actions
private extension ThresholdViewController {
  
  @IBAction func switchView(_ sender: UISegmentedControl) {
    selectedSegment = sender.selectedSegmentIndex
  }
  
}
