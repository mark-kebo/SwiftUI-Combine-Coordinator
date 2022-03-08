//
//  SecondView.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 17/02/2022.
//

import SwiftUI

struct SecondView: View {
    public var viewModel: SecondViewModel?

    var body: some View {
        VStack {
            Text("Second View")
            Button("Next") {
                viewModel?.buttonPressed()
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
