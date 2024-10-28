import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
//            tabItem {
//                Image(systemName: "magnifier.fill")
//                Text("Home")
//            }
            
            tabItem {
                Image(systemName: "person.crop.circle")
                Text("Home")
            }
        }
//        .accentColor(.red)
//        .onAppear() {
//            UITabBar.appearance().barTintColor = .white
//        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
