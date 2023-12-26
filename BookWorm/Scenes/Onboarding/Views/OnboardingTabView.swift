//
//  OnboardingTabView.swift
//  BookWorm
//
//  Created by Евгений on 26.12.2023.
//

import SwiftUI

struct OnboardingTabView: View {
    
    // MARK: - States object:
    @EnvironmentObject private var viewModel: OnboardingViewModel
    
    // MARK: - Constants and Variables:
    let geo: GeometryProxy
    
    private let textHorizontalPadding: CGFloat = 30
    private let textLineLimit = 3
    private let textHeigth: CGFloat = 75

    var body: some View {
        TabView(selection: $viewModel.currentPage) {
            ForEach(viewModel.texts.indices, id: \.self) { index in
                Text(viewModel.texts[index])
                    .font(.largeBodyFont)
                    .padding(.horizontal, textHorizontalPadding)
                    .lineLimit(textLineLimit)
                    .multilineTextAlignment(.center)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(width: geo.frame(in: .global).width,
               height: textHeigth)
    }
}

#Preview {
    GeometryReader { geo in
        OnboardingTabView(geo: geo)
    }
}
    
