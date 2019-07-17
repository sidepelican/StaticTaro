//
//  ViewController.swift
//  StaticTaro
//
//  Created by kenta on 2019/07/17.
//  Copyright © 2019 iceman. All rights reserved.
//

import TaroFramework
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let bundle = Bundle(url: Bundle.main.url(forResource: "TaroFramework", withExtension: "bundle")!)!
        let nib = UINib(nibName: "TaroView", bundle: bundle)
        let taro = nib.instantiate(withOwner: self, options: nil).first as! TaroView

        view.addSubview(taro)
        taro.translatesAutoresizingMaskIntoConstraints = false
        taro.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        taro.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        taro.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        taro.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

