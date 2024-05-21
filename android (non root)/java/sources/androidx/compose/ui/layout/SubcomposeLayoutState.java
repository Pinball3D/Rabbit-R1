package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import io.sentry.protocol.SentryThread;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubcomposeLayout.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001/B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\r\u0010$\u001a\u00020\u0013H\u0000¢\u0006\u0002\b%J\r\u0010&\u001a\u00020\u0013H\u0000¢\u0006\u0002\b'J(\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u00012\u0011\u0010+\u001a\r\u0012\u0004\u0012\u00020\u00130,¢\u0006\u0002\b-¢\u0006\u0002\u0010.R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\f8GX\u0087\u0004¢\u0006\f\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000b\u0010\u000eR+\u0010\u000f\u001a\u0019\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0010¢\u0006\u0002\b\u0014X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016RE\u0010\u0017\u001a0\u0012\u0004\u0012\u00020\u0011\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0010¢\u0006\u0002\b\u0014\u0012\u0004\u0012\u00020\u00130\u0010¢\u0006\u0002\b\u0014X\u0080\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016RE\u0010\u001c\u001a0\u0012\u0004\u0012\u00020\u0011\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0010¢\u0006\u0002\b\u0014\u0012\u0004\u0012\u00020\u00130\u0010¢\u0006\u0002\b\u0014X\u0080\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0016R+\u0010\u001f\u001a\u0019\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00130\u0010¢\u0006\u0002\b\u0014X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeLayoutState;", "", "()V", "maxSlotsToRetainForReuse", "", "(I)V", "slotReusePolicy", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V", "_state", "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;", "isInLookaheadScope", "", "isInLookaheadScope$annotations", "()Z", "setCompositionContext", "Lkotlin/Function2;", "Landroidx/compose/ui/node/LayoutNode;", "Landroidx/compose/runtime/CompositionContext;", "", "Lkotlin/ExtensionFunctionType;", "getSetCompositionContext$ui_release", "()Lkotlin/jvm/functions/Function2;", "setIntermediateMeasurePolicy", "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/layout/MeasureResult;", "getSetIntermediateMeasurePolicy$ui_release", "setMeasurePolicy", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "getSetMeasurePolicy$ui_release", "setRoot", "getSetRoot$ui_release", SentryThread.JsonKeys.STATE, "getState", "()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;", "disposeCurrentNodes", "disposeCurrentNodes$ui_release", "forceRecomposeChildren", "forceRecomposeChildren$ui_release", "precompose", "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "slotId", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "PrecomposedSlotHandle", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SubcomposeLayoutState {
    public static final int $stable = 8;
    private LayoutNodeSubcompositionsState _state;
    private final Function2<LayoutNode, CompositionContext, Unit> setCompositionContext;
    private final Function2<LayoutNode, Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit> setIntermediateMeasurePolicy;
    private final Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit> setMeasurePolicy;
    private final Function2<LayoutNode, SubcomposeLayoutState, Unit> setRoot;
    private final SubcomposeSlotReusePolicy slotReusePolicy;

    /* compiled from: SubcomposeLayout.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0006\u001a\u00020\u0007H&J%\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "", "placeablesCount", "", "getPlaceablesCount", "()I", "dispose", "", "premeasure", "index", "constraints", "Landroidx/compose/ui/unit/Constraints;", "premeasure-0kLqBqw", "(IJ)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface PrecomposedSlotHandle {
        void dispose();

        default int getPlaceablesCount() {
            return 0;
        }

        /* renamed from: premeasure-0kLqBqw */
        default void mo3897premeasure0kLqBqw(int index, long constraints) {
        }
    }

    public static /* synthetic */ void isInLookaheadScope$annotations() {
    }

    public final Function2<LayoutNode, CompositionContext, Unit> getSetCompositionContext$ui_release() {
        return this.setCompositionContext;
    }

    public final Function2<LayoutNode, Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit> getSetIntermediateMeasurePolicy$ui_release() {
        return this.setIntermediateMeasurePolicy;
    }

    public final Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit> getSetMeasurePolicy$ui_release() {
        return this.setMeasurePolicy;
    }

    public final Function2<LayoutNode, SubcomposeLayoutState, Unit> getSetRoot$ui_release() {
        return this.setRoot;
    }

    public SubcomposeLayoutState(SubcomposeSlotReusePolicy slotReusePolicy) {
        Intrinsics.checkNotNullParameter(slotReusePolicy, "slotReusePolicy");
        this.slotReusePolicy = slotReusePolicy;
        this.setRoot = new Function2<LayoutNode, SubcomposeLayoutState, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setRoot$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode, SubcomposeLayoutState subcomposeLayoutState) {
                invoke2(layoutNode, subcomposeLayoutState);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode, SubcomposeLayoutState it) {
                LayoutNodeSubcompositionsState state;
                LayoutNodeSubcompositionsState state2;
                SubcomposeSlotReusePolicy subcomposeSlotReusePolicy;
                SubcomposeSlotReusePolicy subcomposeSlotReusePolicy2;
                Intrinsics.checkNotNullParameter(layoutNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                SubcomposeLayoutState subcomposeLayoutState = SubcomposeLayoutState.this;
                LayoutNodeSubcompositionsState subcompositionsState = layoutNode.getSubcompositionsState();
                if (subcompositionsState == null) {
                    subcomposeSlotReusePolicy2 = SubcomposeLayoutState.this.slotReusePolicy;
                    subcompositionsState = new LayoutNodeSubcompositionsState(layoutNode, subcomposeSlotReusePolicy2);
                    layoutNode.setSubcompositionsState$ui_release(subcompositionsState);
                }
                subcomposeLayoutState._state = subcompositionsState;
                state = SubcomposeLayoutState.this.getState();
                state.makeSureStateIsConsistent();
                state2 = SubcomposeLayoutState.this.getState();
                subcomposeSlotReusePolicy = SubcomposeLayoutState.this.slotReusePolicy;
                state2.setSlotReusePolicy(subcomposeSlotReusePolicy);
            }
        };
        this.setCompositionContext = new Function2<LayoutNode, CompositionContext, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setCompositionContext$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode, CompositionContext compositionContext) {
                invoke2(layoutNode, compositionContext);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode, CompositionContext it) {
                LayoutNodeSubcompositionsState state;
                Intrinsics.checkNotNullParameter(layoutNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                state = SubcomposeLayoutState.this.getState();
                state.setCompositionContext(it);
            }
        };
        this.setMeasurePolicy = new Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setMeasurePolicy$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> function2) {
                invoke2(layoutNode, function2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> it) {
                LayoutNodeSubcompositionsState state;
                Intrinsics.checkNotNullParameter(layoutNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                state = SubcomposeLayoutState.this.getState();
                layoutNode.setMeasurePolicy(state.createMeasurePolicy(it));
            }
        };
        this.setIntermediateMeasurePolicy = new Function2<LayoutNode, Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setIntermediateMeasurePolicy$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode, Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult> function2) {
                invoke2(layoutNode, function2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode, Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult> it) {
                LayoutNodeSubcompositionsState state;
                Intrinsics.checkNotNullParameter(layoutNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                state = SubcomposeLayoutState.this.getState();
                state.setIntermediateMeasurePolicy$ui_release(it);
            }
        };
    }

    public SubcomposeLayoutState() {
        this(NoOpSubcomposeSlotReusePolicy.INSTANCE);
    }

    @Deprecated(message = "This constructor is deprecated", replaceWith = @ReplaceWith(expression = "SubcomposeLayoutState(SubcomposeSlotReusePolicy(maxSlotsToRetainForReuse))", imports = {"androidx.compose.ui.layout.SubcomposeSlotReusePolicy"}))
    public SubcomposeLayoutState(int i) {
        this(SubcomposeLayoutKt.SubcomposeSlotReusePolicy(i));
    }

    public final boolean isInLookaheadScope() {
        return getState().isInLookaheadScope();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutNodeSubcompositionsState getState() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this._state;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        throw new IllegalArgumentException("SubcomposeLayoutState is not attached to SubcomposeLayout".toString());
    }

    public final PrecomposedSlotHandle precompose(Object slotId, Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        return getState().precompose(slotId, content);
    }

    public final void forceRecomposeChildren$ui_release() {
        getState().forceRecomposeChildren();
    }

    public final void disposeCurrentNodes$ui_release() {
        getState().disposeCurrentNodes();
    }
}
