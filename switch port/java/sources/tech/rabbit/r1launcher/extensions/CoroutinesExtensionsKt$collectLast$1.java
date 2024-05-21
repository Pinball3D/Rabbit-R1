package tech.rabbit.r1launcher.extensions;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.FlowExtKt;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutinesExtensions.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.extensions.CoroutinesExtensionsKt$collectLast$1", f = "CoroutinesExtensions.kt", i = {}, l = {19}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CoroutinesExtensionsKt$collectLast$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<T, Continuation<? super Unit>, Object> $action;
    final /* synthetic */ Flow<T> $flow;
    final /* synthetic */ LifecycleOwner $this_collectLast;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutinesExtensionsKt$collectLast$1(Flow<? extends T> flow, LifecycleOwner lifecycleOwner, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super CoroutinesExtensionsKt$collectLast$1> continuation) {
        super(2, continuation);
        this.$flow = flow;
        this.$this_collectLast = lifecycleOwner;
        this.$action = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CoroutinesExtensionsKt$collectLast$1(this.$flow, this.$this_collectLast, this.$action, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CoroutinesExtensionsKt$collectLast$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: CoroutinesExtensions.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.rabbit.r1launcher.extensions.CoroutinesExtensionsKt$collectLast$1$1", f = "CoroutinesExtensions.kt", i = {}, l = {19}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: tech.rabbit.r1launcher.extensions.CoroutinesExtensionsKt$collectLast$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1<T> extends SuspendLambda implements Function2<T, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<T, Continuation<? super Unit>, Object> $action;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$action = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$action, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
            return invoke2((AnonymousClass1<T>) obj, continuation);
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(T t, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.L$0;
                Function2<T, Continuation<? super Unit>, Object> function2 = this.$action;
                this.label = 1;
                if (function2.invoke(obj2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (FlowKt.collectLatest(FlowExtKt.flowWithLifecycle$default(this.$flow, this.$this_collectLast.getLifecycle(), null, 2, null), new AnonymousClass1(this.$action, null), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
