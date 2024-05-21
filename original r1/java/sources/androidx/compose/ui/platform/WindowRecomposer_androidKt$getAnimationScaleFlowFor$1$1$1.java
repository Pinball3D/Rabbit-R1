package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowRecomposer.android.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1", f = "WindowRecomposer.android.kt", i = {0, 1}, l = {115, 121}, m = "invokeSuspend", n = {"$this$flow", "$this$flow"}, s = {"L$0", "L$0"})
/* loaded from: classes.dex */
public final class WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 extends SuspendLambda implements Function2<FlowCollector<? super Float>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Uri $animationScaleUri;
    final /* synthetic */ Context $applicationContext;
    final /* synthetic */ Channel<Unit> $channel;
    final /* synthetic */ WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 $contentObserver;
    final /* synthetic */ ContentResolver $resolver;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(ContentResolver contentResolver, Uri uri, WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1, Channel<Unit> channel, Context context, Continuation<? super WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1> continuation) {
        super(2, continuation);
        this.$resolver = contentResolver;
        this.$animationScaleUri = uri;
        this.$contentObserver = windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1;
        this.$channel = channel;
        this.$applicationContext = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(this.$resolver, this.$animationScaleUri, this.$contentObserver, this.$channel, this.$applicationContext, continuation);
        windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.L$0 = obj;
        return windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super Float> flowCollector, Continuation<? super Unit> continuation) {
        return ((WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0063 A[Catch: all -> 0x0094, TRY_LEAVE, TryCatch #0 {all -> 0x0094, blocks: (B:7:0x0016, B:9:0x0048, B:14:0x005b, B:16:0x0063, B:25:0x002b, B:27:0x0042), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0088  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0085 -> B:8:0x0019). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2f
            if (r1 == r3) goto L23
            if (r1 != r2) goto L1b
            java.lang.Object r1 = r8.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r8.L$0
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L94
        L19:
            r9 = r4
            goto L48
        L1b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L23:
            java.lang.Object r1 = r8.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r8.L$0
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L94
            goto L5b
        L2f:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            kotlinx.coroutines.flow.FlowCollector r9 = (kotlinx.coroutines.flow.FlowCollector) r9
            android.content.ContentResolver r1 = r8.$resolver
            android.net.Uri r4 = r8.$animationScaleUri
            androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 r5 = r8.$contentObserver
            android.database.ContentObserver r5 = (android.database.ContentObserver) r5
            r6 = 0
            r1.registerContentObserver(r4, r6, r5)
            kotlinx.coroutines.channels.Channel<kotlin.Unit> r1 = r8.$channel     // Catch: java.lang.Throwable -> L94
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L94
        L48:
            r4 = r8
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.lang.Throwable -> L94
            r8.L$0 = r9     // Catch: java.lang.Throwable -> L94
            r8.L$1 = r1     // Catch: java.lang.Throwable -> L94
            r8.label = r3     // Catch: java.lang.Throwable -> L94
            java.lang.Object r4 = r1.hasNext(r4)     // Catch: java.lang.Throwable -> L94
            if (r4 != r0) goto L58
            return r0
        L58:
            r7 = r4
            r4 = r9
            r9 = r7
        L5b:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L94
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L94
            if (r9 == 0) goto L88
            r1.next()     // Catch: java.lang.Throwable -> L94
            android.content.Context r9 = r8.$applicationContext     // Catch: java.lang.Throwable -> L94
            android.content.ContentResolver r9 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L94
            java.lang.String r5 = "animator_duration_scale"
            r6 = 1065353216(0x3f800000, float:1.0)
            float r9 = android.provider.Settings.Global.getFloat(r9, r5, r6)     // Catch: java.lang.Throwable -> L94
            java.lang.Float r9 = kotlin.coroutines.jvm.internal.Boxing.boxFloat(r9)     // Catch: java.lang.Throwable -> L94
            r5 = r8
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5     // Catch: java.lang.Throwable -> L94
            r8.L$0 = r4     // Catch: java.lang.Throwable -> L94
            r8.L$1 = r1     // Catch: java.lang.Throwable -> L94
            r8.label = r2     // Catch: java.lang.Throwable -> L94
            java.lang.Object r9 = r4.emit(r9, r5)     // Catch: java.lang.Throwable -> L94
            if (r9 != r0) goto L19
            return r0
        L88:
            android.content.ContentResolver r9 = r8.$resolver
            androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 r8 = r8.$contentObserver
            android.database.ContentObserver r8 = (android.database.ContentObserver) r8
            r9.unregisterContentObserver(r8)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L94:
            r9 = move-exception
            android.content.ContentResolver r0 = r8.$resolver
            androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 r8 = r8.$contentObserver
            android.database.ContentObserver r8 = (android.database.ContentObserver) r8
            r0.unregisterContentObserver(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
