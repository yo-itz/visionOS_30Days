import SwiftUI

struct ContentView: View {

    var body: some View {
        Text("Hello, visionOS!")
        Text("こんにちは, visionOS!")
        Text("私は漢字も表示できますか？\n改行はこうですね。(中央寄せ)")
            .multilineTextAlignment(.center)
            .padding(.top, 10.0)
    }
}

#Preview {
    ContentView()
}
