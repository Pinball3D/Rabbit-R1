package androidx.compose.foundation;

import androidx.appcompat.app.AppCompatDelegate;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Hoverable.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.HoverableNode", f = "Hoverable.kt", i = {0, 0}, l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR}, m = "emitEnter", n = {"this", "interaction"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class HoverableNode$emitEnter$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ HoverableNode this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HoverableNode$emitEnter$1(HoverableNode hoverableNode, Continuation<? super HoverableNode$emitEnter$1> continuation) {
        super(continuation);
        this.this$0 = hoverableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emitEnter(this);
    }
}
