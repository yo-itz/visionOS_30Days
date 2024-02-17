import SwiftUI
import RealityKit

struct ContentView: View {

    private let url = URL(string:
        "https://developer.apple.com/augmented-reality/quick-look/models/teapot/teapot.usdz"
    )!
    private let url2 = URL(string:
        "https://developer.apple.com/augmented-reality/quick-look/models/cupandsaucer/cup_saucer_set.usdz"
    )!

    var body: some View {
        HStack{
            VStack {
                Text("Show teapot")
                Model3D(url: url) { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                } placeholder: {
                    ProgressView()
                }
            }.padding()
            
            VStack {
                Text("and teacup")
                Model3D(url: url2) { model in
                    model
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                } placeholder: {
                    ProgressView()
                }
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
