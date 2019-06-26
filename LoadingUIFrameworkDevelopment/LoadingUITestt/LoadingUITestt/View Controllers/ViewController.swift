//
//  ViewController.swift
//  LoadingUITestt
//
//  Created by Hector Steven on 6/26/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func loadingUIButton(_ sender: UIBarButtonItem) {
		print("uiTest")
		
		let loadingVC = LoadingViewController()
		present(loadingVC, animated: true) {
			loadingVC.start()
		}
		
		
		DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
			loadingVC.stop()
		}
		
	}
	
	
	
	
	
}

