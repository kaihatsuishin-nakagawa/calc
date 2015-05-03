//
//  ViewController.swift
//  calc
//
//  Created by Nobuo Nakagawa on 2015/05/03.
//  Copyright (c) 2015年 nnkgw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button1 = makeButton("test1", in_x:self.view.frame.width/2, in_y:100)
        let button2 = makeButton("test1", in_x:self.view.frame.width/2, in_y:200)
        let button3 = makeButton("test1", in_x:self.view.frame.width/2, in_y:300)
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
    }

    func tapped(button :UIButton) {
        NSLog("tapped")
    }

    func makeButton(in_title:String, in_x:CGFloat, in_y:CGFloat) -> UIButton {
        let button = UIButton()
        button.setTitle(in_title, forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.setTitle("Tapped!", forState: .Highlighted)
        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        button.frame = CGRectMake(0, 0, 300, 50)
        button.layer.position = CGPoint(x:in_x, y:in_y)
        button.backgroundColor = UIColor(red: 0.7, green: 0.2, blue: 0.2, alpha: 0.2)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        return button
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

