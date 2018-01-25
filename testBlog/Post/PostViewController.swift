//
//  PostViewController.swift
//  testBlog
//
//  Created by Mac on 18.01.18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class PostViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    //MARK: Properties
    var model = PostViewModel()
    var disposeBag = DisposeBag()
    
    // MARK: UIViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.title.bind(to: titleLabel.rx.text).disposed(by: disposeBag)
        model.text.bind(to: descriptionLabel.rx.text).disposed(by: disposeBag)
        model.date.bind(to: dateLabel.rx.text).disposed(by: disposeBag)
        
    }

}
