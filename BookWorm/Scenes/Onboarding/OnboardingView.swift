//
//  OnboardingView.swift
//  BookWorm
//
//  Created by Евгений on 25.12.2023.
//

import SwiftUI

struct OnboardingView: View {
    
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
                            LinearGradient(colors: [.white.opacity(0.3), .clear],
                                           startPoint: .topLeading, endPoint: .bottom)
                        }
                    
                    Spacer()
                }
                
                VStack(spacing: 20) {
                    Spacer()
                    
                    Image(.onboardingLogo)
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 112)
                    
                    TabView(selection: $currentPage) {
                        ForEach(1..<4) { _ in
                            Text(L10n.Onboarding.firstText)
                                .font(.largeBodyFont)
                                .padding(.horizontal, 30)
                                .lineLimit(3)
                                .multilineTextAlignment(.center)
                        }
                        .frame(width: geo.frame(in: .global).width, height: 75)
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    .frame(width: geo.frame(in: .global).width,
                           height: 75)
                    
                    OnboardingPageControlView(pageNumber: $currentPage)
                    
                    Button(L10n.Onboarding.buttonTitle) {
                        
                    }
                    .frame(width: 320, height: 56)
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 5))
                    .foregroundStyle(Color.regularWhite)
                    .padding(.top, 57)
                    .padding(.bottom, 68)
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    OnboardingView()
}
