package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.BuildDrawCacheParams;
import androidx.compose.ui.draw.DrawCacheModifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusOrderModifier;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifier;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.modifier.BackwardsCompatLocalMap;
import androidx.compose.ui.modifier.ModifierLocal;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalModifierNodeKt;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsModifier;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BackwardsCompatNode.kt */
@Metadata(d1 = {"\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r2\u00020\u000e2\u00020\u000fB\r\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010?\u001a\u00020<2\u0006\u0010@\u001a\u00020\u001eH\u0002J\b\u0010A\u001a\u00020\u001eH\u0016J\b\u0010B\u001a\u00020<H\u0016J\b\u0010C\u001a\u00020<H\u0016J\b\u0010D\u001a\u00020<H\u0016J\r\u0010E\u001a\u00020<H\u0000¢\u0006\u0002\bFJ\u0010\u0010G\u001a\u00020<2\u0006\u0010H\u001a\u00020IH\u0016J\u0010\u0010J\u001a\u00020<2\u0006\u0010K\u001a\u00020\"H\u0016J\b\u0010L\u001a\u00020<H\u0016J\u0010\u0010M\u001a\u00020<2\u0006\u0010K\u001a\u00020\"H\u0016J-\u0010N\u001a\u00020<2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020TH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bU\u0010VJ\u001d\u0010W\u001a\u00020<2\u0006\u00103\u001a\u00020TH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bX\u0010YJ\b\u0010Z\u001a\u00020\u001eH\u0016J\b\u0010[\u001a\u00020\\H\u0016J\b\u0010]\u001a\u00020<H\u0002J\b\u0010^\u001a\u00020<H\u0002J\u0006\u0010_\u001a\u00020<J\u0014\u0010`\u001a\u00020<2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030aH\u0002J\f\u0010b\u001a\u00020<*\u00020cH\u0016J\f\u0010d\u001a\u00020<*\u00020eH\u0016J\u001c\u0010f\u001a\u00020g*\u00020h2\u0006\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020gH\u0016J\u001c\u0010l\u001a\u00020g*\u00020h2\u0006\u0010i\u001a\u00020j2\u0006\u0010m\u001a\u00020gH\u0016J)\u0010n\u001a\u00020o*\u00020p2\u0006\u0010i\u001a\u00020q2\u0006\u0010r\u001a\u00020sH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bt\u0010uJ\u001c\u0010v\u001a\u00020g*\u00020h2\u0006\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020gH\u0016J\u001c\u0010w\u001a\u00020g*\u00020h2\u0006\u0010i\u001a\u00020j2\u0006\u0010m\u001a\u00020gH\u0016J\u0018\u0010x\u001a\u0004\u0018\u00010y*\u00020\u00162\b\u0010z\u001a\u0004\u0018\u00010yH\u0016R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0011@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u0012R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020$8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0014\u0010'\u001a\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R2\u0010+\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030-0,j\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030-`.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001d\u00103\u001a\u0002048VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b5\u00106R$\u00107\u001a\u0002H8\"\u0004\b\u0000\u00108*\b\u0012\u0004\u0012\u0002H80-8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010:\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006{"}, d2 = {"Landroidx/compose/ui/node/BackwardsCompatNode;", "Landroidx/compose/ui/node/LayoutModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalReadScope;", "Landroidx/compose/ui/node/ParentDataModifierNode;", "Landroidx/compose/ui/node/LayoutAwareModifierNode;", "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;", "Landroidx/compose/ui/focus/FocusRequesterModifierNode;", "Landroidx/compose/ui/node/OwnerScope;", "Landroidx/compose/ui/draw/BuildDrawCacheParams;", "Landroidx/compose/ui/Modifier$Node;", "element", "Landroidx/compose/ui/Modifier$Element;", "(Landroidx/compose/ui/Modifier$Element;)V", "_providedValues", "Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;", "density", "Landroidx/compose/ui/unit/Density;", "getDensity", "()Landroidx/compose/ui/unit/Density;", "value", "getElement", "()Landroidx/compose/ui/Modifier$Element;", "setElement", "invalidateCache", "", "isValidOwnerScope", "()Z", "lastOnPlacedCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "providedValues", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "getProvidedValues", "()Landroidx/compose/ui/modifier/ModifierLocalMap;", "readValues", "Ljava/util/HashSet;", "Landroidx/compose/ui/modifier/ModifierLocal;", "Lkotlin/collections/HashSet;", "getReadValues", "()Ljava/util/HashSet;", "setReadValues", "(Ljava/util/HashSet;)V", "size", "Landroidx/compose/ui/geometry/Size;", "getSize-NH-jbRc", "()J", SentryThread.JsonKeys.CURRENT, ExifInterface.GPS_DIRECTION_TRUE, "getCurrent", "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;", "applyFocusProperties", "", "focusProperties", "Landroidx/compose/ui/focus/FocusProperties;", "initializeModifier", "duringAttach", "interceptOutOfBoundsChildEvents", "onAttach", "onCancelPointerInput", "onDetach", "onDrawCacheReadsChanged", "onDrawCacheReadsChanged$ui_release", "onFocusEvent", "focusState", "Landroidx/compose/ui/focus/FocusState;", "onGloballyPositioned", "coordinates", "onMeasureResultChanged", "onPlaced", "onPointerEvent", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "bounds", "Landroidx/compose/ui/unit/IntSize;", "onPointerEvent-H0pRuoY", "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "onRemeasured", "onRemeasured-ozmzZPI", "(J)V", "sharePointerInputWithSiblings", "toString", "", "unInitializeModifier", "updateDrawCache", "updateModifierLocalConsumer", "updateModifierLocalProvider", "Landroidx/compose/ui/modifier/ModifierLocalProvider;", "applySemantics", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "draw", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "maxIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurable", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "modifyParentData", "", "parentData", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BackwardsCompatNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode, PointerInputModifierNode, ModifierLocalModifierNode, ModifierLocalReadScope, ParentDataModifierNode, LayoutAwareModifierNode, GlobalPositionAwareModifierNode, FocusEventModifierNode, FocusPropertiesModifierNode, FocusRequesterModifierNode, OwnerScope, BuildDrawCacheParams {
    private BackwardsCompatLocalMap _providedValues;
    private Modifier.Element element;
    private boolean invalidateCache;
    private LayoutCoordinates lastOnPlacedCoordinates;
    private HashSet<ModifierLocal<?>> readValues;

    public final Modifier.Element getElement() {
        return this.element;
    }

    public final HashSet<ModifierLocal<?>> getReadValues() {
        return this.readValues;
    }

    public final void setReadValues(HashSet<ModifierLocal<?>> hashSet) {
        Intrinsics.checkNotNullParameter(hashSet, "<set-?>");
        this.readValues = hashSet;
    }

    public BackwardsCompatNode(Modifier.Element element) {
        Intrinsics.checkNotNullParameter(element, "element");
        setKindSet$ui_release(NodeKindKt.calculateNodeKindSetFrom(element));
        this.element = element;
        this.invalidateCache = true;
        this.readValues = new HashSet<>();
    }

    public final void setElement(Modifier.Element value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (getIsAttached()) {
            unInitializeModifier();
        }
        this.element = value;
        setKindSet$ui_release(NodeKindKt.calculateNodeKindSetFrom(value));
        if (getIsAttached()) {
            initializeModifier(false);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        initializeModifier(true);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        unInitializeModifier();
    }

    private final void unInitializeModifier() {
        if (!getIsAttached()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        Modifier.Element element = this.element;
        BackwardsCompatNode backwardsCompatNode = this;
        if ((NodeKind.m4091constructorimpl(32) & backwardsCompatNode.getKindSet()) != 0) {
            if (element instanceof ModifierLocalProvider) {
                DelegatableNodeKt.requireOwner(this).getModifierLocalManager().removedProvider(this, ((ModifierLocalProvider) element).getKey());
            }
            if (element instanceof ModifierLocalConsumer) {
                ((ModifierLocalConsumer) element).onModifierLocalsUpdated(BackwardsCompatNodeKt.access$getDetachedModifierLocalReadScope$p());
            }
        }
        if ((backwardsCompatNode.getKindSet() & NodeKind.m4091constructorimpl(8)) != 0) {
            DelegatableNodeKt.requireOwner(this).onSemanticsChange();
        }
        if (element instanceof FocusRequesterModifier) {
            ((FocusRequesterModifier) element).getFocusRequester().getFocusRequesterNodes$ui_release().remove(this);
        }
    }

    private final void initializeModifier(boolean duringAttach) {
        if (!getIsAttached()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        Modifier.Element element = this.element;
        BackwardsCompatNode backwardsCompatNode = this;
        if ((NodeKind.m4091constructorimpl(32) & backwardsCompatNode.getKindSet()) != 0) {
            if (element instanceof ModifierLocalConsumer) {
                sideEffect(new Function0<Unit>() { // from class: androidx.compose.ui.node.BackwardsCompatNode$initializeModifier$1
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
                        BackwardsCompatNode.this.updateModifierLocalConsumer();
                    }
                });
            }
            if (element instanceof ModifierLocalProvider) {
                updateModifierLocalProvider((ModifierLocalProvider) element);
            }
        }
        if ((NodeKind.m4091constructorimpl(4) & backwardsCompatNode.getKindSet()) != 0) {
            if (element instanceof DrawCacheModifier) {
                this.invalidateCache = true;
            }
            if (!duringAttach) {
                LayoutModifierNodeKt.invalidateLayer(this);
            }
        }
        if ((NodeKind.m4091constructorimpl(2) & backwardsCompatNode.getKindSet()) != 0) {
            if (BackwardsCompatNodeKt.access$isChainUpdate(this)) {
                NodeCoordinator coordinator$ui_release = getCoordinator();
                Intrinsics.checkNotNull(coordinator$ui_release);
                ((LayoutModifierNodeCoordinator) coordinator$ui_release).setLayoutModifierNode$ui_release(this);
                coordinator$ui_release.onLayoutModifierNodeChanged();
            }
            if (!duringAttach) {
                LayoutModifierNodeKt.invalidateLayer(this);
                DelegatableNodeKt.requireLayoutNode(this).invalidateMeasurements$ui_release();
            }
        }
        if (element instanceof RemeasurementModifier) {
            ((RemeasurementModifier) element).onRemeasurementAvailable(DelegatableNodeKt.requireLayoutNode(this));
        }
        if ((NodeKind.m4091constructorimpl(128) & backwardsCompatNode.getKindSet()) != 0) {
            if ((element instanceof OnRemeasuredModifier) && BackwardsCompatNodeKt.access$isChainUpdate(this)) {
                DelegatableNodeKt.requireLayoutNode(this).invalidateMeasurements$ui_release();
            }
            if (element instanceof OnPlacedModifier) {
                this.lastOnPlacedCoordinates = null;
                if (BackwardsCompatNodeKt.access$isChainUpdate(this)) {
                    DelegatableNodeKt.requireOwner(this).registerOnLayoutCompletedListener(new Owner.OnLayoutCompletedListener() { // from class: androidx.compose.ui.node.BackwardsCompatNode$initializeModifier$2
                        @Override // androidx.compose.ui.node.Owner.OnLayoutCompletedListener
                        public void onLayoutComplete() {
                            LayoutCoordinates layoutCoordinates;
                            layoutCoordinates = BackwardsCompatNode.this.lastOnPlacedCoordinates;
                            if (layoutCoordinates == null) {
                                BackwardsCompatNode backwardsCompatNode2 = BackwardsCompatNode.this;
                                backwardsCompatNode2.onPlaced(DelegatableNodeKt.m3989requireCoordinator64DMado(backwardsCompatNode2, NodeKind.m4091constructorimpl(128)));
                            }
                        }
                    });
                }
            }
        }
        if ((NodeKind.m4091constructorimpl(256) & backwardsCompatNode.getKindSet()) != 0 && (element instanceof OnGloballyPositionedModifier) && BackwardsCompatNodeKt.access$isChainUpdate(this)) {
            DelegatableNodeKt.requireLayoutNode(this).invalidateMeasurements$ui_release();
        }
        if (element instanceof FocusRequesterModifier) {
            ((FocusRequesterModifier) element).getFocusRequester().getFocusRequesterNodes$ui_release().add(this);
        }
        if ((NodeKind.m4091constructorimpl(16) & backwardsCompatNode.getKindSet()) != 0 && (element instanceof PointerInputModifier)) {
            ((PointerInputModifier) element).getPointerInputFilter().setLayoutCoordinates$ui_release(getCoordinator());
        }
        if ((NodeKind.m4091constructorimpl(8) & backwardsCompatNode.getKindSet()) != 0) {
            DelegatableNodeKt.requireOwner(this).onSemanticsChange();
        }
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public Density getDensity() {
        return DelegatableNodeKt.requireLayoutNode(this).getDensity();
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public LayoutDirection getLayoutDirection() {
        return DelegatableNodeKt.requireLayoutNode(this).getLayoutDirection();
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    /* renamed from: getSize-NH-jbRc */
    public long mo2305getSizeNHjbRc() {
        return IntSizeKt.m5053toSizeozmzZPI(DelegatableNodeKt.m3989requireCoordinator64DMado(this, NodeKind.m4091constructorimpl(128)).mo3883getSizeYbymL2g());
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void onMeasureResultChanged() {
        this.invalidateCache = true;
        DrawModifierNodeKt.invalidateDraw(this);
    }

    private final void updateDrawCache() {
        final Modifier.Element element = this.element;
        if (element instanceof DrawCacheModifier) {
            DelegatableNodeKt.requireOwner(this).getSnapshotObserver().observeReads$ui_release(this, BackwardsCompatNodeKt.access$getOnDrawCacheReadsChanged$p(), new Function0<Unit>() { // from class: androidx.compose.ui.node.BackwardsCompatNode$updateDrawCache$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    ((DrawCacheModifier) Modifier.Element.this).onBuildCache(this);
                }
            });
        }
        this.invalidateCache = false;
    }

    public final void onDrawCacheReadsChanged$ui_release() {
        this.invalidateCache = true;
        DrawModifierNodeKt.invalidateDraw(this);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public ModifierLocalMap getProvidedValues() {
        BackwardsCompatLocalMap backwardsCompatLocalMap = this._providedValues;
        return backwardsCompatLocalMap != null ? backwardsCompatLocalMap : ModifierLocalModifierNodeKt.modifierLocalMapOf();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode, androidx.compose.ui.modifier.ModifierLocalReadScope
    public <T> T getCurrent(ModifierLocal<T> modifierLocal) {
        NodeChain nodes;
        Intrinsics.checkNotNullParameter(modifierLocal, "<this>");
        this.readValues.add(modifierLocal);
        BackwardsCompatNode backwardsCompatNode = this;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(32);
        if (!backwardsCompatNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = backwardsCompatNode.getNode().getParent();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(backwardsCompatNode);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                        DelegatingNode delegatingNode = parent;
                        ?? r4 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof ModifierLocalModifierNode) {
                                ModifierLocalModifierNode modifierLocalModifierNode = (ModifierLocalModifierNode) delegatingNode;
                                if (modifierLocalModifierNode.getProvidedValues().contains$ui_release(modifierLocal)) {
                                    return (T) modifierLocalModifierNode.getProvidedValues().get$ui_release(modifierLocal);
                                }
                            } else if ((delegatingNode.getKindSet() & m4091constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node delegate = delegatingNode.getDelegate();
                                int i = 0;
                                delegatingNode = delegatingNode;
                                r4 = r4;
                                while (delegate != null) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i++;
                                        r4 = r4;
                                        if (i == 1) {
                                            delegatingNode = delegate;
                                        } else {
                                            if (r4 == 0) {
                                                r4 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (delegatingNode != 0) {
                                                if (r4 != 0) {
                                                    r4.add(delegatingNode);
                                                }
                                                delegatingNode = 0;
                                            }
                                            if (r4 != 0) {
                                                r4.add(delegate);
                                            }
                                        }
                                    }
                                    delegate = delegate.getChild();
                                    delegatingNode = delegatingNode;
                                    r4 = r4;
                                }
                                if (i == 1) {
                                }
                            }
                            delegatingNode = DelegatableNodeKt.pop(r4);
                        }
                    }
                    parent = parent.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
        return modifierLocal.getDefaultFactory$ui_release().invoke();
    }

    public final void updateModifierLocalConsumer() {
        if (getIsAttached()) {
            this.readValues.clear();
            DelegatableNodeKt.requireOwner(this).getSnapshotObserver().observeReads$ui_release(this, BackwardsCompatNodeKt.access$getUpdateModifierLocalConsumer$p(), new Function0<Unit>() { // from class: androidx.compose.ui.node.BackwardsCompatNode$updateModifierLocalConsumer$1
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
                    Modifier.Element element = BackwardsCompatNode.this.getElement();
                    Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.modifier.ModifierLocalConsumer");
                    ((ModifierLocalConsumer) element).onModifierLocalsUpdated(BackwardsCompatNode.this);
                }
            });
        }
    }

    private final void updateModifierLocalProvider(ModifierLocalProvider<?> element) {
        BackwardsCompatLocalMap backwardsCompatLocalMap = this._providedValues;
        if (backwardsCompatLocalMap != null && backwardsCompatLocalMap.contains$ui_release(element.getKey())) {
            backwardsCompatLocalMap.setElement(element);
            DelegatableNodeKt.requireOwner(this).getModifierLocalManager().updatedProvider(this, element.getKey());
        } else {
            this._providedValues = new BackwardsCompatLocalMap(element);
            if (BackwardsCompatNodeKt.access$isChainUpdate(this)) {
                DelegatableNodeKt.requireOwner(this).getModifierLocalManager().insertedProvider(this, element.getKey());
            }
        }
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValidOwnerScope() {
        return getIsAttached();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo247measure3p2s80s(MeasureScope measure, Measurable measurable, long j) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier");
        return ((LayoutModifier) element).mo47measure3p2s80s(measure, measurable, j);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier");
        return ((LayoutModifier) element).minIntrinsicWidth(intrinsicMeasureScope, measurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier");
        return ((LayoutModifier) element).minIntrinsicHeight(intrinsicMeasureScope, measurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier");
        return ((LayoutModifier) element).maxIntrinsicWidth(intrinsicMeasureScope, measurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier");
        return ((LayoutModifier) element).maxIntrinsicHeight(intrinsicMeasureScope, measurable, i);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.draw.DrawModifier");
        DrawModifier drawModifier = (DrawModifier) element;
        if (this.invalidateCache && (element instanceof DrawCacheModifier)) {
            updateDrawCache();
        }
        drawModifier.draw(contentDrawScope);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsModifier");
        ((SemanticsConfiguration) semanticsPropertyReceiver).collapsePeer$ui_release(((SemanticsModifier) element).getSemanticsConfiguration());
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public void mo152onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pass, long bounds) {
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pass, "pass");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        ((PointerInputModifier) element).getPointerInputFilter().mo3779onPointerEventH0pRuoY(pointerEvent, pass, bounds);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        ((PointerInputModifier) element).getPointerInputFilter().onCancel();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public boolean sharePointerInputWithSiblings() {
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        return ((PointerInputModifier) element).getPointerInputFilter().getShareWithSiblings();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public boolean interceptOutOfBoundsChildEvents() {
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier");
        return ((PointerInputModifier) element).getPointerInputFilter().getInterceptOutOfBoundsChildEvents();
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public Object modifyParentData(Density density, Object obj) {
        Intrinsics.checkNotNullParameter(density, "<this>");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier");
        return ((ParentDataModifier) element).modifyParentData(density, obj);
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        Modifier.Element element = this.element;
        Intrinsics.checkNotNull(element, "null cannot be cast to non-null type androidx.compose.ui.layout.OnGloballyPositionedModifier");
        ((OnGloballyPositionedModifier) element).onGloballyPositioned(coordinates);
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI, reason: not valid java name */
    public void mo3974onRemeasuredozmzZPI(long size) {
        Modifier.Element element = this.element;
        if (element instanceof OnRemeasuredModifier) {
            ((OnRemeasuredModifier) element).mo260onRemeasuredozmzZPI(size);
        }
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public void onPlaced(LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        this.lastOnPlacedCoordinates = coordinates;
        Modifier.Element element = this.element;
        if (element instanceof OnPlacedModifier) {
            ((OnPlacedModifier) element).onPlaced(coordinates);
        }
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        Intrinsics.checkNotNullParameter(focusState, "focusState");
        Modifier.Element element = this.element;
        if (!(element instanceof FocusEventModifier)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        ((FocusEventModifier) element).onFocusEvent(focusState);
    }

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public void applyFocusProperties(FocusProperties focusProperties) {
        Intrinsics.checkNotNullParameter(focusProperties, "focusProperties");
        Modifier.Element element = this.element;
        if (!(element instanceof FocusOrderModifier)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        new FocusOrderModifierToProperties((FocusOrderModifier) element).invoke((FocusOrderModifierToProperties) focusProperties);
    }

    public String toString() {
        return this.element.toString();
    }
}
