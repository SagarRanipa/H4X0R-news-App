//
//  DetailView.swift
//  H4X0R Hacker News
//
//  Created by Sagar patel on 2021-06-26.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



