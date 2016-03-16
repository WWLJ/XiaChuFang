//
//  MainViewController.swift
//  XiaChuFang
//
//  Created by 罗金 on 16/3/15.
//  Copyright © 2016年 EasyFlower. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    // 单行注释
    /*  多行注释  */
    /// 标记注释1
    /** 标记注释2 */
    
    // MARK: - 注释方法集
    // TODO: - 注释方法集
    
    var mainTable: UITableView?
    var mainArray: NSMutableArray?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "下厨房"
        
        self.loadDataSource()
        self.setUpTable()
    }
    
    // MARK: - tableView Delegate && tableView DataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (mainArray?.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "mainCell"
        let cell = MainClassicalCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: identifier)
        
        //下面两个属性对应subtitle
//        cell.firstTitle?.text = mainArray![indexPath.row] as? String
//        cell.subTitle?.text = mainArray![indexPath.row] as? String
        
        var dic = Dictionary<String, String>()
        dic["name"] = mainArray![indexPath.row] as? String
        cell.setValueForCell(dic)
        
        //添加照片
//        cell.showImage?.image = UIImage(named: mainArray![indexPath.row] as! String)
        
        return cell
    }
    
    func loadDataSource() {
        mainArray = ["宝宝0", "宝宝1", "宝宝2", "宝宝3", "宝宝4", "宝宝5", "宝宝6", "宝宝7", "宝宝8", "宝宝9", "宝宝10", "宝宝11"]
    }
    
    func setUpTable(){
        mainTable = UITableView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height))
        mainTable?.delegate = self
        mainTable?.dataSource = self
        self.view.addSubview(mainTable!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
