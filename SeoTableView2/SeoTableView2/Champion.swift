//
//  Champion.swift
//  SeoTableView2
//
//  Created by seo seung won on 2021/07/19.
//

import Foundation

struct Champion {
    let championName: String
    let championFace: String
    var championTier: Int
    var championPosition: String
    let championSubName: String = ""
    let championSelectedWord: String = ""
    let championPicture: String = ""
}

class ChampionDetailModel {
    var championList: [Champion]
    
    init() {
        championList = []
        
        championList.append(Champion(championName: "가렌", championFace: "가렌얼굴", championTier: 5, championPosition: "탑"))
        championList.append(Champion(championName: "다리우스", championFace: "다리얼굴", championTier: 1, championPosition: "탑"))
        championList.append(Champion(championName: "피오라", championFace: "피오라얼굴", championTier: 1, championPosition: "탑"))
        championList.append(Champion(championName: "티모", championFace: "^오^", championTier: 1, championPosition: "탑"))
        championList.append(Champion(championName: "그레이브즈", championFace: "그브얼굴", championTier: 3, championPosition: "정글"))
        championList.append(Champion(championName: "카직스", championFace: "카직스얼굴", championTier: 2, championPosition: "정글"))
        championList.append(Champion(championName: "요네", championFace: "요네얼굴", championTier: 2, championPosition: "미드"))
        championList.append(Champion(championName: "사일러스", championFace: "사일얼굴", championTier: 1, championPosition: "미드"))
        championList.append(Champion(championName: "야스오", championFace: "야스오얼굴", championTier: 1, championPosition: "미드"))
        championList.append(Champion(championName: "제드", championFace: "제드얼굴", championTier: 1, championPosition: "미드"))
        championList.append(Champion(championName: "아지르", championFace: "아지르얼굴", championTier: 1, championPosition: "미드"))
        championList.append(Champion(championName: "카이사", championFace: "카이사얼굴", championTier: 1, championPosition: "원딜"))
        championList.append(Champion(championName: "노틸러스", championFace: "노틸얼굴", championTier: 2, championPosition: "서포터"))
        championList.append(Champion(championName: "레오나", championFace: "레오나얼굴", championTier: 1, championPosition: "서포터"))
    }
    
    
}
