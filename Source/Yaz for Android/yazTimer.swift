public class yazTimer : android.os.CountDownTimer {

    public var onTickCallback: (()->())?

    public  override func onTick(_ arg1: Int64) {

        if let onTickCallback = onTickCallback {
            onTickCallback()
        }
    }

    public override func onFinish() {
        
        
    }

}