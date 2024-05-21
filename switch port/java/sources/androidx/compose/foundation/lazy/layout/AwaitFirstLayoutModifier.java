package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AwaitFirstLayoutModifier.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0011\u0010\u000b\u001a\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\fR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;", "Landroidx/compose/ui/layout/OnGloballyPositionedModifier;", "()V", "continuation", "Lkotlin/coroutines/Continuation;", "", "wasPositioned", "", "onGloballyPositioned", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "waitForFirstLayout", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AwaitFirstLayoutModifier implements OnGloballyPositionedModifier {
    private Continuation<? super Unit> continuation;
    private boolean wasPositioned;

    /* JADX WARN: Removed duplicated region for block: B:11:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object waitForFirstLayout(kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier$waitForFirstLayout$1
            if (r0 == 0) goto L14
            r0 = r5
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier$waitForFirstLayout$1 r0 = (androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier$waitForFirstLayout$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r5 = r0.label
            int r5 = r5 - r2
            r0.label = r5
            goto L19
        L14:
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier$waitForFirstLayout$1 r0 = new androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier$waitForFirstLayout$1
            r0.<init>(r4, r5)
        L19:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r4 = r0.L$1
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            java.lang.Object r0 = r0.L$0
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier r0 = (androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier) r0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L6a
        L32:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3a:
            kotlin.ResultKt.throwOnFailure(r5)
            boolean r5 = r4.wasPositioned
            if (r5 != 0) goto L77
            kotlin.coroutines.Continuation<? super kotlin.Unit> r5 = r4.continuation
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            kotlin.coroutines.Continuation r0 = (kotlin.coroutines.Continuation) r0
            kotlin.coroutines.SafeContinuation r2 = new kotlin.coroutines.SafeContinuation
            kotlin.coroutines.Continuation r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)
            r2.<init>(r3)
            r3 = r2
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r4.continuation = r3
            java.lang.Object r4 = r2.getOrThrow()
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r2) goto L66
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L66:
            if (r4 != r1) goto L69
            return r1
        L69:
            r4 = r5
        L6a:
            if (r4 == 0) goto L77
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            java.lang.Object r5 = kotlin.Result.m5698constructorimpl(r5)
            r4.resumeWith(r5)
        L77:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier.waitForFirstLayout(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.layout.OnGloballyPositionedModifier
    public void onGloballyPositioned(LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        if (this.wasPositioned) {
            return;
        }
        this.wasPositioned = true;
        Continuation<? super Unit> continuation = this.continuation;
        if (continuation != null) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m5698constructorimpl(Unit.INSTANCE));
        }
        this.continuation = null;
    }
}
