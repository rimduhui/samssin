//
//  SecondViewController.swift
//  samsin
//
//  Created by Release on 2016. 5. 16..
//  Copyright © 2016년 samsin. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {

   // var stageBtn[15][15];
    var UserColor:CGFloat = 0
    var recenttag = 0
    var computer = 0
    var flag = 0
    var Btn = [UIButton]()
 //   var stageBtn = [UIButton](count: 225);
    
    //var stageBtn = [UIButton]();
    //var i = 0;
    
    func touchBtn(sender : UIButton) {
        NSLog("%d가 눌렸습니다.", sender.tag)
        recenttag = sender.tag
        //print("%s", UserColor)
        sender.backgroundColor = UIColor(red: UserColor, green: UserColor, blue: UserColor, alpha: 1);
        print(Btn.count)
        //disable
        
        // server로 보내서 값받아와서 검은색이나 흰색으로 찍으면 된다. http / socket
        computer = Int(arc4random_uniform(224))
        Btn[computer].backgroundColor = UIColor(red: (UserColor+1)%2, green: (UserColor+1)%2, blue: (UserColor+1)%2, alpha: 1);
        
       


        // undoButton.removeTarget(self, action: "undoFunc:", forControlEvents: UIControlEvents.TouchDown);
        
       // print("%s", undoButton.actionsForTarget(self, forControlEvent: UIControlEvents.TouchDown))
            

        
    }
    func redoFunc(undoB : UIButton) {
        //      var Btn = UIButton();
        //      Btn.viewWithTag(recenttag)
        NSLog("undo가 눌렸습니다.", undoB.tag)
        NSLog("%d가 눌렸습니다.", recenttag)
        Btn[recenttag-1].backgroundColor = UIColor(red: UserColor, green: UserColor, blue: UserColor, alpha: 1);
        Btn[computer].backgroundColor = UIColor(red: (UserColor+1)%2, green: (UserColor+1)%2, blue: (UserColor+1)%2, alpha: 1);
    }
    func undoFunc(undoB : UIButton) {
  //      var Btn = UIButton();
  //      Btn.viewWithTag(recenttag)
        
        NSLog("undo가 눌렸습니다.", undoB.tag)
        NSLog("%d가 눌렸습니다.", recenttag)
        Btn[recenttag-1].backgroundColor = UIColor(red:0.78, green:0.21, blue:0.19, alpha: 0);
        Btn[computer].backgroundColor = UIColor(red: UserColor, green: UserColor, blue: UserColor, alpha: 0);
        //stageBtn.frame.size.width = 24;
        //stageBtn.frame.size.height = 24;
        //stageBtn.frame.origin.x = 13 + 25.8 * (recenttag/15);
        //stageBtn.frame.origin.y = 113 + (height/15 + 25.8*y);
        //stageBtn.backgroundColor = UIColor(red:0.78, green:0.21, blue:0.19, alpha: 0);
        //stageBtn.layer.cornerRadius = 24;
        //undoB.backgroundColor = UIColor(red: UserColor, green: UserColor, blue: UserColor, alpha: 0);
        //var width : CGFloat = self.view.frame.size.width;
      //  var height : CGFloat = self.view.frame.size.height;

        //var stageBtn = UIButton();
        
       // var uny : CGFloat = CGFloat((recenttag - 1)/15)
      //  var unx : CGFloat = (CGFloat(recenttag) - 1)%15
        //  var i = (NSInteger)(x+1+y*15)-1
        
    //    print("%d %d", unx, uny)
        //stageBtn.frame.size.width = 24;
       // stageBtn.frame.size.height = 24;
     //   stageBtn.frame.origin.x = 13 + 25.8 * (unx % 15);
    //    stageBtn.frame.origin.y = 113 + (height/15 + 25.8 * uny);
    //    stageBtn.backgroundColor = UIColor(red:0.78, green:0.21, blue:0.19, alpha: 1);
       // stageBtn.layer.cornerRadius = 24;
        
 
        
        // stageBtn.setTitle(NSString(format: "%lu", (NSInteger)(x+1+y*4)), forState:UIControlState.Normal);
      //  stageBtn.setTitleColor(UIColor(white: 1, alpha: 1), forState: UIControlState.Normal);
       // stageBtn.tag = (NSInteger)(x+1+y*15);
        //       stageBtn = [self.view, viewWithTag : (NSInteger)(x+1+y*15)];
       // stageBtn.addTarget(self, action: "touchBtn:", forControlEvents: UIControlEvents.TouchDown);
        
       // self.view.addSubview(stageBtn);
        //flag = 1
    }
    
    @IBOutlet weak var undoButton: UIButton!
    @IBOutlet weak var redoButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "board.png")!)
        //self.view.layer.contents = UIImage(named: "board.png")?.CGImage
        
        self.view.addBackground()
        
        var width : CGFloat = self.view.frame.size.width;
        var height : CGFloat = self.view.frame.size.height;
//        var subviews: [UIView] { UIButton };
        
        for var y : CGFloat = 0 ; y < 15 ; ++y {
            for var x : CGFloat = 0 ; x < 15 ; ++x {
             
                var stageBtn = UIButton();
               
               // var subviews = [UIView]{get};
              //  var i = (NSInteger)(x+1+y*15)-1
                
                stageBtn.frame.size.width = 24;
                stageBtn.frame.size.height = 24;
                stageBtn.frame.origin.x = 13 + 25.8 * (x % 15);
                stageBtn.frame.origin.y = 113 + (height/15 + 25.8*y);
                stageBtn.backgroundColor = UIColor(red:0.78, green:0.21, blue:0.19, alpha: 0);
                stageBtn.layer.cornerRadius = 24;
                
                // stageBtn.setTitle(NSString(format: "%lu", (NSInteger)(x+1+y*4)), forState:UIControlState.Normal);
                stageBtn.setTitleColor(UIColor(white: 1, alpha: 1), forState: UIControlState.Normal);
                stageBtn.tag = (NSInteger)(x+1+y*15);
         //       stageBtn = [self.view, viewWithTag : (NSInteger)(x+1+y*15)];
                stageBtn.addTarget(self, action: "touchBtn:", forControlEvents: UIControlEvents.TouchDown);
                
                self.view.addSubview(stageBtn);
                Btn.append(stageBtn)
            }
        }
       // undoButton.addTarget(self, action: "undoFunc:", forControlEvents: UIControlEvents.TouchDown);
        undoButton.addTarget(self, action: "undoFunc:", forControlEvents: UIControlEvents.TouchDown);
        redoButton.addTarget(self, action: "redoFunc:", forControlEvents: UIControlEvents.TouchDown);
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
