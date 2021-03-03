//
//  SecondViewController.swift
//  SLProjectModuleComm
//
//  Created by 孙梁 on 2021/2/2.
//

import UIKit
import ModuleComm

class SecondViewController: BaseViewController {

}

extension SecondViewController {
    override func setMasterView() {
        super.setMasterView()
        title = "第二页"
        view.backgroundColor = UIColor.sl_randomColor()
    }
}
