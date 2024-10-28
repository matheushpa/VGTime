import SwiftUI

struct PosterCollectionView: View {
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
    private var colors: [Color] = [.yellow, .purple, .green]
//    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    private var gridItemLayout = [GridItem(.fixed(64))]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItemLayout, spacing: 16) {
                ForEach((0...9999), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30))
                        .frame(minWidth: 64, minHeight: 64)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(12)
                }
            }
        }
    }
}

struct PosterCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PosterCollectionView()
    }
}
