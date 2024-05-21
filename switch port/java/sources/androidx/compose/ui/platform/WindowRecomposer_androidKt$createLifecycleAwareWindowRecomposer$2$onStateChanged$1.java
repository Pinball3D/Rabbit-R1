package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: WindowRecomposer.android.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1", f = "WindowRecomposer.android.kt", i = {0}, l = {394}, m = "invokeSuspend", n = {"durationScaleJob"}, s = {"L$0"})
/* loaded from: classes.dex */
final class WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Recomposer $recomposer;
    final /* synthetic */ WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 $self;
    final /* synthetic */ LifecycleOwner $source;
    final /* synthetic */ Ref.ObjectRef<MotionDurationScaleImpl> $systemDurationScaleSettingConsumer;
    final /* synthetic */ View $this_createLifecycleAwareWindowRecomposer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(Ref.ObjectRef<MotionDurationScaleImpl> objectRef, Recomposer recomposer, LifecycleOwner lifecycleOwner, WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2, View view, Continuation<? super WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1> continuation) {
        super(2, continuation);
        this.$systemDurationScaleSettingConsumer = objectRef;
        this.$recomposer = recomposer;
        this.$source = lifecycleOwner;
        this.$self = windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;
        this.$this_createLifecycleAwareWindowRecomposer = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 = new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(this.$systemDurationScaleSettingConsumer, this.$recomposer, this.$source, this.$self, this.$this_createLifecycleAwareWindowRecomposer, continuation);
        windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1.L$0 = obj;
        return windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x008f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1f
            if (r1 != r2) goto L17
            java.lang.Object r0 = r11.L$0
            kotlinx.coroutines.Job r0 = (kotlinx.coroutines.Job) r0
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L14
            goto L71
        L14:
            r12 = move-exception
            goto L8d
        L17:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L1f:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.L$0
            r4 = r12
            kotlinx.coroutines.CoroutineScope r4 = (kotlinx.coroutines.CoroutineScope) r4
            kotlin.jvm.internal.Ref$ObjectRef<androidx.compose.ui.platform.MotionDurationScaleImpl> r12 = r11.$systemDurationScaleSettingConsumer     // Catch: java.lang.Throwable -> L8b
            T r12 = r12.element     // Catch: java.lang.Throwable -> L8b
            androidx.compose.ui.platform.MotionDurationScaleImpl r12 = (androidx.compose.ui.platform.MotionDurationScaleImpl) r12     // Catch: java.lang.Throwable -> L8b
            if (r12 == 0) goto L5f
            android.view.View r1 = r11.$this_createLifecycleAwareWindowRecomposer     // Catch: java.lang.Throwable -> L8b
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> L8b
            android.content.Context r1 = r1.getApplicationContext()     // Catch: java.lang.Throwable -> L8b
            java.lang.String r5 = "context.applicationContext"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r5)     // Catch: java.lang.Throwable -> L8b
            kotlinx.coroutines.flow.StateFlow r1 = androidx.compose.ui.platform.WindowRecomposer_androidKt.access$getAnimationScaleFlowFor(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.Object r5 = r1.getValue()     // Catch: java.lang.Throwable -> L8b
            java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.Throwable -> L8b
            float r5 = r5.floatValue()     // Catch: java.lang.Throwable -> L8b
            r12.setScaleFactor(r5)     // Catch: java.lang.Throwable -> L8b
            r5 = 0
            r6 = 0
            androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1 r7 = new androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1     // Catch: java.lang.Throwable -> L8b
            r7.<init>(r1, r12, r3)     // Catch: java.lang.Throwable -> L8b
            kotlin.jvm.functions.Function2 r7 = (kotlin.jvm.functions.Function2) r7     // Catch: java.lang.Throwable -> L8b
            r8 = 3
            r9 = 0
            kotlinx.coroutines.Job r12 = kotlinx.coroutines.BuildersKt.launch$default(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L8b
            goto L60
        L5f:
            r12 = r3
        L60:
            androidx.compose.runtime.Recomposer r1 = r11.$recomposer     // Catch: java.lang.Throwable -> L86
            r4 = r11
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4     // Catch: java.lang.Throwable -> L86
            r11.L$0 = r12     // Catch: java.lang.Throwable -> L86
            r11.label = r2     // Catch: java.lang.Throwable -> L86
            java.lang.Object r1 = r1.runRecomposeAndApplyChanges(r4)     // Catch: java.lang.Throwable -> L86
            if (r1 != r0) goto L70
            return r0
        L70:
            r0 = r12
        L71:
            if (r0 == 0) goto L76
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r0, r3, r2, r3)
        L76:
            androidx.lifecycle.LifecycleOwner r12 = r11.$source
            androidx.lifecycle.Lifecycle r12 = r12.getLifecycle()
            androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 r11 = r11.$self
            androidx.lifecycle.LifecycleObserver r11 = (androidx.lifecycle.LifecycleObserver) r11
            r12.removeObserver(r11)
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        L86:
            r0 = move-exception
            r10 = r0
            r0 = r12
            r12 = r10
            goto L8d
        L8b:
            r12 = move-exception
            r0 = r3
        L8d:
            if (r0 == 0) goto L92
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r0, r3, r2, r3)
        L92:
            androidx.lifecycle.LifecycleOwner r0 = r11.$source
            androidx.lifecycle.Lifecycle r0 = r0.getLifecycle()
            androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 r11 = r11.$self
            androidx.lifecycle.LifecycleObserver r11 = (androidx.lifecycle.LifecycleObserver) r11
            r0.removeObserver(r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
