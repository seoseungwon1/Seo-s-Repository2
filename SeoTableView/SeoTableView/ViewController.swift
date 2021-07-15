//
//  ViewController.swift
//  SeoTableView
//
//  Created by seo seung won on 2021/07/15.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let champions:[Champion] = [
        Champion(championName: "가렌", championFace: "가렌얼굴", championPosition: "탑"),
        Champion(championName: "다리우스", championFace: "다리얼굴", championPosition: "탑"),
        Champion(championName: "사일러스", championFace: "사일얼굴", championPosition: "탑, 미드"),
        Champion(championName: "피오라", championFace: "피오라얼굴", championPosition: "탑"),
        Champion(championName: "티모", championFace: "^오^", championPosition: "탑"),
        Champion(championName: "요네", championFace: "요네얼굴", championPosition: "미드"),
        Champion(championName: "야스오", championFace: "야스오얼굴", championPosition: "미드"),
        Champion(championName: "아지르", championFace: "아지르얼굴", championPosition: "미드")
    ]

    func tableView(_ tableVIew: UITableView, numberOfRowsInSection section: Int) -> Int {
        return champions.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "championCell", for: indexPath)
        
        cell.textLabel?.text = champions[indexPath.row].championName
        cell.detailTextLabel?.text = champions[indexPath.row].championPosition
        cell.imageView?.image = UIImage(named: champions[indexPath.row].championFace)
        
        return cell
    }

}
