package androidx.compose.material3;

import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppBar.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.AppBarKt", f = "AppBar.kt", i = {0, 0, 0, 1}, l = {1622, 1638}, m = "settleAppBar", n = {SentryThread.JsonKeys.STATE, "snapAnimationSpec", "remainingVelocity", "remainingVelocity"}, s = {"L$0", "L$1", "L$2", "L$0"})
/* loaded from: classes.dex */
public final class AppBarKt$settleAppBar$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppBarKt$settleAppBar$1(Continuation<? super AppBarKt$settleAppBar$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        obj2 = AppBarKt.settleAppBar(null, 0.0f, null, null, this);
        return obj2;
    }
}
