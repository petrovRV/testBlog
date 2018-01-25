//
//  Post.swift
//  testBlog
//
//  Created by Mac on 18.01.18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation
import RxSwift

class PostViewModel {
    
    //MARK: Properties
    private let request = RequestService()
    private let formatter = DateFormatter()
    
    private var postObject = Observable<Post>.empty()
    
    var title = Observable<String>.empty()
    var text = Observable<String>.empty()
    var date = Observable<String>.empty()
    
    func getPost(id: Int) {
        
        postObject = request.getPost(with: id)
        
        text = postObject.map { $0.text }
        title = postObject.map { $0.title }
        
        formatter.dateFormat = "yyyy.MM.dd"
        date = postObject.map { self.formatter.string(from: $0.datePublic!) }
    
    }
    
}
