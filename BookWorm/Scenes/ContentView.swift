//
//  ContentView.swift
//  BookWorm
//
//  Created by Евгений on 25.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - UI:
    var body: some View {
        OnboardingView(viewModel: OnboardingViewModel())
    }
}

#Preview {
    ContentView()
}
