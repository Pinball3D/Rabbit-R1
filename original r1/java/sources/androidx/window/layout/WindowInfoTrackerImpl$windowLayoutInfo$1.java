package androidx.window.layout;

import android.app.Activity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: WindowInfoTrackerImpl.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Landroidx/window/layout/WindowLayoutInfo;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1", f = "WindowInfoTrackerImpl.kt", i = {0, 0, 1, 1}, l = {54, 55}, m = "invokeSuspend", n = {"$this$flow", "listener", "$this$flow", "listener"}, s = {"L$0", "L$1", "L$0", "L$1"})
/* loaded from: classes2.dex */
final class WindowInfoTrackerImpl$windowLayoutInfo$1 extends SuspendLambda implements Function2<FlowCollector<? super WindowLayoutInfo>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ WindowInfoTrackerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowInfoTrackerImpl$windowLayoutInfo$1(WindowInfoTrackerImpl windowInfoTrackerImpl, Activity activity, Continuation<? super WindowInfoTrackerImpl$windowLayoutInfo$1> continuation) {
        super(2, continuation);
        this.this$0 = windowInfoTrackerImpl;
        this.$activity = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WindowInfoTrackerImpl$windowLayoutInfo$1 windowInfoTrackerImpl$windowLayoutInfo$1 = new WindowInfoTrackerImpl$windowLayoutInfo$1(this.this$0, this.$activity, continuation);
        windowInfoTrackerImpl$windowLayoutInfo$1.L$0 = obj;
        return windowInfoTrackerImpl$windowLayoutInfo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super WindowLayoutInfo> flowCollector, Continuation<? super Unit> continuation) {
        return ((WindowInfoTrackerImpl$windowLayoutInfo$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007e A[Catch: all -> 0x00a2, TRY_LEAVE, TryCatch #0 {all -> 0x00a2, blocks: (B:7:0x001a, B:9:0x0061, B:14:0x0076, B:16:0x007e, B:25:0x0033, B:27:0x005d), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0093 -> B:8:0x001d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L37
            if (r1 == r3) goto L27
            if (r1 != r2) goto L1f
            java.lang.Object r1 = r9.L$2
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r9.L$1
            androidx.core.util.Consumer r4 = (androidx.core.util.Consumer) r4
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> La2
        L1d:
            r10 = r5
            goto L61
        L1f:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L27:
            java.lang.Object r1 = r9.L$2
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r9.L$1
            androidx.core.util.Consumer r4 = (androidx.core.util.Consumer) r4
            java.lang.Object r5 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> La2
            goto L76
        L37:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r10 = (kotlinx.coroutines.flow.FlowCollector) r10
            kotlinx.coroutines.channels.BufferOverflow r1 = kotlinx.coroutines.channels.BufferOverflow.DROP_OLDEST
            r4 = 4
            r5 = 10
            r6 = 0
            kotlinx.coroutines.channels.Channel r1 = kotlinx.coroutines.channels.ChannelKt.Channel$default(r5, r1, r6, r4, r6)
            androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda0 r4 = new androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1$$ExternalSyntheticLambda0
            r4.<init>()
            androidx.window.layout.WindowInfoTrackerImpl r5 = r9.this$0
            androidx.window.layout.WindowBackend r5 = androidx.window.layout.WindowInfoTrackerImpl.access$getWindowBackend$p(r5)
            android.app.Activity r6 = r9.$activity
            androidx.media3.exoplayer.offline.DefaultDownloaderFactory$$ExternalSyntheticLambda0 r7 = new androidx.media3.exoplayer.offline.DefaultDownloaderFactory$$ExternalSyntheticLambda0
            r7.<init>()
            r5.registerLayoutChangeCallback(r6, r7, r4)
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> La2
        L61:
            r5 = r9
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5     // Catch: java.lang.Throwable -> La2
            r9.L$0 = r10     // Catch: java.lang.Throwable -> La2
            r9.L$1 = r4     // Catch: java.lang.Throwable -> La2
            r9.L$2 = r1     // Catch: java.lang.Throwable -> La2
            r9.label = r3     // Catch: java.lang.Throwable -> La2
            java.lang.Object r5 = r1.hasNext(r5)     // Catch: java.lang.Throwable -> La2
            if (r5 != r0) goto L73
            return r0
        L73:
            r8 = r5
            r5 = r10
            r10 = r8
        L76:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> La2
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> La2
            if (r10 == 0) goto L96
            java.lang.Object r10 = r1.next()     // Catch: java.lang.Throwable -> La2
            androidx.window.layout.WindowLayoutInfo r10 = (androidx.window.layout.WindowLayoutInfo) r10     // Catch: java.lang.Throwable -> La2
            r6 = r9
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6     // Catch: java.lang.Throwable -> La2
            r9.L$0 = r5     // Catch: java.lang.Throwable -> La2
            r9.L$1 = r4     // Catch: java.lang.Throwable -> La2
            r9.L$2 = r1     // Catch: java.lang.Throwable -> La2
            r9.label = r2     // Catch: java.lang.Throwable -> La2
            java.lang.Object r10 = r5.emit(r10, r6)     // Catch: java.lang.Throwable -> La2
            if (r10 != r0) goto L1d
            return r0
        L96:
            androidx.window.layout.WindowInfoTrackerImpl r9 = r9.this$0
            androidx.window.layout.WindowBackend r9 = androidx.window.layout.WindowInfoTrackerImpl.access$getWindowBackend$p(r9)
            r9.unregisterLayoutChangeCallback(r4)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        La2:
            r10 = move-exception
            androidx.window.layout.WindowInfoTrackerImpl r9 = r9.this$0
            androidx.window.layout.WindowBackend r9 = androidx.window.layout.WindowInfoTrackerImpl.access$getWindowBackend$p(r9)
            r9.unregisterLayoutChangeCallback(r4)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invokeSuspend$lambda-0, reason: not valid java name */
    public static final void m5331invokeSuspend$lambda0(Channel channel, WindowLayoutInfo info) {
        Intrinsics.checkNotNullExpressionValue(info, "info");
        channel.mo7202trySendJP2dKIU(info);
    }
}
