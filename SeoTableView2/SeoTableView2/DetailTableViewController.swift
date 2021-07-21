//
//  DetailTableViewController.swift
//  SeoTableView2
//
//  Created by seo seung won on 2021/07/19.
//

import UIKit

class DetailTableViewController: UIViewController {
    
    var champions: Champion = Champion(championName: "가렌", championFace: "가렌얼굴", championTier: 5, championPosition: "탑")
    
    @IBOutlet weak var championNameLabel: UILabel!
    @IBOutlet weak var championSubNameLabel: UILabel!
    @IBOutlet weak var championImageView: UIImageView!
    @IBOutlet weak var championSelcectedWordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        championNameLabel.text = champions.championName
        championSubNameLabel.text = champions.championPosition
        championImageView.image = UIImage(named: champions.championName)
        championSelcectedWordLabel.text = String(champions.championTier)
    }
}
