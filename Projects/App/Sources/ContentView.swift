import SwiftUI

import HomeFeature
import HomeDomain
import HomeRepository
import NetworkCore

public struct ContentView: View {
    public init() {}
    
    public var body: some View {
        let network = NetworkCore()
        let repository = UserRepositoryImpl(network: network)
        let useCase = DefaultUserUseCase(repository: repository)
        let viewModel = HomeViewModel(useCase: useCase)
        
//        let mockUseCase = MockUserUseCase()
//        let viewModel = HomeViewModel(useCase: mockUseCase)
        NavigationStack {
            HomeView(viewModel: viewModel)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
