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
		view.backgroundColor = .orange
    }
	
	public override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		loadingView = IndeterminateLoadingView(frame: frame)
		view.addSubview(loadingView)
	}
	
	public func start() {
		loadingView.startAnimating()
	}
	
	public func stop() {
		loadingView.stopAnimating()
		dismiss(animated: true)
	}
	
	private var loadingView: IndeterminateLoadingView!
	var frame: CGRect {
		return  CGRect(x: view.bounds.midX - 100 / 2, y: view.bounds.midY - 100 / 2, width: 50, height: 50)
	}
}
