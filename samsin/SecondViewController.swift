//
//  SecondViewController.swift
//  samsin
//
//  Created by Release on 2016. 5. 16..
//  Copyright © 2016년 samsin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //var stageBtn[UIButton];
    var UserColor:CGFloat = 0

    func touchBtn(sender : UIButton) {
        NSLog("%d가 눌렸습니다.", sender.tag)
        print("%s", UserColor)
        sender.backgroundColor = UIColor(red: UserColor, green: UserColor, blue: UserColor, alpha: 1);
        
        // server로 보내서 값받아와서 검은색이나 흰색으로 찍으면 된다. http / socket
        
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "board.png")!)
        //self.view.layer.contents = UIImage(named: "board.png")?.CGImage
        
        var width : CGFloat = self.view.frame.size.width;
        var height : CGFloat = self.view.frame.size.height;

        
        for var y : CGFloat = 0 ; y < 15 ; ++y {
            for var x : CGFloat = 0 ; x < 15 ; ++x {
                
                var stageBtn = UIButton();
                
                stageBtn.frame.size.width = 24;
                stageBtn.frame.size.height = 24;
                stageBtn.frame.origin.x = 13 + 25.8 * (x % 15);
                stageBtn.frame.origin.y = 93 + (height/15 + 25.8*y);
                stageBtn.backgroundColor = UIColor(red:0.78, green:0.21, blue:0.19, alpha: 1);
                stageBtn.layer.cornerRadius = 24;
                
                // stageBtn.setTitle(NSString(format: "%lu", (NSInteger)(x+1+y*4)), forState:UIControlState.Normal);
                stageBtn.setTitleColor(UIColor(white: 1, alpha: 1), forState: UIControlState.Normal);
                stageBtn.tag = (NSInteger)(x+1+y*15);
                stageBtn.addTarget(self, action: "touchBtn:", forControlEvents: UIControlEvents.TouchDown);
                
                self.view.addSubview(stageBtn);
            }
        }
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
