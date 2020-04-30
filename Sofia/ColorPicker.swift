

import SwiftUI

struct ColorPicker: View {
    @Binding var color: Color
    @Binding var colorPickerShown: Bool
    
    private let colors = ColorsProvider.supportedColors()
    
    var body: some View {
        List(colors) { colorInfo in
            ColorEntry(colorInfo: colorInfo)
                .onTapGesture {

                    playSound(sound: colorInfo.displayName, type: "wav")
                    self.color = colorInfo.color
                    self.colorPickerShown = false

            }
        }
    }
}
