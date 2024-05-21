package tech.rabbit.r1launcher.camera;

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
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CameraManager.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.camera.CameraManager$flipTextureViewWithDelay$1", f = "CameraManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CameraManager$flipTextureViewWithDelay$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
    final /* synthetic */ long $delay;
    final /* synthetic */ boolean $isFront;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraManager$flipTextureViewWithDelay$1(long j, boolean z, Continuation<? super CameraManager$flipTextureViewWithDelay$1> continuation) {
        super(2, continuation);
        this.$delay = j;
        this.$isFront = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CameraManager$flipTextureViewWithDelay$1 cameraManager$flipTextureViewWithDelay$1 = new CameraManager$flipTextureViewWithDelay$1(this.$delay, this.$isFront, continuation);
        cameraManager$flipTextureViewWithDelay$1.L$0 = obj;
        return cameraManager$flipTextureViewWithDelay$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Job> continuation) {
        return ((CameraManager$flipTextureViewWithDelay$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CameraManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.rabbit.r1launcher.camera.CameraManager$flipTextureViewWithDelay$1$1", f = "CameraManager.kt", i = {}, l = {153}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: tech.rabbit.r1launcher.camera.CameraManager$flipTextureViewWithDelay$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $delay;
        final /* synthetic */ boolean $isFront;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, boolean z, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$delay = j;
            this.$isFront = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$delay, this.$isFront, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(this.$delay, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            CameraManager.INSTANCE.flipTextureView(this.$isFront);
            return Unit.INSTANCE;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Job launch$default;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            launch$default = BuildersKt__Builders_commonKt.launch$default((CoroutineScope) this.L$0, null, null, new AnonymousClass1(this.$delay, this.$isFront, null), 3, null);
            return launch$default;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
