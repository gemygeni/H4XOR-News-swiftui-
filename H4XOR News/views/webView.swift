//
//  webView.swift
//  H4XOR News
//
//  Created by AHMED GAMAL  on 09/03/2023.
//

import WebKit
import SwiftUI
struct webView : UIViewRepresentable{
    
    let urlString : String?
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let safeUrlString = urlString{
            if let url = URL(string: safeUrlString){
                let request = URLRequest(url:url)
                webView.load(request)
            }
        }
        return webView
    }
    
    func updateUIView(_ webView : WKWebView, context: Context) {
        if let safeUrlString = urlString{
            if let url = URL(string: safeUrlString){
                let request = URLRequest(url:url)
                webView.load(request)
            }
        }
    }
}
