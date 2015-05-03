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
        let button1 = makeButton("1", in_x:self.view.frame.width/4 * 0, in_y:self.view.frame.height/7 * 6)
        let button2 = makeButton("4", in_x:self.view.frame.width/4 * 0, in_y:self.view.frame.height/7 * 5)
        let button3 = makeButton("7", in_x:self.view.frame.width/4 * 0, in_y:self.view.frame.height/7 * 4)
        let button4 = makeButton("2", in_x:self.view.frame.width/4 * 1, in_y:self.view.frame.height/7 * 6)
        let button5 = makeButton("5", in_x:self.view.frame.width/4 * 1, in_y:self.view.frame.height/7 * 5)
        let button6 = makeButton("8", in_x:self.view.frame.width/4 * 1, in_y:self.view.frame.height/7 * 4)
        let button7 = makeButton("3", in_x:self.view.frame.width/4 * 2, in_y:self.view.frame.height/7 * 6)
        let button8 = makeButton("6", in_x:self.view.frame.width/4 * 2, in_y:self.view.frame.height/7 * 5)
        let button9 = makeButton("9", in_x:self.view.frame.width/4 * 2, in_y:self.view.frame.height/7 * 4)
        let buttona = makeButton("x", in_x:self.view.frame.width/4 * 3, in_y:self.view.frame.height/7 * 6)
        let buttonb = makeButton("-", in_x:self.view.frame.width/4 * 3, in_y:self.view.frame.height/7 * 5)
        let buttonc = makeButton("+", in_x:self.view.frame.width/4 * 3, in_y:self.view.frame.height/7 * 4)

        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        self.view.addSubview(button6)
        self.view.addSubview(button7)
        self.view.addSubview(button8)
        self.view.addSubview(button9)
        self.view.addSubview(buttona)
        self.view.addSubview(buttonb)
        self.view.addSubview(buttonc)
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
        button.frame = CGRectMake(0, 0, self.view.frame.width/4, 50)
        button.layer.position = CGPoint(x:in_x + self.view.frame.width/8, y:in_y)
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

