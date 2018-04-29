public class yazTimer : android.os.CountDownTimer {

    public var onTickCallback: (()->())?
    public var OnFinishCallback: (()->())?

    public  override func onTick(_ arg1: Int64) {

        if let onTickCallback = onTickCallback {
            onTickCallback()
        }
    }

    public override func onFinish() {

        if let onFinishCallback = OnFinishCallback {
            onFinishCallback()
        }

    }

}