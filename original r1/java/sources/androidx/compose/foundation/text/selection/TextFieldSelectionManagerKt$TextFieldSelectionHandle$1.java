package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: TextFieldSelectionManager.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$1", f = "TextFieldSelectionManager.kt", i = {}, l = {820}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class TextFieldSelectionManagerKt$TextFieldSelectionHandle$1 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ TextDragObserver $observer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManagerKt$TextFieldSelectionHandle$1(TextDragObserver textDragObserver, Continuation<? super TextFieldSelectionManagerKt$TextFieldSelectionHandle$1> continuation) {
        super(2, continuation);
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TextFieldSelectionManagerKt$TextFieldSelectionHandle$1 textFieldSelectionManagerKt$TextFieldSelectionHandle$1 = new TextFieldSelectionManagerKt$TextFieldSelectionHandle$1(this.$observer, continuation);
        textFieldSelectionManagerKt$TextFieldSelectionHandle$1.L$0 = obj;
        return textFieldSelectionManagerKt$TextFieldSelectionHandle$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
        return ((TextFieldSelectionManagerKt$TextFieldSelectionHandle$1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver((PointerInputScope) this.L$0, this.$observer, this) == coroutine_suspended) {
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
