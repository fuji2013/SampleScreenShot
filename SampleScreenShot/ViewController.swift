//
//  ViewController.swift
//  SampleScreenShot
//
//  Created by fuhi1983 on 2015/03/16.
//  Copyright (c) 2015年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var screenShotImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func screenShot(sender: UIButton) {
        // スクリーンショットの取得開始
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, true, 1.0)
        
        // 描画
        view.drawViewHierarchyInRect(view.bounds, afterScreenUpdates: true)
        
        // 描画が行われたスクリーンショットの取得
        let screenShot = UIGraphicsGetImageFromCurrentImageContext()
        
        // スクリーンショットの取得終了
        UIGraphicsEndImageContext()
        
        // 取得したスクリーンショットを表示
        screenShotImageView.image = screenShot
    }
}

