package tech.rabbit.r1launcher.utils;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CameraController.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.utils.CameraController$rotateTo$1", f = "CameraController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CameraController$rotateTo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
    final /* synthetic */ String $angle;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraController$rotateTo$1(String str, Continuation<? super CameraController$rotateTo$1> continuation) {
        super(2, continuation);
        this.$angle = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CameraController$rotateTo$1 cameraController$rotateTo$1 = new CameraController$rotateTo$1(this.$angle, continuation);
        cameraController$rotateTo$1.L$0 = obj;
        return cameraController$rotateTo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Job> continuation) {
        return ((CameraController$rotateTo$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CameraController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.rabbit.r1launcher.utils.CameraController$rotateTo$1$1", f = "CameraController.kt", i = {0}, l = {70}, m = "invokeSuspend", n = {"printErrorStack$iv"}, s = {"I$0"})
    /* renamed from: tech.rabbit.r1launcher.utils.CameraController$rotateTo$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $angle;
        int I$0;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$angle = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$angle, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0056  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L20
                if (r1 != r3) goto L18
                int r0 = r5.I$0
                java.lang.Object r5 = r5.L$0
                java.lang.String r5 = (java.lang.String) r5
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L16
                goto L3c
            L16:
                r5 = move-exception
                goto L50
            L18:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L20:
                kotlin.ResultKt.throwOnFailure(r6)
                java.lang.String r6 = r5.$angle
                boolean r1 = tech.rabbit.r1launcher.utils.CameraController.access$getNeedRotateDelay$p()     // Catch: java.lang.Throwable -> L4e
                if (r1 == 0) goto L3e
                r5.L$0 = r6     // Catch: java.lang.Throwable -> L4e
                r5.I$0 = r2     // Catch: java.lang.Throwable -> L4e
                r5.label = r3     // Catch: java.lang.Throwable -> L4e
                r3 = 1500(0x5dc, double:7.41E-321)
                java.lang.Object r5 = kotlinx.coroutines.DelayKt.delay(r3, r5)     // Catch: java.lang.Throwable -> L4e
                if (r5 != r0) goto L3a
                return r0
            L3a:
                r5 = r6
                r0 = r2
            L3c:
                r6 = r5
                goto L3f
            L3e:
                r0 = r2
            L3f:
                java.io.File r5 = new java.io.File     // Catch: java.lang.Throwable -> L16
                java.lang.String r1 = "/sys/devices/platform/step_motor_ms35774/orientation"
                r5.<init>(r1)     // Catch: java.lang.Throwable -> L16
                r1 = 2
                r3 = 0
                kotlin.io.FilesKt.writeText$default(r5, r6, r3, r1, r3)     // Catch: java.lang.Throwable -> L16
                kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L16
                goto L6e
            L4e:
                r5 = move-exception
                r0 = r2
            L50:
                if (r0 == 0) goto L56
                r5.printStackTrace()
                goto L6e
            L56:
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                java.lang.String r0 = "catched Exception : "
                r6.<init>(r0)
                java.lang.String r5 = r5.getMessage()
                java.lang.StringBuilder r5 = r6.append(r5)
                java.lang.String r5 = r5.toString()
                java.lang.String r6 = "KotUtil"
                android.util.Log.e(r6, r5)
            L6e:
                tech.rabbit.r1launcher.utils.CameraController r5 = tech.rabbit.r1launcher.utils.CameraController.INSTANCE
                tech.rabbit.r1launcher.utils.CameraController.access$setNeedRotateDelay$p(r2)
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.utils.CameraController$rotateTo$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Job launch$default;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            launch$default = BuildersKt__Builders_commonKt.launch$default((CoroutineScope) this.L$0, Dispatchers.getIO(), null, new AnonymousClass1(this.$angle, null), 2, null);
            return launch$default;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
