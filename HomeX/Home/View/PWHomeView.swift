//
//  PWHomeView.swift
//  HomeX
//
//  Created by mike on 2025/1/10.
//

import SwiftUI

struct PWHomeView: View {
    @ObservedObject var viewModel: PWHomeViewModel
    
    var body: some View {
        VStack {
            Text("Home")
                .padding(30)
            Button {
                viewModel.palyDidClicked()
            } label: {
                Text("play")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(Color.white)
                    .padding()
            }
            .background(Color.red)
            .cornerRadius(10)
            .padding(.top, 20)
        }
    }
}

#Preview {
    PWHomeView(viewModel: PWHomeViewModel())
}
