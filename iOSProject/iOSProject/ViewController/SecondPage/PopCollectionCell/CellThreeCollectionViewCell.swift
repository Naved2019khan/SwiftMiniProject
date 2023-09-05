//
//  CellThreeCollectionViewCell.swift
//  iOSProject
//
//  Created by Naved  on 05/09/23.
//

import UIKit

class CellThreeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var smallViewOne: UIView!
    @IBOutlet weak var smallViewTwo: UIView!
    @IBOutlet weak var smallViewThree: UIView!
    @IBOutlet weak var roundLastView: UIView!
    @IBOutlet weak var roundMiddleView: UIView!
    @IBOutlet weak var roundView: UIView!
    var buttonRadius = CGFloat()
    override func awakeFromNib() {
        super.awakeFromNib()
        initialSetup()
        DispatchQueue.main.async {
            [self] in
            roundViewLayout()
        }
    }
    
    func initialSetup(){
        
        cornerRadius(viewInput: viewOne, radius: 3)
        cornerRadius(viewInput: viewTwo, radius: 3)
        cornerRadius(viewInput: smallViewOne, radius: 3)
        cornerRadius(viewInput: smallViewThree, radius: 3)
        cornerRadius(viewInput: smallViewTwo, radius: 3)
    }
    
    func roundViewLayout(){
        buttonRadius = roundView.frame.height / 2
        cornerRadius(viewInput: roundView, radius: buttonRadius)
        cornerRadius(viewInput: roundMiddleView, radius: buttonRadius)
        cornerRadius(viewInput: roundLastView, radius: buttonRadius)
    }
    
    func cornerRadius(viewInput : UIView,radius : CGFloat)
    {
        viewInput.layer.cornerRadius = radius
    }
    
}

