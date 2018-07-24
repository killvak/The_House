//
//  EventDetailsVC.swift
//  The_House
//
//  Created by admin on 7/15/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import UIKit
import BubblePictures

class EventDetailsVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var networkingImgV: UIImageView!
    @IBOutlet weak var speakersCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupBubbleCollectionV()
        
        self.networkingImgV.image = UIImage(named: "net4" )!.withRenderingMode(.alwaysTemplate)
        self.networkingImgV.tintColor = Constant.mainColor
        speakersCollectionView.delegate = self
        speakersCollectionView.dataSource = self 
        let nib = UINib(nibName: "SpeakerCell", bundle: nil)
        speakersCollectionView.register(nib, forCellWithReuseIdentifier: "SpeakerCell")
    }
    
    func setupBubbleCollectionV() {
        let configFiles = getConfigFiles()
        let layoutConfigurator = BPLayoutConfigurator(
            backgroundColorForTruncatedBubble: UIColor.gray,
            fontForBubbleTitles: UIFont(name: "HelveticaNeue-Light", size: 16.0)!,
            colorForBubbleBorders: UIColor.gray,
            colorForBubbleTitles: UIColor.white,
            maxCharactersForBubbleTitles: 0,
            maxNumberOfBubbles: 4,
            direction: .leftToRight,
            alignment: .left)
        
        bubblePictures = BubblePictures(collectionView: collectionView, configFiles: configFiles, layoutConfigurator: layoutConfigurator)
        bubblePictures.delegate = self
        
        
        
    }
    private var bubblePictures: BubblePictures!
    
    func getConfigFiles() -> [BPCellConfigFile] {
        return [
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d0")!),
                title: ""),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d1")!),
                title: ""),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d2")!),
                title: ""),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d3")!),
                title: ""),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d4")!),
                title: ""),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d2")!),
                title: "Pocho Copernico zapallo colorin"),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d2")!),
                title: "Lorena"),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d2")!),
                title: "Lorena Rodriguez"),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d2")!),
                title: ""),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d2")!),
                title: "Jaime Lanisky Patricio"),
            BPCellConfigFile(
                imageType: BPImageType.image(UIImage(named: "d2")!),
                title: "Pocho Copernico zapallo colorin"),
            BPCellConfigFile(
                imageType: BPImageType.URL(URL(string: "https://scontent.xx.fbcdn.net/v/t1.0-9/1069929_10200705658781699_1722535463_n.jpg?oh=91653a35620fd278ce2b7a7d026cdf2e&oe=5921B22D")!),
                title: "Pocho Copernico zapallo colorin")
        ]
    }
}

extension EventDetailsVC: BPDelegate {
    func didSelectTruncatedBubble() {
        print("Selected truncated bubble")
    }
    
    func didSelectBubble(at index: Int) {
        print(index)
    }
}


extension EventDetailsVC : UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpeakerCell", for: indexPath) as! SpeakerCell
         return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 115, height: 154)
    }
    
    
}
