import Foundation
import ActivityKit

@objc(LiveActivity)
class LiveActivity: NSObject {
  
  @objc(startActivity)
   func startActivity() {
     do{
       if #available(iOS 16.1, *){
         let liveActivityAttributes = LiveActivityAttributes(name: "Live Activity")
         let liveActivityContentState = LiveActivityAttributes.ContentState()
         let activity = try Activity<LiveActivityAttributes>.request(attributes: liveActivityAttributes, contentState: liveActivityContentState,  pushType: nil)
         
       }else{
         print("Dynamic Island and live activies not supported")
       }
       
     }catch (_){
       print("there is some error")
     }
   }
}
