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
    
    var leftBtn        : UIImageView!
    var rightBtn       : UIImageView!
    var leftTitle      : UILabel!
    var rightTitle     : UILabel!
    var leftCenterImg  : UIImageView!
    var rightCenterImg : UIImageView!
    var centerTitle    : UILabel!
    
    var BTNBASETAG     : CGFloat = 1234567
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initBaseLayout()
    }
    
    func initBaseLayout() {
        self.topTwoBtnLayout()
        self.centerButtonsAndTipLayout()
        self.bottomScrollLayout()
    }
    
    func bottomScrollLayout() {
        let bottomView = UIImageView.init(frame: CGRectMake(0, 260, SCREENWIDTH, 80))
        bottomView.image = UIImage(imageLiteral: "bottom.jpg")
        self.addSubview(bottomView)
    }
    
    func centerButtonsAndTipLayout() {
        let centerArray = NSMutableArray.init(array:["排行榜", "看视频", "买买买", "菜谱分类"])
        for (index, string) in centerArray.enumerate() {
            print(string)
            print(index)
            let countF = CGFloat(centerArray.count)
            let indexF = CGFloat(index)
            print(indexF)
            
            let centerBtn = UIView.init(frame: CGRectMake(indexF*(SCREENWIDTH/countF), leftBtn.frame.size.height, SCREENWIDTH/countF, 80))
            print(centerBtn)
            
            centerBtn.backgroundColor = UIColor.whiteColor()
            self.addSubview(centerBtn)
            
            let smallImg = UIImageView.init(frame: CGRectMake(SCREENWIDTH/countF/2-10, 20, 20, 20))
            smallImg.backgroundColor = UIColor.redColor()
            centerBtn.addSubview(smallImg)
            
            let titlLab = UILabel.init(frame: CGRectMake(5, CGRectGetMaxY(smallImg.frame)+10, SCREENWIDTH/countF-10, 12))
            titlLab.font = UIFont.systemFontOfSize(11)
            titlLab.textAlignment = NSTextAlignment.Center
            titlLab.textColor = XCFColor(102, g: 102, b: 102)
            titlLab.text = string as? String
            centerBtn.addSubview(titlLab)
            
        }
        
        centerTitle = UILabel.init(frame: CGRectMake(0, leftBtn.frame.size.height+80, SCREENWIDTH, 50))
        centerTitle.backgroundColor = XCFColor(249, g: 241, b: 209)
        centerTitle.textColor = XCFColor(234, g: 150, b: 136)
        centerTitle.font = UIFont.systemFontOfSize(15)
        centerTitle.text = "新用户可领取20元红包"
        centerTitle.textAlignment = NSTextAlignment.Center
        self.addSubview(centerTitle)
        
    }
    
    func topTwoBtnLayout() {
        leftBtn = UIImageView.init(frame: CGRectMake(0, 0, SCREENWIDTH/2-1, 130))
        leftBtn.userInteractionEnabled = true
        leftBtn.backgroundColor = UIColor.cyanColor()
        self.addSubview(leftBtn)
        
        leftCenterImg = UIImageView.init(frame: CGRectMake(leftBtn.frame.size.width/2-10, leftBtn.frame.size.height/2-10, 30, 30))
        leftCenterImg.userInteractionEnabled = true
        leftCenterImg.backgroundColor = UIColor.greenColor()
        leftCenterImg.layer.cornerRadius = 15
        leftCenterImg.layer.masksToBounds = true
        leftBtn.addSubview(leftCenterImg)
        
        leftTitle = UILabel.init(frame: CGRectMake(15, leftBtn.frame.size.height-30, leftBtn.frame.size.width-25, 15))
        leftTitle.font = UIFont.systemFontOfSize(15)
        leftTitle.textColor = UIColor.whiteColor()
        leftTitle.textAlignment = NSTextAlignment.Center
        leftTitle.text = "本周流行菜谱"
        leftBtn.addSubview(leftTitle)
        
        
        rightBtn = UIImageView.init(frame: CGRectMake(leftBtn.frame.size.width+2, 0, leftBtn.frame.size.width, leftBtn.frame.size.height))
        rightBtn.userInteractionEnabled = true
        rightBtn.backgroundColor = UIColor.yellowColor()
        self.addSubview(rightBtn)
        
        rightCenterImg = UIImageView.init(frame: CGRectMake(rightBtn.frame.size.width/2-10, rightBtn.frame.size.height/2-10, 30, 30))
        rightCenterImg.userInteractionEnabled = true
        rightCenterImg.backgroundColor = UIColor.orangeColor()
        rightCenterImg.layer.cornerRadius = 15
        rightCenterImg.layer.masksToBounds = true
        rightBtn.addSubview(rightCenterImg)
        
        rightTitle = UILabel.init(frame: CGRectMake(15, leftTitle.frame.origin.y, leftBtn.frame.size.width-25, 15))
        rightTitle.font = UIFont.systemFontOfSize(15)
        rightTitle.textColor = UIColor.whiteColor()
        rightTitle.textAlignment = NSTextAlignment.Center
        rightTitle.text = "看看大家的作品"
        rightBtn.addSubview(rightTitle)
        
        
        let leftTap = UITapGestureRecognizer(target: self, action: "leftTapAction")
        leftCenterImg.addGestureRecognizer(leftTap)
        leftBtn.addGestureRecognizer(leftTap)
        
        let rightTap = UITapGestureRecognizer(target: self, action: "rightTapAction")
        rightCenterImg.addGestureRecognizer(rightTap)
        rightBtn.addGestureRecognizer(rightTap)
    }
    
    func leftTapAction() {
        print("左上角点击事件")
    }
    
    func rightTapAction() {
        print("右上角点击事件")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpUI() {
        
//        leftBtn.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width/2, 120)
        
//        let rightBtn: UIButton?
        
    }
    
}
