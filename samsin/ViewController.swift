//
//  ViewController.swift
//  samsin
//
//  Created by Release on 2016. 5. 16..
//  Copyright © 2016년 samsin. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var BlackButton: UIButton!
    
    @IBOutlet weak var WhiteButton: UIButton!
    
    var choiceColor : CGFloat = 0;
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var UserValue = segue.destinationViewController as! SecondViewController
        UserValue.UserColor = choiceColor;
    }
    
    func touchBtn1(sender : UIButton) {
        NSLog("블랙이 눌렸습니다.")
        choiceColor = 0
        //sender.backgroundColor = UIColor(red:1, green:1, blue:1, alpha: 1);
    }
    func touchBtn2(sender : UIButton) {
        NSLog("화이트가 눌렸습니다.")
        choiceColor = 1
        //sender.backgroundColor = UIColor(red:1, green:1, blue:1, alpha: 1);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    //    CGContextRef ctx = UIGraphicsGetCurrentContext();
     //   CGContextSetRGBFillColor(ctx, 0.0, 1.0, 0.0, 1.0);
      //  CGContextFillEllipseInRect(ctx, CGReckMake(100,100,25,25))
        self.view.addBackground2()
        BlackButton.addTarget(self, action: "touchBtn1:", forControlEvents: UIControlEvents.TouchDown);
        WhiteButton.addTarget(self, action: "touchBtn2:", forControlEvents: UIControlEvents.TouchDown);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
