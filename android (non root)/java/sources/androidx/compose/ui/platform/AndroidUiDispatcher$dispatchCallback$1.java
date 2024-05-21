package androidx.compose.ui.platform;

import android.os.Handler;
import android.view.Choreographer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;

/* compiled from: AndroidUiDispatcher.android.kt */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"androidx/compose/ui/platform/AndroidUiDispatcher$dispatchCallback$1", "Landroid/view/Choreographer$FrameCallback;", "Ljava/lang/Runnable;", "doFrame", "", "frameTimeNanos", "", "run", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidUiDispatcher$dispatchCallback$1 implements Choreographer.FrameCallback, Runnable {
    final /* synthetic */ AndroidUiDispatcher this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidUiDispatcher$dispatchCallback$1(AndroidUiDispatcher androidUiDispatcher) {
        this.this$0 = androidUiDispatcher;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        List list;
        this.this$0.performTrampolineDispatch();
        obj = this.this$0.lock;
        AndroidUiDispatcher androidUiDispatcher = this.this$0;
        synchronized (obj) {
            list = androidUiDispatcher.toRunOnFrame;
            if (list.isEmpty()) {
                androidUiDispatcher.getChoreographer().removeFrameCallback(this);
                androidUiDispatcher.scheduledFrameDispatch = false;
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long frameTimeNanos) {
        Handler handler;
        handler = this.this$0.handler;
        handler.removeCallbacks(this);
        this.this$0.performTrampolineDispatch();
        this.this$0.performFrameDispatch(frameTimeNanos);
    }
}
