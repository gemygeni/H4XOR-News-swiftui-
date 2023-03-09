//
//  detailView.swift
//  H4XOR News
//
//  Created by AHMED GAMAL  on 09/03/2023.
//

import SwiftUI

struct detailView: View {
    var urlString : String?
    var body: some View {
        webView(urlString: urlString)
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView(urlString: "https://www.google.com")
    }
}
