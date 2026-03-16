import SwiftUI

struct ContentView: View {
    
    @State private var output: Int = 0
    @State private var step: Int = 1
    
    var body: some View {
        VStack(spacing: 20) {
            
            // App Logo
            Image(systemName: "app.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.blue)
            
            // Output Label
            Text("Output")
                .font(.headline)
            
            Text("\(output)")
                .font(.largeTitle)
                .padding()
                .frame(width: 150)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            // Add & Subtract Buttons
            HStack(spacing: 20) {
                Button(action: {
                    output += step
                }) {
                    Text("Add")
                        .frame(width: 100, height: 44)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    output -= step
                }) {
                    Text("Subtract")
                        .frame(width: 100, height: 44)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            
            // Step Button
            Button(action: {
                step = (step == 1) ? 2 : 1
            }) {
                Text("Step = \(step)")
                    .frame(width: 220, height: 44)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            // Reset Button
            Button(action: {
                output = 0
            }) {
                Text("Reset")
                    .frame(width: 220, height: 44)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
