//
//  MainHeaderView.swift
//  XiaChuFang
//
//  Created by 罗金 on 16/3/16.
//  Copyright © 2016年 EasyFlower. All rights reserved.
//

import UIKit

protocol MainHeaderViewDelegate: class {
    func mainHeaderViewTopBtnClick(sender: UIButton)
}

class MainHeaderView: UIView {
    
    var leftBtn    : UIImageView!
    var rightBtn   : UIImageView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initBaseLayout()
    }
    
    func initBaseLayout() {
        leftBtn = UIImageView.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width/2, 150))
        leftBtn.userInteractionEnabled = true
        leftBtn.backgroundColor = UIColor.cyanColor()
        let leftTitle = UILabel.init(frame: CGRectMake(15, leftBtn.frame.size.height-30, leftBtn.frame.size.width-25, 15))
        leftBtn.addSubview(leftTitle)
        
        self.addSubview(leftBtn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpUI() {
        
//        leftBtn.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width/2, 120)
        
//        let rightBtn: UIButton?
        
    }
    
}
