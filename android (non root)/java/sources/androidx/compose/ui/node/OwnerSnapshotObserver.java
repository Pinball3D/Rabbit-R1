package androidx.compose.ui.node;

import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OwnerSnapshotObserver.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B.\u0012'\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\tJ\u0015\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0001H\u0000¢\u0006\u0002\b\u0016J\r\u0010\u0017\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0018J-\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0000¢\u0006\u0002\b\u001eJ-\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0000¢\u0006\u0002\b J-\u0010!\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0000¢\u0006\u0002\b\"JC\u0010#\u001a\u00020\u0005\"\b\b\u0000\u0010$*\u00020%2\u0006\u0010\u0015\u001a\u0002H$2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u0002H$\u0012\u0004\u0012\u00020\u00050\u00032\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0000¢\u0006\u0004\b'\u0010(J#\u0010)\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\r2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0000¢\u0006\u0002\b*J\r\u0010+\u001a\u00020\u0005H\u0000¢\u0006\u0002\b,J\r\u0010-\u001a\u00020\u0005H\u0000¢\u0006\u0002\b.R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Landroidx/compose/ui/node/OwnerSnapshotObserver;", "", "onChangedExecutor", "Lkotlin/Function1;", "Lkotlin/Function0;", "", "Lkotlin/ParameterName;", "name", "callback", "(Lkotlin/jvm/functions/Function1;)V", "observer", "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;", "onCommitAffectingLayout", "Landroidx/compose/ui/node/LayoutNode;", "onCommitAffectingLayoutModifier", "onCommitAffectingLayoutModifierInLookahead", "onCommitAffectingLookaheadLayout", "onCommitAffectingLookaheadMeasure", "onCommitAffectingMeasure", "onCommitAffectingSemantics", "clear", "target", "clear$ui_release", "clearInvalidObservations", "clearInvalidObservations$ui_release", "observeLayoutModifierSnapshotReads", "node", "affectsLookahead", "", "block", "observeLayoutModifierSnapshotReads$ui_release", "observeLayoutSnapshotReads", "observeLayoutSnapshotReads$ui_release", "observeMeasureSnapshotReads", "observeMeasureSnapshotReads$ui_release", "observeReads", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/ui/node/OwnerScope;", "onChanged", "observeReads$ui_release", "(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "observeSemanticsReads", "observeSemanticsReads$ui_release", "startObserving", "startObserving$ui_release", "stopObserving", "stopObserving$ui_release", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OwnerSnapshotObserver {
    private final SnapshotStateObserver observer;
    private final Function1<LayoutNode, Unit> onCommitAffectingLayout;
    private final Function1<LayoutNode, Unit> onCommitAffectingLayoutModifier;
    private final Function1<LayoutNode, Unit> onCommitAffectingLayoutModifierInLookahead;
    private final Function1<LayoutNode, Unit> onCommitAffectingLookaheadLayout;
    private final Function1<LayoutNode, Unit> onCommitAffectingLookaheadMeasure;
    private final Function1<LayoutNode, Unit> onCommitAffectingMeasure;
    private final Function1<LayoutNode, Unit> onCommitAffectingSemantics;

    public OwnerSnapshotObserver(Function1<? super Function0<Unit>, Unit> onChangedExecutor) {
        Intrinsics.checkNotNullParameter(onChangedExecutor, "onChangedExecutor");
        this.observer = new SnapshotStateObserver(onChangedExecutor);
        this.onCommitAffectingLookaheadMeasure = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLookaheadMeasure$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValidOwnerScope()) {
                    LayoutNode.requestLookaheadRemeasure$ui_release$default(layoutNode, false, false, 3, null);
                }
            }
        };
        this.onCommitAffectingMeasure = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingMeasure$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValidOwnerScope()) {
                    LayoutNode.requestRemeasure$ui_release$default(layoutNode, false, false, 3, null);
                }
            }
        };
        this.onCommitAffectingSemantics = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingSemantics$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValidOwnerScope()) {
                    layoutNode.invalidateSemantics$ui_release();
                }
            }
        };
        this.onCommitAffectingLayout = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValidOwnerScope()) {
                    LayoutNode.requestRelayout$ui_release$default(layoutNode, false, 1, null);
                }
            }
        };
        this.onCommitAffectingLayoutModifier = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValidOwnerScope()) {
                    LayoutNode.requestRelayout$ui_release$default(layoutNode, false, 1, null);
                }
            }
        };
        this.onCommitAffectingLayoutModifierInLookahead = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValidOwnerScope()) {
                    LayoutNode.requestLookaheadRelayout$ui_release$default(layoutNode, false, 1, null);
                }
            }
        };
        this.onCommitAffectingLookaheadLayout = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLookaheadLayout$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
                if (layoutNode.isValidOwnerScope()) {
                    LayoutNode.requestLookaheadRelayout$ui_release$default(layoutNode, false, 1, null);
                }
            }
        };
    }

    public static /* synthetic */ void observeLayoutSnapshotReads$ui_release$default(OwnerSnapshotObserver ownerSnapshotObserver, LayoutNode layoutNode, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        ownerSnapshotObserver.observeLayoutSnapshotReads$ui_release(layoutNode, z, function0);
    }

    public final void observeLayoutSnapshotReads$ui_release(LayoutNode node, boolean affectsLookahead, Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(block, "block");
        if (affectsLookahead && node.getLookaheadRoot() != null) {
            observeReads$ui_release(node, this.onCommitAffectingLookaheadLayout, block);
        } else {
            observeReads$ui_release(node, this.onCommitAffectingLayout, block);
        }
    }

    public static /* synthetic */ void observeLayoutModifierSnapshotReads$ui_release$default(OwnerSnapshotObserver ownerSnapshotObserver, LayoutNode layoutNode, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        ownerSnapshotObserver.observeLayoutModifierSnapshotReads$ui_release(layoutNode, z, function0);
    }

    public final void observeLayoutModifierSnapshotReads$ui_release(LayoutNode node, boolean affectsLookahead, Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(block, "block");
        if (affectsLookahead && node.getLookaheadRoot() != null) {
            observeReads$ui_release(node, this.onCommitAffectingLayoutModifierInLookahead, block);
        } else {
            observeReads$ui_release(node, this.onCommitAffectingLayoutModifier, block);
        }
    }

    public static /* synthetic */ void observeMeasureSnapshotReads$ui_release$default(OwnerSnapshotObserver ownerSnapshotObserver, LayoutNode layoutNode, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        ownerSnapshotObserver.observeMeasureSnapshotReads$ui_release(layoutNode, z, function0);
    }

    public final void observeMeasureSnapshotReads$ui_release(LayoutNode node, boolean affectsLookahead, Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(block, "block");
        if (affectsLookahead && node.getLookaheadRoot() != null) {
            observeReads$ui_release(node, this.onCommitAffectingLookaheadMeasure, block);
        } else {
            observeReads$ui_release(node, this.onCommitAffectingMeasure, block);
        }
    }

    public final void observeSemanticsReads$ui_release(LayoutNode node, Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(node, "node");
        Intrinsics.checkNotNullParameter(block, "block");
        observeReads$ui_release(node, this.onCommitAffectingSemantics, block);
    }

    public final <T extends OwnerScope> void observeReads$ui_release(T target, Function1<? super T, Unit> onChanged, Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(onChanged, "onChanged");
        Intrinsics.checkNotNullParameter(block, "block");
        this.observer.observeReads(target, onChanged, block);
    }

    public final void clearInvalidObservations$ui_release() {
        this.observer.clearIf(new Function1<Object, Boolean>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$clearInvalidObservations$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!((OwnerScope) it).isValidOwnerScope());
            }
        });
    }

    public final void clear$ui_release(Object target) {
        Intrinsics.checkNotNullParameter(target, "target");
        this.observer.clear(target);
    }

    public final void startObserving$ui_release() {
        this.observer.start();
    }

    public final void stopObserving$ui_release() {
        this.observer.stop();
        this.observer.clear();
    }
}
