//
//  OnboardingView.swift
//  BookWorm
//
//  Created by Евгений on 25.12.2023.
//

import SwiftUI

struct OnboardingView: View {
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
                    
                    Text(L10n.Onboarding.firstText)
                        .font(.largeBodyFont)
                        .padding(.horizontal, 30)
                        .lineLimit(3)
                        .multilineTextAlignment(.center)
                    
                    Button(L10n.Onboarding.buttonTitle) {
                        
                    }
                    .frame(width: 320, height: 56)
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 5))
                    .foregroundStyle(Color.regularWhite)
                    .padding(.top, 87)
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
