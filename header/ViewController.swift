//
//  ViewController.swift
//  header
//
//  Created by Student P_04 on 04/12/19.
//  Copyright © 2019 Felix ITs. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var flowers = ["Rose","Zeniya","Lili","Orchid","carnation","Fressia","Hyacinth"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let headerView = UIView()
        headerView.backgroundColor = UIColor.cyan
        headerView.frame = CGRect(x: 0, y: 0, width:view.frame.width, height: 50)
        let footerView = UIView()
        footerView.backgroundColor = UIColor.blue
        footerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 30)
        tableView.tableHeaderView = headerView
        tableView.tableFooterView = footerView

        
        
      tableView.delegate = self
       tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flowers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            if cell == nil{
                cell=UITableViewCell(style:.default, reuseIdentifier: "cell");
            }
            cell!.textLabel?.text = self.flowers[indexPath.row]
        return cell!
        }
    }





