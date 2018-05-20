//
//  ConfigurationTableViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/4/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class ConfigurationTableViewController: UITableViewController {
  @IBOutlet weak var openMenuBarButton: UIBarButtonItem!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  @IBAction func openMenuBarButtonPressed(_ sender: UIBarButtonItem) {
    // TODO: Implement logic
    print("openMenuBarButtonPressed")
    self.dismiss(animated: true)
  }
  
}

// MARK: - ViewSetupable protocol
extension ConfigurationTableViewController: ViewSetupable {
  
  func setup() {
//    if self.revealViewController() != nil {
//      Open.target = self.revealViewController()
//      Open.action = Selector("revealToggle:")
//
//      self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//
//      // Uncomment the following line to preserve selection between presentations
//      // self.clearsSelectionOnViewWillAppear = false
//
//      // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//      // self.navigationItem.rightBarButtonItem = self.editButtonItem
//    }
  }
  
}


// MARK: - UITableViewDataSource protocol
extension ConfigurationTableViewController {
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 0
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return 0
  }
  
  
  /*
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
   
   // Configure the cell...
   
   return cell
   }
   */
  
}


// MARK: - UITableViewDelegate protocol
extension ConfigurationTableViewController {
  
  /*
   // Override to support conditional editing of the table view.
   override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
   // Return false if you do not want the specified item to be editable.
   return true
   }
   */
  
  /*
   // Override to support editing the table view.
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
   if editingStyle == .delete {
   // Delete the row from the data source
   tableView.deleteRows(at: [indexPath], with: .fade)
   } else if editingStyle == .insert {
   // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
   }
   }
   */
  
  /*
   // Override to support rearranging the table view.
   override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
   
   }
   */
  
  /*
   // Override to support conditional rearranging of the table view.
   override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
   // Return false if you do not want the item to be re-orderable.
   return true
   }
   */
  
}
