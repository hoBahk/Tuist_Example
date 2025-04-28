import SwiftUI

import HomeFeature
import HomeDomain
import HomeRepository
import Network

public struct ContentView: View {
    public init() {}
    
    public var body: some View {
        let network = Network()
        let repository = UserRepositoryImpl(network: network)
        let useCase = DefaultUserUseCase(repository: repository)
        let viewModel = HomeViewModel(useCase: useCase)
        
//        let mockUseCase = MockUserUseCase()
//        let viewModel = HomeViewModel(useCase: mockUseCase)
        NavigationStack {
            HomeView(viewModel: viewModel)
        }
        
//        ZStack {
//            Color.red.ignoresSafeArea()
//            Text("✅ 이게 보이면 진짜 ContentView가 올라온 거야")
//                .foregroundColor(.white)
//                .padding()
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .ignoresSafeArea() // ✅ 여백 무시하고 전체 덮음
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
