//
//  FirstView.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 17/02/2022.
//

import SwiftUI

struct FirstView: View {
    public var viewModel: FirstViewModel?
    
    var body: some View {
        VStack {
            Text("First View")
            Button("Next") {
                viewModel?.buttonPressed()
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
