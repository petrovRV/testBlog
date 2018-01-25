//
//  PostsViewModel.swift
//  testBlog
//
//  Created by Mac on 17.01.18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation
import RxSwift

class PostsViewModel {
    
    //MARK: Properties
    let request = RequestService()
    
    var listPosts = Observable<[Post]>.empty()
    
    //MARK: Methods
    func getPosts() {
        self.listPosts = request.getPosts()
    }
    
}
