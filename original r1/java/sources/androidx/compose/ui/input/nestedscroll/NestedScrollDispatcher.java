package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import io.sentry.protocol.TransactionInfo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: NestedScrollModifier.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J)\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cH\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010 J+\u0010!\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\"2\u0006\u0010#\u001a\u00020$ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b%\u0010&J!\u0010'\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cH\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b(\u0010)J#\u0010*\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\"2\u0006\u0010#\u001a\u00020$ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b+\u0010,R\"\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00148@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\f\"\u0004\b\u0019\u0010\u001a\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006-"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "", "()V", "calculateNestedScrollScope", "Lkotlin/Function0;", "Lkotlinx/coroutines/CoroutineScope;", "getCalculateNestedScrollScope$ui_release", "()Lkotlin/jvm/functions/Function0;", "setCalculateNestedScrollScope$ui_release", "(Lkotlin/jvm/functions/Function0;)V", "coroutineScope", "getCoroutineScope", "()Lkotlinx/coroutines/CoroutineScope;", "modifierLocalNode", "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "getModifierLocalNode$ui_release", "()Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "setModifierLocalNode$ui_release", "(Landroidx/compose/ui/modifier/ModifierLocalModifierNode;)V", "parent", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "getParent$ui_release", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "scope", "getScope$ui_release", "setScope$ui_release", "(Lkotlinx/coroutines/CoroutineScope;)V", "dispatchPostFling", "Landroidx/compose/ui/unit/Velocity;", "consumed", "available", "dispatchPostFling-RZ2iAVY", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dispatchPostScroll", "Landroidx/compose/ui/geometry/Offset;", TransactionInfo.JsonKeys.SOURCE, "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "dispatchPostScroll-DzOQY0M", "(JJI)J", "dispatchPreFling", "dispatchPreFling-QWom1Mo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dispatchPreScroll", "dispatchPreScroll-OzD1aCk", "(JI)J", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NestedScrollDispatcher {
    public static final int $stable = 8;
    private Function0<? extends CoroutineScope> calculateNestedScrollScope = new Function0<CoroutineScope>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$calculateNestedScrollScope$1
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CoroutineScope invoke() {
            return NestedScrollDispatcher.this.getScope();
        }
    };
    private ModifierLocalModifierNode modifierLocalNode;
    private CoroutineScope scope;

    public final Function0<CoroutineScope> getCalculateNestedScrollScope$ui_release() {
        return this.calculateNestedScrollScope;
    }

    /* renamed from: getModifierLocalNode$ui_release, reason: from getter */
    public final ModifierLocalModifierNode getModifierLocalNode() {
        return this.modifierLocalNode;
    }

    /* renamed from: getScope$ui_release, reason: from getter */
    public final CoroutineScope getScope() {
        return this.scope;
    }

    public final void setCalculateNestedScrollScope$ui_release(Function0<? extends CoroutineScope> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.calculateNestedScrollScope = function0;
    }

    public final void setModifierLocalNode$ui_release(ModifierLocalModifierNode modifierLocalModifierNode) {
        this.modifierLocalNode = modifierLocalModifierNode;
    }

    public final void setScope$ui_release(CoroutineScope coroutineScope) {
        this.scope = coroutineScope;
    }

    public final CoroutineScope getCoroutineScope() {
        CoroutineScope invoke = this.calculateNestedScrollScope.invoke();
        if (invoke != null) {
            return invoke;
        }
        throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
    }

    public final NestedScrollConnection getParent$ui_release() {
        ModifierLocalModifierNode modifierLocalModifierNode = this.modifierLocalNode;
        return modifierLocalModifierNode != null ? (NestedScrollNode) modifierLocalModifierNode.getCurrent(NestedScrollNodeKt.getModifierLocalNestedScroll()) : null;
    }

    /* renamed from: dispatchPreScroll-OzD1aCk, reason: not valid java name */
    public final long m3646dispatchPreScrollOzD1aCk(long available, int source) {
        NestedScrollConnection parent$ui_release = getParent$ui_release();
        return parent$ui_release != null ? parent$ui_release.mo344onPreScrollOzD1aCk(available, source) : Offset.INSTANCE.m2416getZeroF1C5BW0();
    }

    /* renamed from: dispatchPostScroll-DzOQY0M, reason: not valid java name */
    public final long m3644dispatchPostScrollDzOQY0M(long consumed, long available, int source) {
        NestedScrollConnection parent$ui_release = getParent$ui_release();
        return parent$ui_release != null ? parent$ui_release.mo343onPostScrollDzOQY0M(consumed, available, source) : Offset.INSTANCE.m2416getZeroF1C5BW0();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: dispatchPreFling-QWom1Mo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3645dispatchPreFlingQWom1Mo(long r5, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1
            if (r0 == 0) goto L14
            r0 = r7
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1
            r0.<init>(r4, r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L44
        L2a:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r4 = r4.getParent$ui_release()
            if (r4 == 0) goto L4b
            r0.label = r3
            java.lang.Object r7 = r4.mo567onPreFlingQWom1Mo(r5, r0)
            if (r7 != r1) goto L44
            return r1
        L44:
            androidx.compose.ui.unit.Velocity r7 = (androidx.compose.ui.unit.Velocity) r7
            long r4 = r7.getPackedValue()
            goto L51
        L4b:
            androidx.compose.ui.unit.Velocity$Companion r4 = androidx.compose.ui.unit.Velocity.INSTANCE
            long r4 = r4.m5119getZero9UxMQ8M()
        L51:
            androidx.compose.ui.unit.Velocity r4 = androidx.compose.ui.unit.Velocity.m5099boximpl(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher.m3645dispatchPreFlingQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* renamed from: dispatchPostFling-RZ2iAVY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3643dispatchPostFlingRZ2iAVY(long r8, long r10, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r12) {
        /*
            r7 = this;
            boolean r0 = r12 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1
            if (r0 == 0) goto L14
            r0 = r12
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1
            r0.<init>(r7, r12)
        L19:
            r6 = r0
            java.lang.Object r12 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L33
            if (r1 != r2) goto L2b
            kotlin.ResultKt.throwOnFailure(r12)
            goto L47
        L2b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L33:
            kotlin.ResultKt.throwOnFailure(r12)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r1 = r7.getParent$ui_release()
            if (r1 == 0) goto L4e
            r6.label = r2
            r2 = r8
            r4 = r10
            java.lang.Object r12 = r1.mo342onPostFlingRZ2iAVY(r2, r4, r6)
            if (r12 != r0) goto L47
            return r0
        L47:
            androidx.compose.ui.unit.Velocity r12 = (androidx.compose.ui.unit.Velocity) r12
            long r7 = r12.getPackedValue()
            goto L54
        L4e:
            androidx.compose.ui.unit.Velocity$Companion r7 = androidx.compose.ui.unit.Velocity.INSTANCE
            long r7 = r7.m5119getZero9UxMQ8M()
        L54:
            androidx.compose.ui.unit.Velocity r7 = androidx.compose.ui.unit.Velocity.m5099boximpl(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher.m3643dispatchPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
