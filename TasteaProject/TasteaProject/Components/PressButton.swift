import SwiftUI

struct PressButton: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Button("Press to dismiss") {
                dismiss()
            }
            .frame(width:360 ,height: 40)
            .foregroundColor(.gray)
            .overlay(
                RoundedRectangle(cornerRadius: 89)
                    .stroke(Color("greeen"), lineWidth: 2)
                    .frame( maxWidth: 200 ,maxHeight: 40))
        }
    }
    }


struct PressButton_Previews: PreviewProvider {
    static var previews: some View {
        PressButton()
    }
}
