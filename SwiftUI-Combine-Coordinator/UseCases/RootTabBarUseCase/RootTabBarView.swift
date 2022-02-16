//
//  RootTabBarView.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import SwiftUI

struct RootTabBarView: View {
    var body: some View {
        Color.purple
            .ignoresSafeArea()
            .overlay(Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/))
    }
}

struct RootTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabBarView()
    }
}
