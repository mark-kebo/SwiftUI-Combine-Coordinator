//
//  DetailsView.swift
//  SwiftUI-Combine-Coordinator
//
//  Created by Dmitry Vorozhbicki on 17/02/2022.
//

import SwiftUI

struct DetailsView: View {
    public var viewModel: DetailsViewModel?
    
    var body: some View {
        VStack {
            Text("Tabs")
            Button("Back") {
                viewModel?.buttonPressed()
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
