import SwiftUI


extension View {
    
    @ViewBuilder
    public func pushOutFrame(
        horizontal shouldPushHorizontally: Bool = true,
        vertical shouldPushVertically: Bool = true,
        alignment: Alignment = .center
    ) -> some View {
        switch (shouldPushHorizontally, shouldPushVertically) {
        case (true, true):
            self.frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: alignment
            )
        case (true, false):
            self.frame(
                maxWidth: .infinity,
                alignment: alignment
            )
        case (false, true):
            self.frame(
                maxHeight: .infinity,
                alignment: alignment
            )
        case (false, false):
            self.frame(alignment: alignment)
        }
    }
}


#if DEBUG

struct Previews_View_PushOutFrame_Previews: PreviewProvider {
    
    static var previews: some View {
        
        VStack(spacing: 20) {
            
            VStack(spacing: 10) {
                Text("Stack 1")
                    .font(.title)
                    .bold()
                
                Text("Push out Horizontally")
                    .pushOutFrame(horizontal: true, vertical: false)
                    .background(Color.pink)
                
                Text("Push out Vertically")
                    .pushOutFrame(horizontal: false, vertical: true)
                    .background(Color.pink)
            }
            .padding()
            .background(Color.yellow)
            
            
            VStack {
                Text("Stack 2")
                    .font(.title)
                    .bold()
                
                Text("Push out Horizontally & Vertically")
                    .pushOutFrame()
                    .background(Color.pink)
            }
            .padding()
            .background(Color.purple)
        }
        .ignoresSafeArea(.all, edges: [.bottom])
    }
}

#endif
