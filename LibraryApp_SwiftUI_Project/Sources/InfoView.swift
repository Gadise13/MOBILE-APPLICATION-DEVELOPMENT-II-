import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            Text("About This App")
                .font(.title)
                .fontWeight(.bold)
            
            Text("This app demonstrates multi-screen navigation in SwiftUI using NavigationStack and NavigationLink.")
                .multilineTextAlignment(.center)
                .padding()
            
            Button("Go Back") {
                dismiss()
            }
            .padding()
            .background(Color.gray)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
        .navigationTitle("Info")
    }
}

#Preview {
    InfoView()
}
