//
//  Target_Second.swift
//  SLProjectModuleComm
//
//  Created by 孙梁 on 2021/2/4.
//

import UIKit

@objc(Target_Second)
class Target_Second: NSObject {
    @objc func Action_SecondViewController(_ params: [NSString: AnyObject]?) -> UIViewController {
        SecondViewController()
    }
}
