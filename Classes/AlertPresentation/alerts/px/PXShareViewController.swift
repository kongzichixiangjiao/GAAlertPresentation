//
//  PXShareViewController.swift
//  IFA-B
//
//  Created by puxin on 2018/8/23.
//  Copyright © 2018年 ZHENGHEHOLDING. All rights reserved.
//

import UIKit

enum ShareTypesType: Int {
    case friend = 2, weixin = 1 , qq = 4
}

class PXShareViewController: YYPresentationBaseViewController {
    public typealias ClickedShareView = (_ tag: Int) -> ()
    public var clickedShareHandler: ClickedShareView?
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func touchShareButton(_ sender: UIButton) {
        
//        var shareType = ShareTypesType.friend
//
//        switch sender.tag {
//        case 0:
//            shareType = .friend
//        case 1:
//            shareType = .weixin
//        case 2:
//            shareType = .qq
//        default:
//            break
//        }
        
        clickedShareHandler!(sender.tag)
        dismiss()
    }
    
    
}
