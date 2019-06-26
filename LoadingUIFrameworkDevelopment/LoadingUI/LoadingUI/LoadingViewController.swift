//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Hector Steven on 6/26/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

	override public func viewDidLoad() {
        super.viewDidLoad()
    }
	
	public override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		loadingView = IndeterminateLoadingView(frame: frame)
		
		
	}
	
	public func start() {
		loadingView.startAnimating()
	}
	
	public func stop() {
		loadingView.stopAnimating()
		dismiss(animated: true)
	}
	

	public var state: Bool = false
	private var loadingView: IndeterminateLoadingView!
	
	var frame: CGRect {
		return  CGRect(x: view.bounds.midX - 40 / 2, y: view.bounds.midY - 40 / 2, width: 40, height: 40)
	}
}
