//
//  AppetizerListView.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 11/09/2023.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var appetizers : [Appetizer] = []
    @State private var isLoading = false
    
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerCell(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                        .listRowSeparator(.visible, edges: .bottom)
                }
                .navigationTitle("Appetizers")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            
            .task {
                viewModel.getAppetizers()
            }
            
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer!, isShowingDetail: $viewModel.isShowingDetail)
            }
            
            if viewModel.isLoading {
//                ProgressView("Loading...")
                ProgressView()
                    .tint(.blue)
                    .scaleEffect(2)
            }
            
            
            
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}


struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
