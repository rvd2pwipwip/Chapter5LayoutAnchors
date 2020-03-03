//
//  ViewController.swift
//  Chapter5LayoutAnchors
//
//  Created by Herve Desrosiers on 2020-03-03.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let padding: CGFloat = 50
    private let spacing: CGFloat = 25
    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(redView)
        view.addSubview(greenView)
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            redView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor),
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: spacing),
            greenView.leadingAnchor.constraint(equalTo: redView.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: redView.trailingAnchor),
            greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding)
        ])
    }
}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}
