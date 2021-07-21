//
//  MainTableViewController.swift
//  SeoTableView2
//
//  Created by seo seung won on 2021/07/19.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let modelCD = ChampionDetailModel()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return modelCD.championList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
        let info = modelCD.championList[IndexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "championCell1")!
        
        cell.textLabel?.text = info.championName
        cell.detailTextLabel?.text = info.championPosition
        cell.imageView?.image = UIImage(named: info.championFace)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vcDest = segue.destination as! DetailTableViewController
        let cellSelected = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cellSelected)!
        let info = modelCD.championList[indexPath.row]
        
        vcDest.champions = info
    }
    
}
