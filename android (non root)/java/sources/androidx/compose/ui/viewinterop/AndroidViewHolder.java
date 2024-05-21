package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Region;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.NestedScrollInteropConnectionKt;
import androidx.compose.ui.platform.WindowRecomposer_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.VelocityKt;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* compiled from: AndroidViewHolder.android.kt */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u0007\n\u0002\b\u0019\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B/\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0012\u0010T\u001a\u00020\u00172\b\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u000e\u0010W\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`XJ\n\u0010Y\u001a\u0004\u0018\u00010ZH\u0016J\b\u0010[\u001a\u00020\tH\u0016J\u001e\u0010\\\u001a\u0004\u0018\u00010]2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010^\u001a\u0004\u0018\u00010_H\u0016J\b\u0010`\u001a\u00020\u0017H\u0016J \u0010a\u001a\u00020\t2\u0006\u0010b\u001a\u00020\t2\u0006\u0010c\u001a\u00020\t2\u0006\u0010d\u001a\u00020\tH\u0002J\b\u0010e\u001a\u000200H\u0014J\b\u0010f\u001a\u000200H\u0016J\u0018\u0010g\u001a\u0002002\u0006\u0010h\u001a\u00020\r2\u0006\u0010i\u001a\u00020\rH\u0016J\b\u0010j\u001a\u000200H\u0014J0\u0010k\u001a\u0002002\u0006\u0010l\u001a\u00020\u00172\u0006\u0010m\u001a\u00020\t2\u0006\u0010n\u001a\u00020\t2\u0006\u0010o\u001a\u00020\t2\u0006\u0010p\u001a\u00020\tH\u0014J\u0018\u0010q\u001a\u0002002\u0006\u0010r\u001a\u00020\t2\u0006\u0010s\u001a\u00020\tH\u0014J(\u0010t\u001a\u00020\u00172\u0006\u0010i\u001a\u00020\r2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020v2\u0006\u0010x\u001a\u00020\u0017H\u0016J \u0010y\u001a\u00020\u00172\u0006\u0010i\u001a\u00020\r2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020vH\u0016J0\u0010z\u001a\u0002002\u0006\u0010i\u001a\u00020\r2\u0006\u0010{\u001a\u00020\t2\u0006\u0010|\u001a\u00020\t2\u0006\u0010x\u001a\u00020%2\u0006\u0010}\u001a\u00020\tH\u0016J;\u0010~\u001a\u0002002\u0006\u0010i\u001a\u00020\r2\u0006\u0010\u007f\u001a\u00020\t2\u0007\u0010\u0080\u0001\u001a\u00020\t2\u0007\u0010\u0081\u0001\u001a\u00020\t2\u0007\u0010\u0082\u0001\u001a\u00020\t2\u0006\u0010}\u001a\u00020\tH\u0016JC\u0010~\u001a\u0002002\u0006\u0010i\u001a\u00020\r2\u0006\u0010\u007f\u001a\u00020\t2\u0007\u0010\u0080\u0001\u001a\u00020\t2\u0007\u0010\u0081\u0001\u001a\u00020\t2\u0007\u0010\u0082\u0001\u001a\u00020\t2\u0006\u0010}\u001a\u00020\t2\u0006\u0010x\u001a\u00020%H\u0016J*\u0010\u0083\u0001\u001a\u0002002\u0006\u0010h\u001a\u00020\r2\u0006\u0010i\u001a\u00020\r2\u0007\u0010\u0084\u0001\u001a\u00020\t2\u0006\u0010}\u001a\u00020\tH\u0016J\t\u0010\u0085\u0001\u001a\u000200H\u0016J\t\u0010\u0086\u0001\u001a\u000200H\u0016J*\u0010\u0087\u0001\u001a\u00020\u00172\u0006\u0010h\u001a\u00020\r2\u0006\u0010i\u001a\u00020\r2\u0007\u0010\u0084\u0001\u001a\u00020\t2\u0006\u0010}\u001a\u00020\tH\u0016J\u0019\u0010\u0088\u0001\u001a\u0002002\u0006\u0010i\u001a\u00020\r2\u0006\u0010}\u001a\u00020\tH\u0016J\u0012\u0010\u0089\u0001\u001a\u0002002\u0007\u0010\u008a\u0001\u001a\u00020\tH\u0014J\u0007\u0010\u008b\u0001\u001a\u000200J\u0012\u0010\u008c\u0001\u001a\u0002002\u0007\u0010\u008d\u0001\u001a\u00020\u0017H\u0016J\t\u0010\u008e\u0001\u001a\u00020\u0017H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR(\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u001e@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010'\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020&@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u000e\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u0002000/X\u0082\u0004¢\u0006\u0002\n\u0000R(\u00101\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u000200\u0018\u00010/X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R(\u00106\u001a\u0010\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u000200\u0018\u00010/X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00103\"\u0004\b8\u00105R(\u00109\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u000200\u0018\u00010/X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u00103\"\u0004\b;\u00105R0\u0010>\u001a\b\u0012\u0004\u0012\u0002000=2\f\u0010<\u001a\b\u0012\u0004\u0012\u0002000=@DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR0\u0010C\u001a\b\u0012\u0004\u0012\u0002000=2\f\u0010<\u001a\b\u0012\u0004\u0012\u0002000=@DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010@\"\u0004\bE\u0010BR\u0014\u0010F\u001a\b\u0012\u0004\u0012\u0002000=X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010H\u001a\u0004\u0018\u00010G2\b\u0010\u000f\u001a\u0004\u0018\u00010G@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u000e\u0010M\u001a\u00020NX\u0082\u0004¢\u0006\u0002\n\u0000R0\u0010O\u001a\b\u0012\u0004\u0012\u0002000=2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002000=@DX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010@\"\u0004\bQ\u0010BR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\bR\u0010S¨\u0006\u008f\u0001"}, d2 = {"Landroidx/compose/ui/viewinterop/AndroidViewHolder;", "Landroid/view/ViewGroup;", "Landroidx/core/view/NestedScrollingParent3;", "Landroidx/compose/runtime/ComposeNodeLifecycleCallback;", "context", "Landroid/content/Context;", "parentContext", "Landroidx/compose/runtime/CompositionContext;", "compositeKeyHash", "", "dispatcher", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "view", "Landroid/view/View;", "(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;ILandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroid/view/View;)V", "value", "Landroidx/compose/ui/unit/Density;", "density", "getDensity", "()Landroidx/compose/ui/unit/Density;", "setDensity", "(Landroidx/compose/ui/unit/Density;)V", "hasUpdateBlock", "", "lastHeightMeasureSpec", "lastWidthMeasureSpec", "layoutNode", "Landroidx/compose/ui/node/LayoutNode;", "getLayoutNode", "()Landroidx/compose/ui/node/LayoutNode;", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "getLifecycleOwner", "()Landroidx/lifecycle/LifecycleOwner;", "setLifecycleOwner", "(Landroidx/lifecycle/LifecycleOwner;)V", "location", "", "Landroidx/compose/ui/Modifier;", "modifier", "getModifier", "()Landroidx/compose/ui/Modifier;", "setModifier", "(Landroidx/compose/ui/Modifier;)V", "nestedScrollingParentHelper", "Landroidx/core/view/NestedScrollingParentHelper;", "onCommitAffectingUpdate", "Lkotlin/Function1;", "", "onDensityChanged", "getOnDensityChanged$ui_release", "()Lkotlin/jvm/functions/Function1;", "setOnDensityChanged$ui_release", "(Lkotlin/jvm/functions/Function1;)V", "onModifierChanged", "getOnModifierChanged$ui_release", "setOnModifierChanged$ui_release", "onRequestDisallowInterceptTouchEvent", "getOnRequestDisallowInterceptTouchEvent$ui_release", "setOnRequestDisallowInterceptTouchEvent$ui_release", "<set-?>", "Lkotlin/Function0;", "release", "getRelease", "()Lkotlin/jvm/functions/Function0;", "setRelease", "(Lkotlin/jvm/functions/Function0;)V", "reset", "getReset", "setReset", "runUpdate", "Landroidx/savedstate/SavedStateRegistryOwner;", "savedStateRegistryOwner", "getSavedStateRegistryOwner", "()Landroidx/savedstate/SavedStateRegistryOwner;", "setSavedStateRegistryOwner", "(Landroidx/savedstate/SavedStateRegistryOwner;)V", "snapshotObserver", "Landroidx/compose/runtime/snapshots/SnapshotStateObserver;", "update", "getUpdate", "setUpdate", "getView", "()Landroid/view/View;", "gatherTransparentRegion", "region", "Landroid/graphics/Region;", "getInteropView", "Landroidx/compose/ui/viewinterop/InteropView;", "getLayoutParams", "Landroid/view/ViewGroup$LayoutParams;", "getNestedScrollAxes", "invalidateChildInParent", "Landroid/view/ViewParent;", "dirty", "Landroid/graphics/Rect;", "isNestedScrollingEnabled", "obtainMeasureSpec", MetricSummary.JsonKeys.MIN, MetricSummary.JsonKeys.MAX, "preferred", "onAttachedToWindow", "onDeactivate", "onDescendantInvalidated", "child", "target", "onDetachedFromWindow", "onLayout", "changed", CmcdHeadersFactory.STREAM_TYPE_LIVE, "t", "r", "b", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onNestedFling", "velocityX", "", "velocityY", "consumed", "onNestedPreFling", "onNestedPreScroll", "dx", "dy", "type", "onNestedScroll", "dxConsumed", "dyConsumed", "dxUnconsumed", "dyUnconsumed", "onNestedScrollAccepted", "axes", "onRelease", "onReuse", "onStartNestedScroll", "onStopNestedScroll", "onWindowVisibilityChanged", ViewHierarchyNode.JsonKeys.VISIBILITY, "remeasure", "requestDisallowInterceptTouchEvent", "disallowIntercept", "shouldDelayChildPressedState", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class AndroidViewHolder extends ViewGroup implements NestedScrollingParent3, ComposeNodeLifecycleCallback {
    private final int compositeKeyHash;
    private Density density;
    private final NestedScrollDispatcher dispatcher;
    private boolean hasUpdateBlock;
    private int lastHeightMeasureSpec;
    private int lastWidthMeasureSpec;
    private final LayoutNode layoutNode;
    private LifecycleOwner lifecycleOwner;
    private final int[] location;
    private Modifier modifier;
    private final NestedScrollingParentHelper nestedScrollingParentHelper;
    private final Function1<AndroidViewHolder, Unit> onCommitAffectingUpdate;
    private Function1<? super Density, Unit> onDensityChanged;
    private Function1<? super Modifier, Unit> onModifierChanged;
    private Function1<? super Boolean, Unit> onRequestDisallowInterceptTouchEvent;
    private Function0<Unit> release;
    private Function0<Unit> reset;
    private final Function0<Unit> runUpdate;
    private SavedStateRegistryOwner savedStateRegistryOwner;
    private final SnapshotStateObserver snapshotObserver;
    private Function0<Unit> update;
    private final View view;

    public final Density getDensity() {
        return this.density;
    }

    /* renamed from: getInteropView, reason: from getter */
    public final View getView() {
        return this.view;
    }

    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    public final LifecycleOwner getLifecycleOwner() {
        return this.lifecycleOwner;
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    public final Function1<Density, Unit> getOnDensityChanged$ui_release() {
        return this.onDensityChanged;
    }

    public final Function1<Modifier, Unit> getOnModifierChanged$ui_release() {
        return this.onModifierChanged;
    }

    public final Function1<Boolean, Unit> getOnRequestDisallowInterceptTouchEvent$ui_release() {
        return this.onRequestDisallowInterceptTouchEvent;
    }

    public final Function0<Unit> getRelease() {
        return this.release;
    }

    public final Function0<Unit> getReset() {
        return this.reset;
    }

    public final SavedStateRegistryOwner getSavedStateRegistryOwner() {
        return this.savedStateRegistryOwner;
    }

    public final Function0<Unit> getUpdate() {
        return this.update;
    }

    public final View getView() {
        return this.view;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View child, View target, int axes, int type) {
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(target, "target");
        return ((axes & 2) == 0 && (axes & 1) == 0) ? false : true;
    }

    public final void setOnDensityChanged$ui_release(Function1<? super Density, Unit> function1) {
        this.onDensityChanged = function1;
    }

    public final void setOnModifierChanged$ui_release(Function1<? super Modifier, Unit> function1) {
        this.onModifierChanged = function1;
    }

    public final void setOnRequestDisallowInterceptTouchEvent$ui_release(Function1<? super Boolean, Unit> function1) {
        this.onRequestDisallowInterceptTouchEvent = function1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setRelease(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.release = function0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setReset(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.reset = function0;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AndroidViewHolder(Context context, CompositionContext compositionContext, int i, NestedScrollDispatcher dispatcher, View view) {
        super(context);
        AndroidViewHolder_androidKt$NoOpScrollConnection$1 androidViewHolder_androidKt$NoOpScrollConnection$1;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(view, "view");
        this.compositeKeyHash = i;
        this.dispatcher = dispatcher;
        this.view = view;
        if (compositionContext != null) {
            WindowRecomposer_androidKt.setCompositionContext(this, compositionContext);
        }
        setSaveFromParentEnabled(false);
        addView(view);
        this.update = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$update$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.reset = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$reset$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.release = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$release$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        };
        this.modifier = Modifier.INSTANCE;
        this.density = DensityKt.Density$default(1.0f, 0.0f, 2, null);
        this.snapshotObserver = new SnapshotStateObserver(new AndroidViewHolder$snapshotObserver$1(this));
        this.onCommitAffectingUpdate = new AndroidViewHolder$onCommitAffectingUpdate$1(this);
        this.runUpdate = new Function0<Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$runUpdate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                boolean z;
                SnapshotStateObserver snapshotStateObserver;
                Function1 function1;
                z = AndroidViewHolder.this.hasUpdateBlock;
                if (z) {
                    snapshotStateObserver = AndroidViewHolder.this.snapshotObserver;
                    AndroidViewHolder androidViewHolder = AndroidViewHolder.this;
                    function1 = androidViewHolder.onCommitAffectingUpdate;
                    snapshotStateObserver.observeReads(androidViewHolder, function1, AndroidViewHolder.this.getUpdate());
                }
            }
        };
        this.location = new int[2];
        this.lastWidthMeasureSpec = Integer.MIN_VALUE;
        this.lastHeightMeasureSpec = Integer.MIN_VALUE;
        this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        Object[] objArr = 0 == true ? 1 : 0;
        final LayoutNode layoutNode = new LayoutNode(false, objArr, 3, null);
        layoutNode.setInteropViewFactoryHolder$ui_release(this);
        Modifier.Companion companion = Modifier.INSTANCE;
        androidViewHolder_androidKt$NoOpScrollConnection$1 = AndroidViewHolder_androidKt.NoOpScrollConnection;
        final Modifier onGloballyPositioned = OnGloballyPositionedModifierKt.onGloballyPositioned(DrawModifierKt.drawBehind(PointerInteropFilter_androidKt.pointerInteropFilter(SemanticsModifierKt.semantics(NestedScrollModifierKt.nestedScroll(companion, androidViewHolder_androidKt$NoOpScrollConnection$1, this.dispatcher), true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$coreModifier$1
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SemanticsPropertyReceiver semantics) {
                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.INSTANCE;
            }
        }), this), new Function1<DrawScope, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$coreModifier$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                invoke2(drawScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(DrawScope drawBehind) {
                Intrinsics.checkNotNullParameter(drawBehind, "$this$drawBehind");
                LayoutNode layoutNode2 = LayoutNode.this;
                AndroidViewHolder androidViewHolder = this;
                Canvas canvas = drawBehind.getDrawContext().getCanvas();
                Owner owner = layoutNode2.getOwner();
                AndroidComposeView androidComposeView = owner instanceof AndroidComposeView ? (AndroidComposeView) owner : null;
                if (androidComposeView != null) {
                    androidComposeView.drawAndroidView(androidViewHolder, AndroidCanvas_androidKt.getNativeCanvas(canvas));
                }
            }
        }), new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$coreModifier$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
                invoke2(layoutCoordinates);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutCoordinates it) {
                Intrinsics.checkNotNullParameter(it, "it");
                AndroidViewHolder_androidKt.layoutAccordingTo(AndroidViewHolder.this, layoutNode);
            }
        });
        layoutNode.setCompositeKeyHash(this.compositeKeyHash);
        layoutNode.setModifier(this.modifier.then(onGloballyPositioned));
        this.onModifierChanged = new Function1<Modifier, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier) {
                invoke2(modifier);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Modifier it) {
                Intrinsics.checkNotNullParameter(it, "it");
                LayoutNode.this.setModifier(it.then(onGloballyPositioned));
            }
        };
        layoutNode.setDensity(this.density);
        this.onDensityChanged = new Function1<Density, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Density density) {
                invoke2(density);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Density it) {
                Intrinsics.checkNotNullParameter(it, "it");
                LayoutNode.this.setDensity(it);
            }
        };
        layoutNode.setOnAttach$ui_release(new Function1<Owner, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Owner owner) {
                invoke2(owner);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Owner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                AndroidComposeView androidComposeView = owner instanceof AndroidComposeView ? (AndroidComposeView) owner : null;
                if (androidComposeView != null) {
                    androidComposeView.addAndroidView(AndroidViewHolder.this, layoutNode);
                }
                ViewParent parent = AndroidViewHolder.this.getView().getParent();
                AndroidViewHolder androidViewHolder = AndroidViewHolder.this;
                if (parent != androidViewHolder) {
                    androidViewHolder.addView(androidViewHolder.getView());
                }
            }
        });
        layoutNode.setOnDetach$ui_release(new Function1<Owner, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Owner owner) {
                invoke2(owner);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Owner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                AndroidComposeView androidComposeView = owner instanceof AndroidComposeView ? (AndroidComposeView) owner : null;
                if (androidComposeView != null) {
                    androidComposeView.removeAndroidView(AndroidViewHolder.this);
                }
                AndroidViewHolder.this.removeAllViewsInLayout();
            }
        });
        layoutNode.setMeasurePolicy(new MeasurePolicy() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5
            @Override // androidx.compose.ui.layout.MeasurePolicy
            /* renamed from: measure-3p2s80s */
            public MeasureResult mo21measure3p2s80s(MeasureScope measure, List<? extends Measurable> measurables, long j) {
                int obtainMeasureSpec;
                int obtainMeasureSpec2;
                Intrinsics.checkNotNullParameter(measure, "$this$measure");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                if (AndroidViewHolder.this.getChildCount() == 0) {
                    return MeasureScope.layout$default(measure, Constraints.m4841getMinWidthimpl(j), Constraints.m4840getMinHeightimpl(j), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5$measure$1
                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Placeable.PlacementScope layout) {
                            Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.INSTANCE;
                        }
                    }, 4, null);
                }
                if (Constraints.m4841getMinWidthimpl(j) != 0) {
                    AndroidViewHolder.this.getChildAt(0).setMinimumWidth(Constraints.m4841getMinWidthimpl(j));
                }
                if (Constraints.m4840getMinHeightimpl(j) != 0) {
                    AndroidViewHolder.this.getChildAt(0).setMinimumHeight(Constraints.m4840getMinHeightimpl(j));
                }
                AndroidViewHolder androidViewHolder = AndroidViewHolder.this;
                int m4841getMinWidthimpl = Constraints.m4841getMinWidthimpl(j);
                int m4839getMaxWidthimpl = Constraints.m4839getMaxWidthimpl(j);
                ViewGroup.LayoutParams layoutParams = AndroidViewHolder.this.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams);
                obtainMeasureSpec = androidViewHolder.obtainMeasureSpec(m4841getMinWidthimpl, m4839getMaxWidthimpl, layoutParams.width);
                AndroidViewHolder androidViewHolder2 = AndroidViewHolder.this;
                int m4840getMinHeightimpl = Constraints.m4840getMinHeightimpl(j);
                int m4838getMaxHeightimpl = Constraints.m4838getMaxHeightimpl(j);
                ViewGroup.LayoutParams layoutParams2 = AndroidViewHolder.this.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams2);
                obtainMeasureSpec2 = androidViewHolder2.obtainMeasureSpec(m4840getMinHeightimpl, m4838getMaxHeightimpl, layoutParams2.height);
                androidViewHolder.measure(obtainMeasureSpec, obtainMeasureSpec2);
                int measuredWidth = AndroidViewHolder.this.getMeasuredWidth();
                int measuredHeight = AndroidViewHolder.this.getMeasuredHeight();
                final AndroidViewHolder androidViewHolder3 = AndroidViewHolder.this;
                final LayoutNode layoutNode2 = layoutNode;
                return MeasureScope.layout$default(measure, measuredWidth, measuredHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$5$measure$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                        invoke2(placementScope);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Placeable.PlacementScope layout) {
                        Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        AndroidViewHolder_androidKt.layoutAccordingTo(AndroidViewHolder.this, layoutNode2);
                    }
                }, 4, null);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return intrinsicWidth(i2);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return intrinsicWidth(i2);
            }

            private final int intrinsicWidth(int height) {
                int obtainMeasureSpec;
                AndroidViewHolder androidViewHolder = AndroidViewHolder.this;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                AndroidViewHolder androidViewHolder2 = AndroidViewHolder.this;
                ViewGroup.LayoutParams layoutParams = androidViewHolder2.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams);
                obtainMeasureSpec = androidViewHolder2.obtainMeasureSpec(0, height, layoutParams.height);
                androidViewHolder.measure(makeMeasureSpec, obtainMeasureSpec);
                return AndroidViewHolder.this.getMeasuredWidth();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return intrinsicHeight(i2);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i2) {
                Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                return intrinsicHeight(i2);
            }

            private final int intrinsicHeight(int width) {
                int obtainMeasureSpec;
                AndroidViewHolder androidViewHolder = AndroidViewHolder.this;
                ViewGroup.LayoutParams layoutParams = androidViewHolder.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams);
                obtainMeasureSpec = androidViewHolder.obtainMeasureSpec(0, width, layoutParams.width);
                androidViewHolder.measure(obtainMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
                return AndroidViewHolder.this.getMeasuredHeight();
            }
        });
        this.layoutNode = layoutNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setUpdate(Function0<Unit> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.update = value;
        this.hasUpdateBlock = true;
        this.runUpdate.invoke();
    }

    public final void setModifier(Modifier value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value != this.modifier) {
            this.modifier = value;
            Function1<? super Modifier, Unit> function1 = this.onModifierChanged;
            if (function1 != null) {
                function1.invoke(value);
            }
        }
    }

    public final void setDensity(Density value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value != this.density) {
            this.density = value;
            Function1<? super Density, Unit> function1 = this.onDensityChanged;
            if (function1 != null) {
                function1.invoke(value);
            }
        }
    }

    public final void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner != this.lifecycleOwner) {
            this.lifecycleOwner = lifecycleOwner;
            ViewTreeLifecycleOwner.set(this, lifecycleOwner);
        }
    }

    public final void setSavedStateRegistryOwner(SavedStateRegistryOwner savedStateRegistryOwner) {
        if (savedStateRegistryOwner != this.savedStateRegistryOwner) {
            this.savedStateRegistryOwner = savedStateRegistryOwner;
            ViewTreeSavedStateRegistryOwner.set(this, savedStateRegistryOwner);
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public void onReuse() {
        if (this.view.getParent() != this) {
            addView(this.view);
        } else {
            this.reset.invoke();
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public void onDeactivate() {
        this.reset.invoke();
        removeAllViewsInLayout();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public void onRelease() {
        this.release.invoke();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.view.getParent() != this) {
            setMeasuredDimension(View.MeasureSpec.getSize(widthMeasureSpec), View.MeasureSpec.getSize(heightMeasureSpec));
            return;
        }
        this.view.measure(widthMeasureSpec, heightMeasureSpec);
        setMeasuredDimension(this.view.getMeasuredWidth(), this.view.getMeasuredHeight());
        this.lastWidthMeasureSpec = widthMeasureSpec;
        this.lastHeightMeasureSpec = heightMeasureSpec;
    }

    public final void remeasure() {
        int i;
        int i2 = this.lastWidthMeasureSpec;
        if (i2 == Integer.MIN_VALUE || (i = this.lastHeightMeasureSpec) == Integer.MIN_VALUE) {
            return;
        }
        measure(i2, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        this.view.layout(0, 0, r - l, b - t);
    }

    @Override // android.view.View
    public ViewGroup.LayoutParams getLayoutParams() {
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return layoutParams == null ? new ViewGroup.LayoutParams(-1, -1) : layoutParams;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        Function1<? super Boolean, Unit> function1 = this.onRequestDisallowInterceptTouchEvent;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(disallowIntercept));
        }
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.snapshotObserver.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.snapshotObserver.stop();
        this.snapshotObserver.clear();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] location, Rect dirty) {
        super.invalidateChildInParent(location, dirty);
        this.layoutNode.invalidateLayer$ui_release();
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onDescendantInvalidated(View child, View target) {
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(target, "target");
        super.onDescendantInvalidated(child, target);
        this.layoutNode.invalidateLayer$ui_release();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean gatherTransparentRegion(Region region) {
        if (region == null) {
            return true;
        }
        getLocationInWindow(this.location);
        int[] iArr = this.location;
        int i = iArr[0];
        region.op(i, iArr[1], i + getWidth(), this.location[1] + getHeight(), Region.Op.DIFFERENCE);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int obtainMeasureSpec(int min, int max, int preferred) {
        if (preferred >= 0 || min == max) {
            return View.MeasureSpec.makeMeasureSpec(RangesKt.coerceIn(preferred, min, max), 1073741824);
        }
        if (preferred == -2 && max != Integer.MAX_VALUE) {
            return View.MeasureSpec.makeMeasureSpec(max, Integer.MIN_VALUE);
        }
        if (preferred == -1 && max != Integer.MAX_VALUE) {
            return View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        }
        return View.MeasureSpec.makeMeasureSpec(0, 0);
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.nestedScrollingParentHelper.getNestedScrollAxes();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View child, View target, int axes, int type) {
        Intrinsics.checkNotNullParameter(child, "child");
        Intrinsics.checkNotNullParameter(target, "target");
        this.nestedScrollingParentHelper.onNestedScrollAccepted(child, target, axes, type);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View target, int type) {
        Intrinsics.checkNotNullParameter(target, "target");
        this.nestedScrollingParentHelper.onStopNestedScroll(target, type);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type, int[] consumed) {
        float composeOffset;
        float composeOffset2;
        float composeOffset3;
        float composeOffset4;
        int nestedScrollSource;
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(consumed, "consumed");
        if (isNestedScrollingEnabled()) {
            NestedScrollDispatcher nestedScrollDispatcher = this.dispatcher;
            composeOffset = AndroidViewHolder_androidKt.toComposeOffset(dxConsumed);
            composeOffset2 = AndroidViewHolder_androidKt.toComposeOffset(dyConsumed);
            long Offset = OffsetKt.Offset(composeOffset, composeOffset2);
            composeOffset3 = AndroidViewHolder_androidKt.toComposeOffset(dxUnconsumed);
            composeOffset4 = AndroidViewHolder_androidKt.toComposeOffset(dyUnconsumed);
            long Offset2 = OffsetKt.Offset(composeOffset3, composeOffset4);
            nestedScrollSource = AndroidViewHolder_androidKt.toNestedScrollSource(type);
            long m3644dispatchPostScrollDzOQY0M = nestedScrollDispatcher.m3644dispatchPostScrollDzOQY0M(Offset, Offset2, nestedScrollSource);
            consumed[0] = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2400getXimpl(m3644dispatchPostScrollDzOQY0M));
            consumed[1] = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2401getYimpl(m3644dispatchPostScrollDzOQY0M));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
        float composeOffset;
        float composeOffset2;
        float composeOffset3;
        float composeOffset4;
        int nestedScrollSource;
        Intrinsics.checkNotNullParameter(target, "target");
        if (isNestedScrollingEnabled()) {
            NestedScrollDispatcher nestedScrollDispatcher = this.dispatcher;
            composeOffset = AndroidViewHolder_androidKt.toComposeOffset(dxConsumed);
            composeOffset2 = AndroidViewHolder_androidKt.toComposeOffset(dyConsumed);
            long Offset = OffsetKt.Offset(composeOffset, composeOffset2);
            composeOffset3 = AndroidViewHolder_androidKt.toComposeOffset(dxUnconsumed);
            composeOffset4 = AndroidViewHolder_androidKt.toComposeOffset(dyUnconsumed);
            long Offset2 = OffsetKt.Offset(composeOffset3, composeOffset4);
            nestedScrollSource = AndroidViewHolder_androidKt.toNestedScrollSource(type);
            nestedScrollDispatcher.m3644dispatchPostScrollDzOQY0M(Offset, Offset2, nestedScrollSource);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed, int type) {
        float composeOffset;
        float composeOffset2;
        int nestedScrollSource;
        Intrinsics.checkNotNullParameter(target, "target");
        Intrinsics.checkNotNullParameter(consumed, "consumed");
        if (isNestedScrollingEnabled()) {
            NestedScrollDispatcher nestedScrollDispatcher = this.dispatcher;
            composeOffset = AndroidViewHolder_androidKt.toComposeOffset(dx);
            composeOffset2 = AndroidViewHolder_androidKt.toComposeOffset(dy);
            long Offset = OffsetKt.Offset(composeOffset, composeOffset2);
            nestedScrollSource = AndroidViewHolder_androidKt.toNestedScrollSource(type);
            long m3646dispatchPreScrollOzD1aCk = nestedScrollDispatcher.m3646dispatchPreScrollOzD1aCk(Offset, nestedScrollSource);
            consumed[0] = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2400getXimpl(m3646dispatchPreScrollOzD1aCk));
            consumed[1] = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m2401getYimpl(m3646dispatchPreScrollOzD1aCk));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        float composeVelocity;
        float composeVelocity2;
        Intrinsics.checkNotNullParameter(target, "target");
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        composeVelocity = AndroidViewHolder_androidKt.toComposeVelocity(velocityX);
        composeVelocity2 = AndroidViewHolder_androidKt.toComposeVelocity(velocityY);
        BuildersKt__Builders_commonKt.launch$default(this.dispatcher.getCoroutineScope(), null, null, new AndroidViewHolder$onNestedFling$1(consumed, this, VelocityKt.Velocity(composeVelocity, composeVelocity2), null), 3, null);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        float composeVelocity;
        float composeVelocity2;
        Intrinsics.checkNotNullParameter(target, "target");
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        composeVelocity = AndroidViewHolder_androidKt.toComposeVelocity(velocityX);
        composeVelocity2 = AndroidViewHolder_androidKt.toComposeVelocity(velocityY);
        BuildersKt__Builders_commonKt.launch$default(this.dispatcher.getCoroutineScope(), null, null, new AndroidViewHolder$onNestedPreFling$1(this, VelocityKt.Velocity(composeVelocity, composeVelocity2), null), 3, null);
        return false;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.view.isNestedScrollingEnabled();
    }
}
