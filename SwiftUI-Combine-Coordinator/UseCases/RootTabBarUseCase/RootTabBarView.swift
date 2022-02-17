//
//  RootTabBarView.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 16/02/2022.
//

import SwiftUI

struct RootTabBarView: View {
    public var viewModel: RootTabBarViewModel?
    
    var body: some View {
        VStack {
            Text("Tabs")
            Button("Next") {
                viewModel?.buttonPressed()
            }
        }
    }
}

struct RootTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabBarView()
    }
}
