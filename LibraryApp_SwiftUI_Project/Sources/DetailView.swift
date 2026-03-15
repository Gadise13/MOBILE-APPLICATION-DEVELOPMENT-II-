import SwiftUI

struct DetailView: View {
    let bookTitle: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text(bookTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            NavigationLink(destination: InfoView()) {
                Text("More Info")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .navigationTitle("Detail")
    }
}

#Preview {
    DetailView(bookTitle: "SwiftUI Basics")
}
