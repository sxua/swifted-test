//
//  ViewController.swift
//  test
//
//  Created by Oleksandr Skrypnyk on 6/3/14.
//  Copyright (c) 2014 Oleksandr Skrypnyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  let cellIdentifier = "PlainCellIdentifier"

  var elements = Dictionary<String, String>()

  @IBOutlet var tableView : UITableView
                            
  override func viewDidLoad() {
    super.viewDidLoad()

    for i in 1..10 {
      elements["Row \(i)"] = "Value \(i)"
    }

    tableView.reloadData()
  }

  func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
    return elements.count
  }

  func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!  {
    var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
    cell.textLabel.text = Array(elements.keys)[indexPath.row]
    cell.detailTextLabel.text = Array(elements.values)[indexPath.row]
    return cell
  }
}

