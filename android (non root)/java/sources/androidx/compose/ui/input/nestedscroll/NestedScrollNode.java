package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import io.sentry.okhttp.SentryOkHttpEventListener;
import io.sentry.protocol.TransactionInfo;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: NestedScrollNode.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001cH\u0016J)\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001fH\u0096@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b\"\u0010#J-\u0010$\u001a\u00020%2\u0006\u0010 \u001a\u00020%2\u0006\u0010!\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b(\u0010)J!\u0010*\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001fH\u0096@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0001¢\u0006\u0004\b+\u0010,J%\u0010-\u001a\u00020%2\u0006\u0010!\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b.\u0010/J\b\u00100\u001a\u00020\u001cH\u0002J\u0012\u00101\u001a\u00020\u001c2\b\u00102\u001a\u0004\u0018\u00010\u0007H\u0002J\b\u00103\u001a\u00020\u001cH\u0002J\u001f\u00104\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0002\b5R\u001a\u0010\u0005\u001a\u00020\u0002X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\nR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00066"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;", "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "Landroidx/compose/ui/node/DelegatableNode;", "Landroidx/compose/ui/Modifier$Node;", SentryOkHttpEventListener.CONNECTION_EVENT, "dispatcher", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V", "getConnection", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "setConnection", "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V", "nestedCoroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "getNestedCoroutineScope", "()Lkotlinx/coroutines/CoroutineScope;", "parentConnection", "getParentConnection", "parentModifierLocal", "getParentModifierLocal", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;", "providedValues", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "getProvidedValues", "()Landroidx/compose/ui/modifier/ModifierLocalMap;", "resolvedDispatcher", "onAttach", "", "onDetach", "onPostFling", "Landroidx/compose/ui/unit/Velocity;", "consumed", "available", "onPostFling-RZ2iAVY", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPostScroll", "Landroidx/compose/ui/geometry/Offset;", TransactionInfo.JsonKeys.SOURCE, "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "onPostScroll-DzOQY0M", "(JJI)J", "onPreFling", "onPreFling-QWom1Mo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPreScroll", "onPreScroll-OzD1aCk", "(JI)J", "resetDispatcherFields", "updateDispatcher", "newDispatcher", "updateDispatcherFields", "updateNode", "updateNode$ui_release", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NestedScrollNode extends Modifier.Node implements ModifierLocalModifierNode, NestedScrollConnection, DelegatableNode {
    private NestedScrollConnection connection;
    private final ModifierLocalMap providedValues;
    private NestedScrollDispatcher resolvedDispatcher;

    public final NestedScrollConnection getConnection() {
        return this.connection;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public ModifierLocalMap getProvidedValues() {
        return this.providedValues;
    }

    public final void setConnection(NestedScrollConnection nestedScrollConnection) {
        Intrinsics.checkNotNullParameter(nestedScrollConnection, "<set-?>");
        this.connection = nestedScrollConnection;
    }

    public NestedScrollNode(NestedScrollConnection connection, NestedScrollDispatcher nestedScrollDispatcher) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.connection = connection;
        this.resolvedDispatcher = nestedScrollDispatcher == null ? new NestedScrollDispatcher() : nestedScrollDispatcher;
        this.providedValues = ModifierLocalModifierNodeKt.modifierLocalMapOf(TuplesKt.to(NestedScrollNodeKt.getModifierLocalNestedScroll(), this));
    }

    private final NestedScrollNode getParentModifierLocal() {
        if (getIsAttached()) {
            return (NestedScrollNode) getCurrent(NestedScrollNodeKt.getModifierLocalNestedScroll());
        }
        return null;
    }

    private final NestedScrollConnection getParentConnection() {
        if (getIsAttached()) {
            return (NestedScrollConnection) getCurrent(NestedScrollNodeKt.getModifierLocalNestedScroll());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoroutineScope getNestedCoroutineScope() {
        CoroutineScope scope;
        NestedScrollNode parentModifierLocal = getParentModifierLocal();
        if ((parentModifierLocal == null || (scope = parentModifierLocal.getNestedCoroutineScope()) == null) && (scope = this.resolvedDispatcher.getScope()) == null) {
            throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        }
        return scope;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public long mo344onPreScrollOzD1aCk(long available, int source) {
        NestedScrollConnection parentConnection = getParentConnection();
        long mo344onPreScrollOzD1aCk = parentConnection != null ? parentConnection.mo344onPreScrollOzD1aCk(available, source) : Offset.INSTANCE.m2416getZeroF1C5BW0();
        return Offset.m2405plusMKHz9U(mo344onPreScrollOzD1aCk, this.connection.mo344onPreScrollOzD1aCk(Offset.m2404minusMKHz9U(available, mo344onPreScrollOzD1aCk), source));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public long mo343onPostScrollDzOQY0M(long consumed, long available, int source) {
        long m2416getZeroF1C5BW0;
        long mo343onPostScrollDzOQY0M = this.connection.mo343onPostScrollDzOQY0M(consumed, available, source);
        NestedScrollConnection parentConnection = getParentConnection();
        if (parentConnection != null) {
            m2416getZeroF1C5BW0 = parentConnection.mo343onPostScrollDzOQY0M(Offset.m2405plusMKHz9U(consumed, mo343onPostScrollDzOQY0M), Offset.m2404minusMKHz9U(available, mo343onPostScrollDzOQY0M), source);
        } else {
            m2416getZeroF1C5BW0 = Offset.INSTANCE.m2416getZeroF1C5BW0();
        }
        return Offset.m2405plusMKHz9U(mo343onPostScrollDzOQY0M, m2416getZeroF1C5BW0);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo567onPreFlingQWom1Mo(long r9, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1
            if (r0 == 0) goto L14
            r0 = r11
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1
            r0.<init>(r8, r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            long r8 = r0.J$0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7f
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L37:
            long r8 = r0.J$0
            java.lang.Object r10 = r0.L$0
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r10 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode) r10
            kotlin.ResultKt.throwOnFailure(r11)
            r6 = r8
            r8 = r10
            r9 = r6
            goto L5a
        L44:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r11 = r8.getParentConnection()
            if (r11 == 0) goto L61
            r0.L$0 = r8
            r0.J$0 = r9
            r0.label = r4
            java.lang.Object r11 = r11.mo567onPreFlingQWom1Mo(r9, r0)
            if (r11 != r1) goto L5a
            return r1
        L5a:
            androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
            long r4 = r11.getPackedValue()
            goto L67
        L61:
            androidx.compose.ui.unit.Velocity$Companion r11 = androidx.compose.ui.unit.Velocity.INSTANCE
            long r4 = r11.m5119getZero9UxMQ8M()
        L67:
            r6 = r9
            r10 = r8
            r8 = r4
            r4 = r6
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r10 = r10.connection
            long r4 = androidx.compose.ui.unit.Velocity.m5111minusAH228Gc(r4, r8)
            r11 = 0
            r0.L$0 = r11
            r0.J$0 = r8
            r0.label = r3
            java.lang.Object r11 = r10.mo567onPreFlingQWom1Mo(r4, r0)
            if (r11 != r1) goto L7f
            return r1
        L7f:
            androidx.compose.ui.unit.Velocity r11 = (androidx.compose.ui.unit.Velocity) r11
            long r10 = r11.getPackedValue()
            long r8 = androidx.compose.ui.unit.Velocity.m5112plusAH228Gc(r8, r10)
            androidx.compose.ui.unit.Velocity r8 = androidx.compose.ui.unit.Velocity.m5099boximpl(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollNode.mo567onPreFlingQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo342onPostFlingRZ2iAVY(long r16, long r18, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r20) {
        /*
            r15 = this;
            r0 = r15
            r1 = r20
            boolean r2 = r1 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1
            if (r2 == 0) goto L17
            r2 = r1
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1 r2 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r3 & r4
            if (r3 == 0) goto L17
            int r1 = r2.label
            int r1 = r1 - r4
            r2.label = r1
            goto L1c
        L17:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1 r2 = new androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPostFling$1
            r2.<init>(r15, r1)
        L1c:
            java.lang.Object r1 = r2.result
            java.lang.Object r9 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r2.label
            r10 = 2
            r4 = 1
            if (r3 == 0) goto L48
            if (r3 == r4) goto L3a
            if (r3 != r10) goto L32
            long r2 = r2.J$0
            kotlin.ResultKt.throwOnFailure(r1)
            goto L8f
        L32:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3a:
            long r3 = r2.J$1
            long r5 = r2.J$0
            java.lang.Object r0 = r2.L$0
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode) r0
            kotlin.ResultKt.throwOnFailure(r1)
            r13 = r3
            r11 = r5
            goto L65
        L48:
            kotlin.ResultKt.throwOnFailure(r1)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r3 = r0.connection
            r2.L$0 = r0
            r11 = r16
            r2.J$0 = r11
            r13 = r18
            r2.J$1 = r13
            r2.label = r4
            r4 = r16
            r6 = r18
            r8 = r2
            java.lang.Object r1 = r3.mo342onPostFlingRZ2iAVY(r4, r6, r8)
            if (r1 != r9) goto L65
            return r9
        L65:
            androidx.compose.ui.unit.Velocity r1 = (androidx.compose.ui.unit.Velocity) r1
            long r3 = r1.getPackedValue()
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r0 = r0.getParentConnection()
            if (r0 == 0) goto L97
            long r5 = androidx.compose.ui.unit.Velocity.m5112plusAH228Gc(r11, r3)
            long r7 = androidx.compose.ui.unit.Velocity.m5111minusAH228Gc(r13, r3)
            r1 = 0
            r2.L$0 = r1
            r2.J$0 = r3
            r2.label = r10
            r15 = r0
            r16 = r5
            r18 = r7
            r20 = r2
            java.lang.Object r1 = r15.mo342onPostFlingRZ2iAVY(r16, r18, r20)
            if (r1 != r9) goto L8e
            return r9
        L8e:
            r2 = r3
        L8f:
            androidx.compose.ui.unit.Velocity r1 = (androidx.compose.ui.unit.Velocity) r1
            long r0 = r1.getPackedValue()
            r3 = r2
            goto L9d
        L97:
            androidx.compose.ui.unit.Velocity$Companion r0 = androidx.compose.ui.unit.Velocity.INSTANCE
            long r0 = r0.m5119getZero9UxMQ8M()
        L9d:
            long r0 = androidx.compose.ui.unit.Velocity.m5112plusAH228Gc(r3, r0)
            androidx.compose.ui.unit.Velocity r0 = androidx.compose.ui.unit.Velocity.m5099boximpl(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollNode.mo342onPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void updateDispatcher(NestedScrollDispatcher newDispatcher) {
        resetDispatcherFields();
        if (newDispatcher == null) {
            this.resolvedDispatcher = new NestedScrollDispatcher();
        } else if (!Intrinsics.areEqual(newDispatcher, this.resolvedDispatcher)) {
            this.resolvedDispatcher = newDispatcher;
        }
        if (getIsAttached()) {
            updateDispatcherFields();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateDispatcherFields();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        resetDispatcherFields();
    }

    private final void updateDispatcherFields() {
        this.resolvedDispatcher.setModifierLocalNode$ui_release(this);
        this.resolvedDispatcher.setCalculateNestedScrollScope$ui_release(new Function0<CoroutineScope>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollNode$updateDispatcherFields$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineScope invoke() {
                CoroutineScope nestedCoroutineScope;
                nestedCoroutineScope = NestedScrollNode.this.getNestedCoroutineScope();
                return nestedCoroutineScope;
            }
        });
        this.resolvedDispatcher.setScope$ui_release(getCoroutineScope());
    }

    private final void resetDispatcherFields() {
        if (this.resolvedDispatcher.getModifierLocalNode() == this) {
            this.resolvedDispatcher.setModifierLocalNode$ui_release(null);
        }
    }

    public final void updateNode$ui_release(NestedScrollConnection connection, NestedScrollDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.connection = connection;
        updateDispatcher(dispatcher);
    }
}
