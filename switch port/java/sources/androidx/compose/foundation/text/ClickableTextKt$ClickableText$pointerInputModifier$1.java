package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ClickableText.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.ClickableTextKt$ClickableText$pointerInputModifier$1", f = "ClickableText.kt", i = {}, l = {174}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class ClickableTextKt$ClickableText$pointerInputModifier$1 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CoroutineScope $coroutineScope;
    final /* synthetic */ MutableState<TextLayoutResult> $layoutResult;
    final /* synthetic */ Function1<Integer, Unit> $onClick;
    final /* synthetic */ Function1<Integer, Unit> $onHover;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ClickableTextKt$ClickableText$pointerInputModifier$1(CoroutineScope coroutineScope, Function1<? super Integer, Unit> function1, MutableState<TextLayoutResult> mutableState, Function1<? super Integer, Unit> function12, Continuation<? super ClickableTextKt$ClickableText$pointerInputModifier$1> continuation) {
        super(2, continuation);
        this.$coroutineScope = coroutineScope;
        this.$onHover = function1;
        this.$layoutResult = mutableState;
        this.$onClick = function12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ClickableTextKt$ClickableText$pointerInputModifier$1 clickableTextKt$ClickableText$pointerInputModifier$1 = new ClickableTextKt$ClickableText$pointerInputModifier$1(this.$coroutineScope, this.$onHover, this.$layoutResult, this.$onClick, continuation);
        clickableTextKt$ClickableText$pointerInputModifier$1.L$0 = obj;
        return clickableTextKt$ClickableText$pointerInputModifier$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
        return ((ClickableTextKt$ClickableText$pointerInputModifier$1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClickableText.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.ClickableTextKt$ClickableText$pointerInputModifier$1$1", f = "ClickableText.kt", i = {}, l = {165}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.compose.foundation.text.ClickableTextKt$ClickableText$pointerInputModifier$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PointerInputScope $$this$pointerInput;
        final /* synthetic */ MutableState<TextLayoutResult> $layoutResult;
        final /* synthetic */ Function1<Integer, Unit> $onHover;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PointerInputScope pointerInputScope, Function1<? super Integer, Unit> function1, MutableState<TextLayoutResult> mutableState, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$$this$pointerInput = pointerInputScope;
            this.$onHover = function1;
            this.$layoutResult = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$$this$pointerInput, this.$onHover, this.$layoutResult, continuation);
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
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                PointerInputScope pointerInputScope = this.$$this$pointerInput;
                PointerEventPass pointerEventPass = PointerEventPass.Main;
                final Function1<Integer, Unit> function1 = this.$onHover;
                final MutableState<TextLayoutResult> mutableState = this.$layoutResult;
                this.label = 1;
                if (PointerMoveDetectorKt.detectMoves(pointerInputScope, pointerEventPass, new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.text.ClickableTextKt.ClickableText.pointerInputModifier.1.1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                        m757invokek4lQ0M(offset.getPackedValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object, java.lang.Integer] */
                    /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                    public final void m757invokek4lQ0M(long j) {
                        ?? ClickableText_03UYbkw$getOffset;
                        ClickableText_03UYbkw$getOffset = ClickableTextKt.ClickableText_03UYbkw$getOffset(mutableState, j);
                        if (Intrinsics.areEqual(objectRef.element, (Object) ClickableText_03UYbkw$getOffset)) {
                            return;
                        }
                        objectRef.element = ClickableText_03UYbkw$getOffset;
                        function1.invoke(ClickableText_03UYbkw$getOffset);
                    }
                }, this) == coroutine_suspended) {
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
            PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
            BuildersKt__Builders_commonKt.launch$default(this.$coroutineScope, null, null, new AnonymousClass1(pointerInputScope, this.$onHover, this.$layoutResult, null), 3, null);
            final Function1<Integer, Unit> function1 = this.$onClick;
            final MutableState<TextLayoutResult> mutableState = this.$layoutResult;
            this.label = 1;
            if (TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, null, new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.text.ClickableTextKt$ClickableText$pointerInputModifier$1.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m758invokek4lQ0M(offset.getPackedValue());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
                public final void m758invokek4lQ0M(long j) {
                    Integer ClickableText_03UYbkw$getOffset;
                    ClickableText_03UYbkw$getOffset = ClickableTextKt.ClickableText_03UYbkw$getOffset(mutableState, j);
                    if (ClickableText_03UYbkw$getOffset != null) {
                        function1.invoke(ClickableText_03UYbkw$getOffset);
                    }
                }
            }, this, 7, null) == coroutine_suspended) {
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
