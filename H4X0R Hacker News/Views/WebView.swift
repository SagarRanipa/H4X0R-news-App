//
//  WebView.swift
//  H4X0R Hacker News
//
//  Created by Sagar patel on 2021-06-26.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
