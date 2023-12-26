//
//  OnboardingView.swift
//  BookWorm
//
//  Created by Евгений on 25.12.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Constants and variables:
    enum UIConstants {
        static let vStackSpacing: CGFloat = 20
        static let imageHorizontalPadding: CGFloat = 112
        static let textHorizontalPadding: CGFloat = 30
        static let buttonTopPadding: CGFloat = 57
        static let buttonBottomPadding: CGFloat = 68
        
        static let gradientStartOpacity: CGFloat = 0.3
        static let textHeigth: CGFloat = 75
        static let textLineLimit = 3
        static let buttonWidth: CGFloat = 320
        static let buttonHeigth: CGFloat = 56
        static let buttonCornerRadius: CGFloat = 5
    }
    
    @State private var currentPage = 0
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.regularWhite
                
                VStack {
                    Image(.onboardingBackground)
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.frame(in: .global).width,
                               height: geo.frame(in: .global).height / 2,
                               alignment: .top)
                        .overlay {
                            LinearGradient(
                                colors: [.white.opacity(UIConstants.gradientStartOpacity), .clear],
                                startPoint: .topLeading,
                                endPoint: .bottom)
                        }
                    
                    Spacer()
                }
                
                VStack(spacing: UIConstants.vStackSpacing) {
                    Spacer()
                    
                    Image(.onboardingLogo)
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, UIConstants.imageHorizontalPadding)
                    
                    TabView(selection: $currentPage) {
                        ForEach(1..<4) { _ in
                            Text(L10n.Onboarding.firstText)
                                .font(.largeBodyFont)
                                .padding(.horizontal, UIConstants.textHorizontalPadding)
                                .lineLimit(UIConstants.textLineLimit)
                                .multilineTextAlignment(.center)
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    .frame(width: geo.frame(in: .global).width,
                           height: UIConstants.textHeigth)
                    
                    OnboardingPageControlView(pageNumber: $currentPage)
                    
                    Button(L10n.Onboarding.buttonTitle) {
                        
                    }
                    .frame(width: UIConstants.buttonWidth, height: UIConstants.buttonHeigth)
                    .background(.black)
                    .clipShape(.rect(cornerRadius: UIConstants.buttonCornerRadius))
                    .foregroundStyle(Color.regularWhite)
                    .padding(.top, UIConstants.buttonTopPadding)
                    .padding(.bottom, UIConstants.buttonBottomPadding)
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    OnboardingView()
}
