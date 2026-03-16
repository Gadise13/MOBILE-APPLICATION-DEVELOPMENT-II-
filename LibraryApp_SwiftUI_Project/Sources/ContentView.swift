import SwiftUI

struct ContentView: View {
    let books = [
        "SwiftUI Basics",
        "iOS Development",
        "Advanced Swift",
        "Mobile App Design"
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to the Library App")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                List(books, id: \.self) { book in
                    NavigationLink(destination: DetailView(bookTitle: book)) {
                        Text(book)
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
