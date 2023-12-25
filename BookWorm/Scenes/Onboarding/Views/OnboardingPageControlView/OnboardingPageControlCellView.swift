//
//  OnboardingPageControlCellView.swift
//  BookWorm
//
//  Created by Евгений on 25.12.2023.
//

import SwiftUI

struct OnboardingPageControlCellView: View {
    
    // MARK: - UIConstants:
    enum UIConstants {
        static let activeWidth: CGFloat = 32
        static let inactiveWidth: CGFloat = 10
        static let heigth: CGFloat = 10
        static let cornerRadius: CGFloat = 10
    }
    
    // MARK: - Binding:
    @Binding var currentPage: Int
    
    // MARK: - Constants and Variables:
    var index: Int
    
    // MARK: - UI:
    var body: some View {
        RoundedRectangle(cornerRadius: UIConstants.cornerRadius)
            .foregroundStyle(index == currentPage ? .black : .gray)
            .frame(
                width: index == currentPage ?
                UIConstants.activeWidth : UIConstants.inactiveWidth,
                height: UIConstants.heigth)
    }
}

#Preview {
    OnboardingPageControlCellView(currentPage: .constant(2), index: 2)
}
