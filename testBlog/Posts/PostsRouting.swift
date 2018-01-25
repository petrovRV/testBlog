//
//  PostRouting.swift
//  testBlog
//
//  Created by Mac on 25.01.18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

class PostsRouting {
    
    weak var viewController: PostsViewController!
    
    enum ViewControllers: String {
        case postVC = "postVC"
    }
    
    init(with postsVC: PostsViewController) {
        viewController = postsVC
    }
    
    func goToPost(id: Int) {
        
        let postVC = InternalHelper.StoryboardType.main.getStoryboard().instantiateViewController(withIdentifier: ViewControllers.postVC.rawValue) as! PostViewController
        
        postVC.model.getPost(id: id)
        
        
        viewController.navigationController?.pushViewController(postVC, animated: true)
    }
}
