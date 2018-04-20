//
//  budgetViewController.swift
//  BudgetApp
//
//  Created by Karim YAOITCHA on 4/4/18.
//  Copyright © 2018 PHP AFRIQUE. All rights reserved.
//

import UIKit

class budgetViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let budgets = ["Budget 1", "Budget du mois d'Avril", "Budget du mois de Mai", "Budget du mois de Juin",  "Budget du mois de Juillet",  "Budget du mois de Septembre", "Budget 2"]
    
    let periods = ["du 19/03/2018 au 29/03/2018", "du 01/04/2018 au 30/04/2018", "du 01/05/2018 au 31/05/2018", "du 01/06/2018 au 30/06/2018", "du 01/07/2018 au 30/07/2018", "du 01/09/2018 au 30/09/2018", "du 01/02/2019 au 30/02/2019"]
    
    let amounts = ["87.000 XOF", "120.000 XOF", "112.500 XOF", "144.700 XOF", "120.000 XOF", "167.000 XOF", "92.000 XOF" ]
    
    
    @IBOutlet weak var Open: UIBarButtonItem!
    @IBOutlet weak var budgetTableView: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! budgetTableViewCell
        
        cell.titleLabel.text = budgets[indexPath.row]
        cell.dateLabel.text = periods[indexPath.row]
        cell.amountLabel.text = amounts[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return budgets.count
        
    }
    override func viewDidLoad() {
        self.budgetTableView.register(UINib(nibName: "budgetTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    
    
        super.viewDidLoad()
        
        budgetTableView.dataSource = self
        budgetTableView.delegate = self
        
        if self.revealViewController() != nil {
            Open.target = self.revealViewController()
            Open.action = Selector("revealToggle:")
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // Do any additional setup after loading the view.
    }

     func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
