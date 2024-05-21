package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.SoftKeyboardInterceptionModifierNode;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: FocusOwnerImpl.kt */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u001d\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b \u0010!J\u001d\u0010\"\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b#\u0010!J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020&H\u0016J\n\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u001d\u0010)\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020+H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b,\u0010-J\b\u0010.\u001a\u00020\u0005H\u0016J\u0010\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u000201H\u0016J\u0010\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u000202H\u0016J\u0010\u0010/\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u0014H\u0016J\b\u00103\u001a\u00020\u0005H\u0016J\u001d\u00104\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020+H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b5\u0010-J\u000e\u00106\u001a\u0004\u0018\u000107*\u000208H\u0002J\\\u00109\u001a\u00020\u0005\"\n\b\u0000\u0010:\u0018\u0001*\u000208*\u0002082\f\u0010;\u001a\b\u0012\u0004\u0012\u0002H:0<2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u0002H:\u0012\u0004\u0012\u00020\u00050\u00032\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u0002H:\u0012\u0004\u0012\u00020\u00050\u0003H\u0082\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b?\u0010@R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006A"}, d2 = {"Landroidx/compose/ui/focus/FocusOwnerImpl;", "Landroidx/compose/ui/focus/FocusOwner;", "onRequestApplyChangesListener", "Lkotlin/Function1;", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function1;)V", "focusInvalidationManager", "Landroidx/compose/ui/focus/FocusInvalidationManager;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "modifier", "Landroidx/compose/ui/Modifier;", "getModifier", "()Landroidx/compose/ui/Modifier;", "rootFocusNode", "Landroidx/compose/ui/focus/FocusTargetNode;", "getRootFocusNode$ui_release", "()Landroidx/compose/ui/focus/FocusTargetNode;", "setRootFocusNode$ui_release", "(Landroidx/compose/ui/focus/FocusTargetNode;)V", "clearFocus", "force", "", "refreshFocusEvents", "dispatchInterceptedSoftKeyboardEvent", "keyEvent", "Landroidx/compose/ui/input/key/KeyEvent;", "dispatchInterceptedSoftKeyboardEvent-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "dispatchKeyEvent", "dispatchKeyEvent-ZmokQxo", "dispatchRotaryEvent", NotificationCompat.CATEGORY_EVENT, "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;", "getFocusRect", "Landroidx/compose/ui/geometry/Rect;", "moveFocus", "focusDirection", "Landroidx/compose/ui/focus/FocusDirection;", "moveFocus-3ESFkO8", "(I)Z", "releaseFocus", "scheduleInvalidation", "node", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;", "takeFocus", "wrapAroundFocus", "wrapAroundFocus-3ESFkO8", "lastLocalKeyInputNode", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DelegatableNode;", "traverseAncestors", ExifInterface.GPS_DIRECTION_TRUE, "type", "Landroidx/compose/ui/node/NodeKind;", "onPreVisit", "onVisit", "traverseAncestors-Y-YKmho", "(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FocusOwnerImpl implements FocusOwner {
    private final FocusInvalidationManager focusInvalidationManager;
    public LayoutDirection layoutDirection;
    private final Modifier modifier;
    private FocusTargetNode rootFocusNode;

    /* compiled from: FocusOwnerImpl.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Modifier getModifier() {
        return this.modifier;
    }

    /* renamed from: getRootFocusNode$ui_release, reason: from getter */
    public final FocusTargetNode getRootFocusNode() {
        return this.rootFocusNode;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void setLayoutDirection(LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
        this.layoutDirection = layoutDirection;
    }

    public final void setRootFocusNode$ui_release(FocusTargetNode focusTargetNode) {
        Intrinsics.checkNotNullParameter(focusTargetNode, "<set-?>");
        this.rootFocusNode = focusTargetNode;
    }

    public FocusOwnerImpl(Function1<? super Function0<Unit>, Unit> onRequestApplyChangesListener) {
        Intrinsics.checkNotNullParameter(onRequestApplyChangesListener, "onRequestApplyChangesListener");
        this.rootFocusNode = new FocusTargetNode();
        this.focusInvalidationManager = new FocusInvalidationManager(onRequestApplyChangesListener);
        this.modifier = new ModifierNodeElement<FocusTargetNode>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$1
            @Override // androidx.compose.ui.node.ModifierNodeElement
            public boolean equals(Object other) {
                return other == this;
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public void update(FocusTargetNode node) {
                Intrinsics.checkNotNullParameter(node, "node");
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public FocusTargetNode create() {
                return FocusOwnerImpl.this.getRootFocusNode();
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public void inspectableProperties(InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
                inspectorInfo.setName("RootFocusTarget");
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public int hashCode() {
                return FocusOwnerImpl.this.getRootFocusNode().hashCode();
            }
        };
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public LayoutDirection getLayoutDirection() {
        LayoutDirection layoutDirection = this.layoutDirection;
        if (layoutDirection != null) {
            return layoutDirection;
        }
        Intrinsics.throwUninitializedPropertyAccessException("layoutDirection");
        return null;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void takeFocus() {
        if (this.rootFocusNode.getFocusState() == FocusStateImpl.Inactive) {
            this.rootFocusNode.setFocusState(FocusStateImpl.Active);
        }
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void releaseFocus() {
        FocusTransactionsKt.clearFocus(this.rootFocusNode, true, true);
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public void clearFocus(boolean force) {
        clearFocus(force, true);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void clearFocus(boolean force, boolean refreshFocusEvents) {
        FocusStateImpl focusStateImpl;
        if (!force) {
            int i = WhenMappings.$EnumSwitchMapping$0[FocusTransactionsKt.m2348performCustomClearFocusMxy_nc0(this.rootFocusNode, FocusDirection.INSTANCE.m2329getExitdhqQ8s()).ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                return;
            }
        }
        FocusStateImpl focusState = this.rootFocusNode.getFocusState();
        if (FocusTransactionsKt.clearFocus(this.rootFocusNode, force, refreshFocusEvents)) {
            FocusTargetNode focusTargetNode = this.rootFocusNode;
            int i2 = WhenMappings.$EnumSwitchMapping$1[focusState.ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                focusStateImpl = FocusStateImpl.Active;
            } else {
                if (i2 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                focusStateImpl = FocusStateImpl.Inactive;
            }
            focusTargetNode.setFocusState(focusStateImpl);
        }
    }

    @Override // androidx.compose.ui.focus.FocusManager
    /* renamed from: moveFocus-3ESFkO8 */
    public boolean mo2337moveFocus3ESFkO8(final int focusDirection) {
        final FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode == null) {
            return false;
        }
        FocusRequester m2352customFocusSearchOMvw8 = FocusTraversalKt.m2352customFocusSearchOMvw8(findActiveFocusNode, focusDirection, getLayoutDirection());
        if (m2352customFocusSearchOMvw8 != FocusRequester.INSTANCE.getDefault()) {
            return m2352customFocusSearchOMvw8 != FocusRequester.INSTANCE.getCancel() && m2352customFocusSearchOMvw8.focus$ui_release();
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        boolean m2353focusSearchsMXa3k8 = FocusTraversalKt.m2353focusSearchsMXa3k8(this.rootFocusNode, focusDirection, getLayoutDirection(), new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$moveFocus$foundNextItem$1

            /* compiled from: FocusOwnerImpl.kt */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[CustomDestinationResult.values().length];
                    try {
                        iArr[CustomDestinationResult.Redirected.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[CustomDestinationResult.Cancelled.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[CustomDestinationResult.None.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode destination) {
                Modifier.Node node;
                boolean z;
                NodeChain nodes;
                Intrinsics.checkNotNullParameter(destination, "destination");
                if (Intrinsics.areEqual(destination, FocusTargetNode.this)) {
                    return false;
                }
                FocusTargetNode focusTargetNode = destination;
                int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
                if (!focusTargetNode.getNode().getIsAttached()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node".toString());
                }
                Modifier.Node parent = focusTargetNode.getNode().getParent();
                LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
                loop0: while (true) {
                    node = null;
                    z = true;
                    if (requireLayoutNode == null) {
                        break;
                    }
                    if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                        while (parent != null) {
                            if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                                Modifier.Node node2 = parent;
                                MutableVector mutableVector = null;
                                while (node2 != null) {
                                    if (node2 instanceof FocusTargetNode) {
                                        node = node2;
                                        break loop0;
                                    }
                                    if ((node2.getKindSet() & m4091constructorimpl) != 0 && (node2 instanceof DelegatingNode)) {
                                        int i = 0;
                                        for (Modifier.Node delegate = ((DelegatingNode) node2).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                            if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                                i++;
                                                if (i == 1) {
                                                    node2 = delegate;
                                                } else {
                                                    if (mutableVector == null) {
                                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                    }
                                                    if (node2 != null) {
                                                        if (mutableVector != null) {
                                                            mutableVector.add(node2);
                                                        }
                                                        node2 = null;
                                                    }
                                                    if (mutableVector != null) {
                                                        mutableVector.add(delegate);
                                                    }
                                                }
                                            }
                                        }
                                        if (i == 1) {
                                        }
                                    }
                                    node2 = DelegatableNodeKt.pop(mutableVector);
                                }
                            }
                            parent = parent.getParent();
                        }
                    }
                    requireLayoutNode = requireLayoutNode.getParent$ui_release();
                    parent = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
                }
                if (node == null) {
                    throw new IllegalStateException("Focus search landed at the root.".toString());
                }
                int i2 = WhenMappings.$EnumSwitchMapping$0[FocusTransactionsKt.m2351performCustomRequestFocusMxy_nc0(destination, focusDirection).ordinal()];
                if (i2 != 1) {
                    if (i2 == 2 || i2 == 3) {
                        booleanRef.element = true;
                    } else {
                        if (i2 != 4) {
                            throw new NoWhenBranchMatchedException();
                        }
                        z = FocusTransactionsKt.performRequestFocus(destination);
                    }
                }
                return Boolean.valueOf(z);
            }
        });
        if (booleanRef.element) {
            return false;
        }
        return m2353focusSearchsMXa3k8 || m2341wrapAroundFocus3ESFkO8(focusDirection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r13v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v23 */
    /* JADX WARN: Type inference failed for: r13v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r13v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v39 */
    /* JADX WARN: Type inference failed for: r8v40, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v41, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v42 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v44 */
    /* JADX WARN: Type inference failed for: r8v45 */
    /* JADX WARN: Type inference failed for: r8v46 */
    /* JADX WARN: Type inference failed for: r8v47 */
    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: dispatchKeyEvent-ZmokQxo */
    public boolean mo2339dispatchKeyEventZmokQxo(KeyEvent keyEvent) {
        int size;
        NodeChain nodes;
        DelegatingNode delegatingNode;
        NodeChain nodes2;
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode == null) {
            throw new IllegalStateException("Event can't be processed because we do not have an active focus target.".toString());
        }
        FocusTargetNode focusTargetNode = findActiveFocusNode;
        Modifier.Node lastLocalKeyInputNode = lastLocalKeyInputNode(focusTargetNode);
        if (lastLocalKeyInputNode == null) {
            int m4091constructorimpl = NodeKind.m4091constructorimpl(8192);
            if (!focusTargetNode.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node parent = focusTargetNode.getNode().getParent();
            LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
            loop0: while (true) {
                if (requireLayoutNode == null) {
                    delegatingNode = 0;
                    break;
                }
                if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                    while (parent != null) {
                        if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                            MutableVector mutableVector = null;
                            delegatingNode = parent;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof KeyInputModifierNode) {
                                    break loop0;
                                }
                                if ((delegatingNode.getKindSet() & m4091constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node delegate = delegatingNode.getDelegate();
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    while (delegate != null) {
                                        if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                            i++;
                                            if (i == 1) {
                                                delegatingNode = delegate;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (delegatingNode != 0) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(delegatingNode);
                                                    }
                                                    delegatingNode = 0;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(delegate);
                                                }
                                            }
                                        }
                                        delegate = delegate.getChild();
                                        delegatingNode = delegatingNode;
                                    }
                                    if (i == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.pop(mutableVector);
                            }
                        }
                        parent = parent.getParent();
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui_release();
                parent = (requireLayoutNode == null || (nodes2 = requireLayoutNode.getNodes()) == null) ? null : nodes2.getTail();
            }
            KeyInputModifierNode keyInputModifierNode = (KeyInputModifierNode) delegatingNode;
            lastLocalKeyInputNode = keyInputModifierNode != null ? keyInputModifierNode.getNode() : null;
        }
        if (lastLocalKeyInputNode != null) {
            Modifier.Node node = lastLocalKeyInputNode;
            int m4091constructorimpl2 = NodeKind.m4091constructorimpl(8192);
            if (!node.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node parent2 = node.getNode().getParent();
            LayoutNode requireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(node);
            ArrayList arrayList = null;
            while (requireLayoutNode2 != null) {
                if ((requireLayoutNode2.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl2) != 0) {
                    while (parent2 != null) {
                        if ((parent2.getKindSet() & m4091constructorimpl2) != 0) {
                            Modifier.Node node2 = parent2;
                            MutableVector mutableVector2 = null;
                            while (node2 != null) {
                                if (node2 instanceof KeyInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(node2);
                                } else if ((node2.getKindSet() & m4091constructorimpl2) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node delegate2 = ((DelegatingNode) node2).getDelegate(); delegate2 != null; delegate2 = delegate2.getChild()) {
                                        if ((delegate2.getKindSet() & m4091constructorimpl2) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                node2 = delegate2;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node2 != null) {
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(node2);
                                                    }
                                                    node2 = null;
                                                }
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(delegate2);
                                                }
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                node2 = DelegatableNodeKt.pop(mutableVector2);
                            }
                        }
                        parent2 = parent2.getParent();
                    }
                }
                requireLayoutNode2 = requireLayoutNode2.getParent$ui_release();
                parent2 = (requireLayoutNode2 == null || (nodes = requireLayoutNode2.getNodes()) == null) ? null : nodes.getTail();
            }
            if (arrayList != null && arrayList.size() - 1 >= 0) {
                while (true) {
                    int i3 = size - 1;
                    if (((KeyInputModifierNode) arrayList.get(size)).mo153onPreKeyEventZmokQxo(keyEvent)) {
                        return true;
                    }
                    if (i3 < 0) {
                        break;
                    }
                    size = i3;
                }
            }
            DelegatingNode node3 = node.getNode();
            MutableVector mutableVector3 = null;
            while (node3 != 0) {
                if (node3 instanceof KeyInputModifierNode) {
                    if (((KeyInputModifierNode) node3).mo153onPreKeyEventZmokQxo(keyEvent)) {
                        return true;
                    }
                } else if ((node3.getKindSet() & m4091constructorimpl2) != 0 && (node3 instanceof DelegatingNode)) {
                    Modifier.Node delegate3 = node3.getDelegate();
                    int i4 = 0;
                    node3 = node3;
                    while (delegate3 != null) {
                        if ((delegate3.getKindSet() & m4091constructorimpl2) != 0) {
                            i4++;
                            if (i4 == 1) {
                                node3 = delegate3;
                            } else {
                                if (mutableVector3 == null) {
                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node3 != 0) {
                                    if (mutableVector3 != null) {
                                        mutableVector3.add(node3);
                                    }
                                    node3 = 0;
                                }
                                if (mutableVector3 != null) {
                                    mutableVector3.add(delegate3);
                                }
                            }
                        }
                        delegate3 = delegate3.getChild();
                        node3 = node3;
                    }
                    if (i4 == 1) {
                    }
                }
                node3 = DelegatableNodeKt.pop(mutableVector3);
            }
            DelegatingNode node4 = node.getNode();
            MutableVector mutableVector4 = null;
            while (node4 != 0) {
                if (node4 instanceof KeyInputModifierNode) {
                    if (((KeyInputModifierNode) node4).mo151onKeyEventZmokQxo(keyEvent)) {
                        return true;
                    }
                } else if ((node4.getKindSet() & m4091constructorimpl2) != 0 && (node4 instanceof DelegatingNode)) {
                    Modifier.Node delegate4 = node4.getDelegate();
                    int i5 = 0;
                    node4 = node4;
                    while (delegate4 != null) {
                        if ((delegate4.getKindSet() & m4091constructorimpl2) != 0) {
                            i5++;
                            if (i5 == 1) {
                                node4 = delegate4;
                            } else {
                                if (mutableVector4 == null) {
                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node4 != 0) {
                                    if (mutableVector4 != null) {
                                        mutableVector4.add(node4);
                                    }
                                    node4 = 0;
                                }
                                if (mutableVector4 != null) {
                                    mutableVector4.add(delegate4);
                                }
                            }
                        }
                        delegate4 = delegate4.getChild();
                        node4 = node4;
                    }
                    if (i5 == 1) {
                    }
                }
                node4 = DelegatableNodeKt.pop(mutableVector4);
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    if (((KeyInputModifierNode) arrayList.get(i6)).mo151onKeyEventZmokQxo(keyEvent)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    @Override // androidx.compose.ui.focus.FocusOwner
    /* renamed from: dispatchInterceptedSoftKeyboardEvent-ZmokQxo */
    public boolean mo2338dispatchInterceptedSoftKeyboardEventZmokQxo(KeyEvent keyEvent) {
        SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode;
        int size;
        NodeChain nodes;
        DelegatingNode delegatingNode;
        NodeChain nodes2;
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode != null) {
            FocusTargetNode focusTargetNode = findActiveFocusNode;
            int m4091constructorimpl = NodeKind.m4091constructorimpl(131072);
            if (!focusTargetNode.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node parent = focusTargetNode.getNode().getParent();
            LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
            loop0: while (true) {
                if (requireLayoutNode == null) {
                    delegatingNode = 0;
                    break;
                }
                if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                    while (parent != null) {
                        if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                            MutableVector mutableVector = null;
                            delegatingNode = parent;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof SoftKeyboardInterceptionModifierNode) {
                                    break loop0;
                                }
                                if ((delegatingNode.getKindSet() & m4091constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node delegate = delegatingNode.getDelegate();
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    while (delegate != null) {
                                        if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                            i++;
                                            if (i == 1) {
                                                delegatingNode = delegate;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (delegatingNode != 0) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(delegatingNode);
                                                    }
                                                    delegatingNode = 0;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(delegate);
                                                }
                                            }
                                        }
                                        delegate = delegate.getChild();
                                        delegatingNode = delegatingNode;
                                    }
                                    if (i == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.pop(mutableVector);
                            }
                        }
                        parent = parent.getParent();
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui_release();
                parent = (requireLayoutNode == null || (nodes2 = requireLayoutNode.getNodes()) == null) ? null : nodes2.getTail();
            }
            softKeyboardInterceptionModifierNode = (SoftKeyboardInterceptionModifierNode) delegatingNode;
        } else {
            softKeyboardInterceptionModifierNode = null;
        }
        if (softKeyboardInterceptionModifierNode != null) {
            SoftKeyboardInterceptionModifierNode softKeyboardInterceptionModifierNode2 = softKeyboardInterceptionModifierNode;
            int m4091constructorimpl2 = NodeKind.m4091constructorimpl(131072);
            if (!softKeyboardInterceptionModifierNode2.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node parent2 = softKeyboardInterceptionModifierNode2.getNode().getParent();
            LayoutNode requireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(softKeyboardInterceptionModifierNode2);
            ArrayList arrayList = null;
            while (requireLayoutNode2 != null) {
                if ((requireLayoutNode2.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl2) != 0) {
                    while (parent2 != null) {
                        if ((parent2.getKindSet() & m4091constructorimpl2) != 0) {
                            Modifier.Node node = parent2;
                            MutableVector mutableVector2 = null;
                            while (node != null) {
                                if (node instanceof SoftKeyboardInterceptionModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(node);
                                } else if ((node.getKindSet() & m4091constructorimpl2) != 0 && (node instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node delegate2 = ((DelegatingNode) node).getDelegate(); delegate2 != null; delegate2 = delegate2.getChild()) {
                                        if ((delegate2.getKindSet() & m4091constructorimpl2) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                node = delegate2;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node != null) {
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(node);
                                                    }
                                                    node = null;
                                                }
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(delegate2);
                                                }
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                node = DelegatableNodeKt.pop(mutableVector2);
                            }
                        }
                        parent2 = parent2.getParent();
                    }
                }
                requireLayoutNode2 = requireLayoutNode2.getParent$ui_release();
                parent2 = (requireLayoutNode2 == null || (nodes = requireLayoutNode2.getNodes()) == null) ? null : nodes.getTail();
            }
            if (arrayList != null && arrayList.size() - 1 >= 0) {
                while (true) {
                    int i3 = size - 1;
                    if (((SoftKeyboardInterceptionModifierNode) arrayList.get(size)).mo3313onPreInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                        return true;
                    }
                    if (i3 < 0) {
                        break;
                    }
                    size = i3;
                }
            }
            DelegatingNode node2 = softKeyboardInterceptionModifierNode2.getNode();
            MutableVector mutableVector3 = null;
            while (node2 != 0) {
                if (node2 instanceof SoftKeyboardInterceptionModifierNode) {
                    if (((SoftKeyboardInterceptionModifierNode) node2).mo3313onPreInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                        return true;
                    }
                } else if ((node2.getKindSet() & m4091constructorimpl2) != 0 && (node2 instanceof DelegatingNode)) {
                    Modifier.Node delegate3 = node2.getDelegate();
                    int i4 = 0;
                    node2 = node2;
                    while (delegate3 != null) {
                        if ((delegate3.getKindSet() & m4091constructorimpl2) != 0) {
                            i4++;
                            if (i4 == 1) {
                                node2 = delegate3;
                            } else {
                                if (mutableVector3 == null) {
                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node2 != 0) {
                                    if (mutableVector3 != null) {
                                        mutableVector3.add(node2);
                                    }
                                    node2 = 0;
                                }
                                if (mutableVector3 != null) {
                                    mutableVector3.add(delegate3);
                                }
                            }
                        }
                        delegate3 = delegate3.getChild();
                        node2 = node2;
                    }
                    if (i4 == 1) {
                    }
                }
                node2 = DelegatableNodeKt.pop(mutableVector3);
            }
            DelegatingNode node3 = softKeyboardInterceptionModifierNode2.getNode();
            MutableVector mutableVector4 = null;
            while (node3 != 0) {
                if (node3 instanceof SoftKeyboardInterceptionModifierNode) {
                    if (((SoftKeyboardInterceptionModifierNode) node3).mo3312onInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                        return true;
                    }
                } else if ((node3.getKindSet() & m4091constructorimpl2) != 0 && (node3 instanceof DelegatingNode)) {
                    Modifier.Node delegate4 = node3.getDelegate();
                    int i5 = 0;
                    node3 = node3;
                    while (delegate4 != null) {
                        if ((delegate4.getKindSet() & m4091constructorimpl2) != 0) {
                            i5++;
                            if (i5 == 1) {
                                node3 = delegate4;
                            } else {
                                if (mutableVector4 == null) {
                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node3 != 0) {
                                    if (mutableVector4 != null) {
                                        mutableVector4.add(node3);
                                    }
                                    node3 = 0;
                                }
                                if (mutableVector4 != null) {
                                    mutableVector4.add(delegate4);
                                }
                            }
                        }
                        delegate4 = delegate4.getChild();
                        node3 = node3;
                    }
                    if (i5 == 1) {
                    }
                }
                node3 = DelegatableNodeKt.pop(mutableVector4);
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    if (((SoftKeyboardInterceptionModifierNode) arrayList.get(i6)).mo3312onInterceptKeyBeforeSoftKeyboardZmokQxo(keyEvent)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v20, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    @Override // androidx.compose.ui.focus.FocusOwner
    public boolean dispatchRotaryEvent(RotaryScrollEvent event) {
        RotaryInputModifierNode rotaryInputModifierNode;
        int size;
        NodeChain nodes;
        DelegatingNode delegatingNode;
        NodeChain nodes2;
        Intrinsics.checkNotNullParameter(event, "event");
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode != null) {
            FocusTargetNode focusTargetNode = findActiveFocusNode;
            int m4091constructorimpl = NodeKind.m4091constructorimpl(16384);
            if (!focusTargetNode.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node parent = focusTargetNode.getNode().getParent();
            LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
            loop0: while (true) {
                if (requireLayoutNode == null) {
                    delegatingNode = 0;
                    break;
                }
                if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                    while (parent != null) {
                        if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                            MutableVector mutableVector = null;
                            delegatingNode = parent;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof RotaryInputModifierNode) {
                                    break loop0;
                                }
                                if ((delegatingNode.getKindSet() & m4091constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node delegate = delegatingNode.getDelegate();
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    while (delegate != null) {
                                        if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                            i++;
                                            if (i == 1) {
                                                delegatingNode = delegate;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (delegatingNode != 0) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(delegatingNode);
                                                    }
                                                    delegatingNode = 0;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(delegate);
                                                }
                                            }
                                        }
                                        delegate = delegate.getChild();
                                        delegatingNode = delegatingNode;
                                    }
                                    if (i == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.pop(mutableVector);
                            }
                        }
                        parent = parent.getParent();
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui_release();
                parent = (requireLayoutNode == null || (nodes2 = requireLayoutNode.getNodes()) == null) ? null : nodes2.getTail();
            }
            rotaryInputModifierNode = (RotaryInputModifierNode) delegatingNode;
        } else {
            rotaryInputModifierNode = null;
        }
        if (rotaryInputModifierNode != null) {
            RotaryInputModifierNode rotaryInputModifierNode2 = rotaryInputModifierNode;
            int m4091constructorimpl2 = NodeKind.m4091constructorimpl(16384);
            if (!rotaryInputModifierNode2.getNode().getIsAttached()) {
                throw new IllegalStateException("visitAncestors called on an unattached node".toString());
            }
            Modifier.Node parent2 = rotaryInputModifierNode2.getNode().getParent();
            LayoutNode requireLayoutNode2 = DelegatableNodeKt.requireLayoutNode(rotaryInputModifierNode2);
            ArrayList arrayList = null;
            while (requireLayoutNode2 != null) {
                if ((requireLayoutNode2.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl2) != 0) {
                    while (parent2 != null) {
                        if ((parent2.getKindSet() & m4091constructorimpl2) != 0) {
                            Modifier.Node node = parent2;
                            MutableVector mutableVector2 = null;
                            while (node != null) {
                                if (node instanceof RotaryInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(node);
                                } else if ((node.getKindSet() & m4091constructorimpl2) != 0 && (node instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node delegate2 = ((DelegatingNode) node).getDelegate(); delegate2 != null; delegate2 = delegate2.getChild()) {
                                        if ((delegate2.getKindSet() & m4091constructorimpl2) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                node = delegate2;
                                            } else {
                                                if (mutableVector2 == null) {
                                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node != null) {
                                                    if (mutableVector2 != null) {
                                                        mutableVector2.add(node);
                                                    }
                                                    node = null;
                                                }
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(delegate2);
                                                }
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                node = DelegatableNodeKt.pop(mutableVector2);
                            }
                        }
                        parent2 = parent2.getParent();
                    }
                }
                requireLayoutNode2 = requireLayoutNode2.getParent$ui_release();
                parent2 = (requireLayoutNode2 == null || (nodes = requireLayoutNode2.getNodes()) == null) ? null : nodes.getTail();
            }
            if (arrayList != null && arrayList.size() - 1 >= 0) {
                while (true) {
                    int i3 = size - 1;
                    if (((RotaryInputModifierNode) arrayList.get(size)).onPreRotaryScrollEvent(event)) {
                        return true;
                    }
                    if (i3 < 0) {
                        break;
                    }
                    size = i3;
                }
            }
            DelegatingNode node2 = rotaryInputModifierNode2.getNode();
            MutableVector mutableVector3 = null;
            while (node2 != 0) {
                if (node2 instanceof RotaryInputModifierNode) {
                    if (((RotaryInputModifierNode) node2).onPreRotaryScrollEvent(event)) {
                        return true;
                    }
                } else if ((node2.getKindSet() & m4091constructorimpl2) != 0 && (node2 instanceof DelegatingNode)) {
                    Modifier.Node delegate3 = node2.getDelegate();
                    int i4 = 0;
                    node2 = node2;
                    while (delegate3 != null) {
                        if ((delegate3.getKindSet() & m4091constructorimpl2) != 0) {
                            i4++;
                            if (i4 == 1) {
                                node2 = delegate3;
                            } else {
                                if (mutableVector3 == null) {
                                    mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node2 != 0) {
                                    if (mutableVector3 != null) {
                                        mutableVector3.add(node2);
                                    }
                                    node2 = 0;
                                }
                                if (mutableVector3 != null) {
                                    mutableVector3.add(delegate3);
                                }
                            }
                        }
                        delegate3 = delegate3.getChild();
                        node2 = node2;
                    }
                    if (i4 == 1) {
                    }
                }
                node2 = DelegatableNodeKt.pop(mutableVector3);
            }
            DelegatingNode node3 = rotaryInputModifierNode2.getNode();
            MutableVector mutableVector4 = null;
            while (node3 != 0) {
                if (node3 instanceof RotaryInputModifierNode) {
                    if (((RotaryInputModifierNode) node3).onRotaryScrollEvent(event)) {
                        return true;
                    }
                } else if ((node3.getKindSet() & m4091constructorimpl2) != 0 && (node3 instanceof DelegatingNode)) {
                    Modifier.Node delegate4 = node3.getDelegate();
                    int i5 = 0;
                    node3 = node3;
                    while (delegate4 != null) {
                        if ((delegate4.getKindSet() & m4091constructorimpl2) != 0) {
                            i5++;
                            if (i5 == 1) {
                                node3 = delegate4;
                            } else {
                                if (mutableVector4 == null) {
                                    mutableVector4 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (node3 != 0) {
                                    if (mutableVector4 != null) {
                                        mutableVector4.add(node3);
                                    }
                                    node3 = 0;
                                }
                                if (mutableVector4 != null) {
                                    mutableVector4.add(delegate4);
                                }
                            }
                        }
                        delegate4 = delegate4.getChild();
                        node3 = node3;
                    }
                    if (i5 == 1) {
                    }
                }
                node3 = DelegatableNodeKt.pop(mutableVector4);
            }
            if (arrayList != null) {
                int size2 = arrayList.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    if (((RotaryInputModifierNode) arrayList.get(i6)).onRotaryScrollEvent(event)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusTargetNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.focusInvalidationManager.scheduleInvalidation(node);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusEventModifierNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.focusInvalidationManager.scheduleInvalidation(node);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public void scheduleInvalidation(FocusPropertiesModifierNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.focusInvalidationManager.scheduleInvalidation(node);
    }

    @Override // androidx.compose.ui.focus.FocusOwner
    public Rect getFocusRect() {
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.rootFocusNode);
        if (findActiveFocusNode != null) {
            return FocusTraversalKt.focusRect(findActiveFocusNode);
        }
        return null;
    }

    /* renamed from: wrapAroundFocus-3ESFkO8, reason: not valid java name */
    private final boolean m2341wrapAroundFocus3ESFkO8(int focusDirection) {
        if (!this.rootFocusNode.getFocusState().getHasFocus() || this.rootFocusNode.getFocusState().isFocused() || (!FocusDirection.m2319equalsimpl0(focusDirection, FocusDirection.INSTANCE.m2332getNextdhqQ8s()) && !FocusDirection.m2319equalsimpl0(focusDirection, FocusDirection.INSTANCE.m2334getPreviousdhqQ8s()))) {
            return false;
        }
        clearFocus(false);
        if (this.rootFocusNode.getFocusState().isFocused()) {
            return mo2337moveFocus3ESFkO8(focusDirection);
        }
        return false;
    }

    /* renamed from: traverseAncestors-Y-YKmho, reason: not valid java name */
    private final /* synthetic */ <T extends DelegatableNode> void m2340traverseAncestorsYYKmho(DelegatableNode delegatableNode, int i, Function1<? super T, Unit> function1, Function1<? super T, Unit> function12) {
        int i2;
        int size;
        NodeChain nodes;
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = delegatableNode.getNode().getParent();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(delegatableNode);
        ArrayList arrayList = null;
        while (true) {
            if (requireLayoutNode == null) {
                break;
            }
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & i) != 0) {
                        Modifier.Node node = parent;
                        MutableVector mutableVector = null;
                        while (node != null) {
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (node instanceof Object) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(node);
                            } else if ((node.getKindSet() & i) != 0 && (node instanceof DelegatingNode)) {
                                int i3 = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & i) != 0) {
                                        i3++;
                                        if (i3 == 1) {
                                            node = delegate;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node != null) {
                                                if (mutableVector != null) {
                                                    mutableVector.add(node);
                                                }
                                                node = null;
                                            }
                                            if (mutableVector != null) {
                                                mutableVector.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i3 == 1) {
                                }
                            }
                            node = DelegatableNodeKt.pop(mutableVector);
                        }
                    }
                    parent = parent.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
        if (arrayList != null && arrayList.size() - 1 >= 0) {
            while (true) {
                int i4 = size - 1;
                function1.invoke((Object) arrayList.get(size));
                if (i4 < 0) {
                    break;
                } else {
                    size = i4;
                }
            }
        }
        Modifier.Node node2 = delegatableNode.getNode();
        MutableVector mutableVector2 = null;
        while (node2 != null) {
            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (node2 instanceof Object) {
                function1.invoke(node2);
            } else if ((node2.getKindSet() & i) != 0 && (node2 instanceof DelegatingNode)) {
                int i5 = 0;
                for (Modifier.Node delegate2 = ((DelegatingNode) node2).getDelegate(); delegate2 != null; delegate2 = delegate2.getChild()) {
                    if ((delegate2.getKindSet() & i) != 0) {
                        i5++;
                        if (i5 == 1) {
                            node2 = delegate2;
                        } else {
                            if (mutableVector2 == null) {
                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (node2 != null) {
                                if (mutableVector2 != null) {
                                    mutableVector2.add(node2);
                                }
                                node2 = null;
                            }
                            if (mutableVector2 != null) {
                                mutableVector2.add(delegate2);
                            }
                        }
                    }
                }
                if (i5 == 1) {
                }
            }
            node2 = DelegatableNodeKt.pop(mutableVector2);
        }
        Modifier.Node node3 = delegatableNode.getNode();
        MutableVector mutableVector3 = null;
        while (node3 != null) {
            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (node3 instanceof Object) {
                function12.invoke(node3);
            } else if ((node3.getKindSet() & i) != 0 && (node3 instanceof DelegatingNode)) {
                int i6 = 0;
                for (Modifier.Node delegate3 = ((DelegatingNode) node3).getDelegate(); delegate3 != null; delegate3 = delegate3.getChild()) {
                    if ((delegate3.getKindSet() & i) != 0) {
                        i6++;
                        if (i6 == 1) {
                            node3 = delegate3;
                        } else {
                            if (mutableVector3 == null) {
                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (node3 != null) {
                                if (mutableVector3 != null) {
                                    mutableVector3.add(node3);
                                }
                                node3 = null;
                            }
                            if (mutableVector3 != null) {
                                mutableVector3.add(delegate3);
                            }
                        }
                    }
                }
                if (i6 == 1) {
                }
            }
            node3 = DelegatableNodeKt.pop(mutableVector3);
        }
        if (arrayList != null) {
            int size2 = arrayList.size();
            for (i2 = 0; i2 < size2; i2++) {
                function12.invoke((Object) arrayList.get(i2));
            }
        }
    }

    private final Modifier.Node lastLocalKeyInputNode(DelegatableNode delegatableNode) {
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024) | NodeKind.m4091constructorimpl(8192);
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitLocalDescendants called on an unattached node".toString());
        }
        Modifier.Node node = delegatableNode.getNode();
        Modifier.Node node2 = null;
        if ((node.getAggregateChildKindSet() & m4091constructorimpl) != 0) {
            for (Modifier.Node child = node.getChild(); child != null; child = child.getChild()) {
                if ((child.getKindSet() & m4091constructorimpl) != 0) {
                    if ((NodeKind.m4091constructorimpl(1024) & child.getKindSet()) != 0) {
                        return node2;
                    }
                    node2 = child;
                }
            }
        }
        return node2;
    }
}
