package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.NodeKind;
import io.sentry.protocol.TransactionInfo;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TwoDimensionalFocusSearch.kt */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u001a5\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\u000f\u001a5\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u000f\u001a\f\u0010\u0015\u001a\u00020\u0016*\u00020\u0016H\u0002\u001a\f\u0010\u0017\u001a\u00020\t*\u00020\tH\u0002\u001a\u001a\u0010\u0018\u001a\u00020\u0019*\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00160\u001cH\u0002\u001a1\u0010\u001d\u001a\u0004\u0018\u00010\u0016*\b\u0012\u0004\u0012\u00020\u00160\u001c2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010 \u001a5\u0010!\u001a\u00020\u0007*\u00020\u00162\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070#H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b$\u0010%\u001a=\u0010&\u001a\u00020\u0007*\u00020\u00162\u0006\u0010'\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070#H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b(\u0010)\u001a=\u0010*\u001a\u00020\u0007*\u00020\u00162\u0006\u0010'\u001a\u00020\u00162\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070#H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b+\u0010)\u001a\f\u0010,\u001a\u00020\t*\u00020\tH\u0002\u001a7\u0010-\u001a\u0004\u0018\u00010\u0007*\u00020\u00162\u0006\u0010\f\u001a\u00020\r2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070#H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b.\u0010/\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0003\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00060"}, d2 = {"InvalidFocusDirection", "", "getInvalidFocusDirection$annotations", "()V", "NoActiveChild", "getNoActiveChild$annotations", "beamBeats", "", TransactionInfo.JsonKeys.SOURCE, "Landroidx/compose/ui/geometry/Rect;", "rect1", "rect2", "direction", "Landroidx/compose/ui/focus/FocusDirection;", "beamBeats-I7lrPNg", "(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z", "isBetterCandidate", "proposedCandidate", "currentCandidate", "focusedRect", "isBetterCandidate-I7lrPNg", "activeNode", "Landroidx/compose/ui/focus/FocusTargetNode;", "bottomRight", "collectAccessibleChildren", "", "Landroidx/compose/ui/node/DelegatableNode;", "accessibleChildren", "Landroidx/compose/runtime/collection/MutableVector;", "findBestCandidate", "focusRect", "findBestCandidate-4WY_MpI", "(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusTargetNode;", "findChildCorrespondingToFocusEnter", "onFound", "Lkotlin/Function1;", "findChildCorrespondingToFocusEnter--OM-vw8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z", "generateAndSearchChildren", "focusedItem", "generateAndSearchChildren-4C6V_qg", "(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z", "searchChildren", "searchChildren-4C6V_qg", "topLeft", "twoDimensionalFocusSearch", "twoDimensionalFocusSearch--OM-vw8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TwoDimensionalFocusSearchKt {
    private static final String InvalidFocusDirection = "This function should only be used for 2-D focus search";
    private static final String NoActiveChild = "ActiveParent must have a focusedChild";

    /* compiled from: TwoDimensionalFocusSearch.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static /* synthetic */ void getInvalidFocusDirection$annotations() {
    }

    private static /* synthetic */ void getNoActiveChild$annotations() {
    }

    /* renamed from: twoDimensionalFocusSearch--OM-vw8, reason: not valid java name */
    public static final Boolean m2365twoDimensionalFocusSearchOMvw8(FocusTargetNode twoDimensionalFocusSearch, int i, Function1<? super FocusTargetNode, Boolean> onFound) {
        Intrinsics.checkNotNullParameter(twoDimensionalFocusSearch, "$this$twoDimensionalFocusSearch");
        Intrinsics.checkNotNullParameter(onFound, "onFound");
        int i2 = WhenMappings.$EnumSwitchMapping$0[twoDimensionalFocusSearch.getFocusState().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                return Boolean.valueOf(m2361findChildCorrespondingToFocusEnterOMvw8(twoDimensionalFocusSearch, i, onFound));
            }
            if (i2 == 4) {
                if (twoDimensionalFocusSearch.fetchFocusProperties$ui_release().getCanFocus()) {
                    return onFound.invoke(twoDimensionalFocusSearch);
                }
                return false;
            }
            throw new NoWhenBranchMatchedException();
        }
        FocusTargetNode activeChild = FocusTraversalKt.getActiveChild(twoDimensionalFocusSearch);
        if (activeChild == null) {
            throw new IllegalStateException(NoActiveChild.toString());
        }
        int i3 = WhenMappings.$EnumSwitchMapping$0[activeChild.getFocusState().ordinal()];
        if (i3 == 1) {
            Boolean m2365twoDimensionalFocusSearchOMvw8 = m2365twoDimensionalFocusSearchOMvw8(activeChild, i, onFound);
            return !Intrinsics.areEqual((Object) m2365twoDimensionalFocusSearchOMvw8, (Object) false) ? m2365twoDimensionalFocusSearchOMvw8 : Boolean.valueOf(m2362generateAndSearchChildren4C6V_qg(twoDimensionalFocusSearch, activeNode(activeChild), i, onFound));
        }
        if (i3 == 2 || i3 == 3) {
            return Boolean.valueOf(m2362generateAndSearchChildren4C6V_qg(twoDimensionalFocusSearch, activeChild, i, onFound));
        }
        if (i3 == 4) {
            throw new IllegalStateException(NoActiveChild.toString());
        }
        throw new NoWhenBranchMatchedException();
    }

    /* renamed from: generateAndSearchChildren-4C6V_qg, reason: not valid java name */
    private static final boolean m2362generateAndSearchChildren4C6V_qg(final FocusTargetNode focusTargetNode, final FocusTargetNode focusTargetNode2, final int i, final Function1<? super FocusTargetNode, Boolean> function1) {
        if (m2364searchChildren4C6V_qg(focusTargetNode, focusTargetNode2, i, function1)) {
            return true;
        }
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.m2315searchBeyondBoundsOMvw8(focusTargetNode, i, new Function1<BeyondBoundsLayout.BeyondBoundsScope, Boolean>() { // from class: androidx.compose.ui.focus.TwoDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(BeyondBoundsLayout.BeyondBoundsScope searchBeyondBounds) {
                boolean m2364searchChildren4C6V_qg;
                Intrinsics.checkNotNullParameter(searchBeyondBounds, "$this$searchBeyondBounds");
                m2364searchChildren4C6V_qg = TwoDimensionalFocusSearchKt.m2364searchChildren4C6V_qg(FocusTargetNode.this, focusTargetNode2, i, function1);
                Boolean valueOf = Boolean.valueOf(m2364searchChildren4C6V_qg);
                if (valueOf.booleanValue() || !searchBeyondBounds.getHasMoreContent()) {
                    return valueOf;
                }
                return null;
            }
        });
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* renamed from: findBestCandidate-4WY_MpI, reason: not valid java name */
    private static final FocusTargetNode m2360findBestCandidate4WY_MpI(MutableVector<FocusTargetNode> mutableVector, Rect rect, int i) {
        Rect translate;
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s())) {
            translate = rect.translate(rect.getWidth() + 1, 0.0f);
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
            translate = rect.translate(-(rect.getWidth() + 1), 0.0f);
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s())) {
            translate = rect.translate(0.0f, rect.getHeight() + 1);
        } else {
            if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            translate = rect.translate(0.0f, -(rect.getHeight() + 1));
        }
        int size = mutableVector.getSize();
        FocusTargetNode focusTargetNode = null;
        if (size > 0) {
            FocusTargetNode[] content = mutableVector.getContent();
            int i2 = 0;
            do {
                FocusTargetNode focusTargetNode2 = content[i2];
                if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode2)) {
                    Rect focusRect = FocusTraversalKt.focusRect(focusTargetNode2);
                    if (m2363isBetterCandidateI7lrPNg(focusRect, translate, rect, i)) {
                        focusTargetNode = focusTargetNode2;
                        translate = focusRect;
                    }
                }
                i2++;
            } while (i2 < size);
        }
        return focusTargetNode;
    }

    private static final boolean isBetterCandidate_I7lrPNg$isCandidate(Rect rect, int i, Rect rect2) {
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s())) {
            if ((rect2.getRight() > rect.getRight() || rect2.getLeft() >= rect.getRight()) && rect2.getLeft() > rect.getLeft()) {
                return true;
            }
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
            if ((rect2.getLeft() < rect.getLeft() || rect2.getRight() <= rect.getLeft()) && rect2.getRight() < rect.getRight()) {
                return true;
            }
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s())) {
            if ((rect2.getBottom() > rect.getBottom() || rect2.getTop() >= rect.getBottom()) && rect2.getTop() > rect.getTop()) {
                return true;
            }
        } else {
            if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            if ((rect2.getTop() < rect.getTop() || rect2.getBottom() <= rect.getTop()) && rect2.getBottom() < rect.getBottom()) {
                return true;
            }
        }
        return false;
    }

    private static final float isBetterCandidate_I7lrPNg$majorAxisDistance(Rect rect, int i, Rect rect2) {
        float top;
        float bottom;
        float top2;
        float bottom2;
        float f;
        if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s())) {
            if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
                top = rect.getLeft();
                bottom = rect2.getRight();
            } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s())) {
                top2 = rect2.getTop();
                bottom2 = rect.getBottom();
            } else {
                if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
                    throw new IllegalStateException(InvalidFocusDirection.toString());
                }
                top = rect.getTop();
                bottom = rect2.getBottom();
            }
            f = top - bottom;
            return Math.max(0.0f, f);
        }
        top2 = rect2.getLeft();
        bottom2 = rect.getRight();
        f = top2 - bottom2;
        return Math.max(0.0f, f);
    }

    private static final float isBetterCandidate_I7lrPNg$minorAxisDistance(Rect rect, int i, Rect rect2) {
        float f;
        float top;
        float top2;
        float height;
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s()) || FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
            f = 2;
            top = rect2.getTop() + (rect2.getHeight() / f);
            top2 = rect.getTop();
            height = rect.getHeight();
        } else {
            if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s()) && !FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            f = 2;
            top = rect2.getLeft() + (rect2.getWidth() / f);
            top2 = rect.getLeft();
            height = rect.getWidth();
        }
        return top - (top2 + (height / f));
    }

    private static final long isBetterCandidate_I7lrPNg$weightedDistance(int i, Rect rect, Rect rect2) {
        long abs = Math.abs(isBetterCandidate_I7lrPNg$majorAxisDistance(rect2, i, rect));
        long abs2 = Math.abs(isBetterCandidate_I7lrPNg$minorAxisDistance(rect2, i, rect));
        return (13 * abs * abs) + (abs2 * abs2);
    }

    /* renamed from: isBetterCandidate-I7lrPNg, reason: not valid java name */
    private static final boolean m2363isBetterCandidateI7lrPNg(Rect rect, Rect rect2, Rect rect3, int i) {
        if (isBetterCandidate_I7lrPNg$isCandidate(rect, i, rect3)) {
            return !isBetterCandidate_I7lrPNg$isCandidate(rect2, i, rect3) || m2359beamBeatsI7lrPNg(rect3, rect, rect2, i) || (!m2359beamBeatsI7lrPNg(rect3, rect2, rect, i) && isBetterCandidate_I7lrPNg$weightedDistance(i, rect3, rect) < isBetterCandidate_I7lrPNg$weightedDistance(i, rect3, rect2));
        }
        return false;
    }

    private static final boolean beamBeats_I7lrPNg$inSourceBeam(Rect rect, int i, Rect rect2) {
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s()) || FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
            if (rect.getBottom() > rect2.getTop() && rect.getTop() < rect2.getBottom()) {
                return true;
            }
        } else {
            if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s()) && !FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            if (rect.getRight() > rect2.getLeft() && rect.getLeft() < rect2.getRight()) {
                return true;
            }
        }
        return false;
    }

    private static final boolean beamBeats_I7lrPNg$isInDirectionOfSearch(Rect rect, int i, Rect rect2) {
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s())) {
            if (rect2.getLeft() >= rect.getRight()) {
                return true;
            }
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
            if (rect2.getRight() <= rect.getLeft()) {
                return true;
            }
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s())) {
            if (rect2.getTop() >= rect.getBottom()) {
                return true;
            }
        } else {
            if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            if (rect2.getBottom() <= rect.getTop()) {
                return true;
            }
        }
        return false;
    }

    private static final float beamBeats_I7lrPNg$majorAxisDistance$6(Rect rect, int i, Rect rect2) {
        float top;
        float bottom;
        float top2;
        float bottom2;
        float f;
        if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s())) {
            if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
                top = rect.getLeft();
                bottom = rect2.getRight();
            } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s())) {
                top2 = rect2.getTop();
                bottom2 = rect.getBottom();
            } else {
                if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
                    throw new IllegalStateException(InvalidFocusDirection.toString());
                }
                top = rect.getTop();
                bottom = rect2.getBottom();
            }
            f = top - bottom;
            return Math.max(0.0f, f);
        }
        top2 = rect2.getLeft();
        bottom2 = rect.getRight();
        f = top2 - bottom2;
        return Math.max(0.0f, f);
    }

    private static final float beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(Rect rect, int i, Rect rect2) {
        float bottom;
        float bottom2;
        float top;
        float top2;
        float f;
        if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s())) {
            if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
                bottom = rect.getRight();
                bottom2 = rect2.getRight();
            } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s())) {
                top = rect2.getTop();
                top2 = rect.getTop();
            } else {
                if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
                    throw new IllegalStateException(InvalidFocusDirection.toString());
                }
                bottom = rect.getBottom();
                bottom2 = rect2.getBottom();
            }
            f = bottom - bottom2;
            return Math.max(1.0f, f);
        }
        top = rect2.getLeft();
        top2 = rect.getLeft();
        f = top - top2;
        return Math.max(1.0f, f);
    }

    /* renamed from: beamBeats-I7lrPNg, reason: not valid java name */
    private static final boolean m2359beamBeatsI7lrPNg(Rect rect, Rect rect2, Rect rect3, int i) {
        if (beamBeats_I7lrPNg$inSourceBeam(rect3, i, rect) || !beamBeats_I7lrPNg$inSourceBeam(rect2, i, rect)) {
            return false;
        }
        return !beamBeats_I7lrPNg$isInDirectionOfSearch(rect3, i, rect) || FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s()) || FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s()) || beamBeats_I7lrPNg$majorAxisDistance$6(rect2, i, rect) < beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(rect3, i, rect);
    }

    private static final Rect topLeft(Rect rect) {
        return new Rect(rect.getLeft(), rect.getTop(), rect.getLeft(), rect.getTop());
    }

    private static final Rect bottomRight(Rect rect) {
        return new Rect(rect.getRight(), rect.getBottom(), rect.getRight(), rect.getBottom());
    }

    private static final FocusTargetNode activeNode(FocusTargetNode focusTargetNode) {
        if (focusTargetNode.getFocusState() != FocusStateImpl.ActiveParent) {
            throw new IllegalStateException("Check failed.".toString());
        }
        FocusTargetNode findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(focusTargetNode);
        if (findActiveFocusNode != null) {
            return findActiveFocusNode;
        }
        throw new IllegalStateException(NoActiveChild.toString());
    }

    /* renamed from: findChildCorrespondingToFocusEnter--OM-vw8, reason: not valid java name */
    public static final boolean m2361findChildCorrespondingToFocusEnterOMvw8(FocusTargetNode findChildCorrespondingToFocusEnter, int i, Function1<? super FocusTargetNode, Boolean> onFound) {
        Rect rect;
        Intrinsics.checkNotNullParameter(findChildCorrespondingToFocusEnter, "$this$findChildCorrespondingToFocusEnter");
        Intrinsics.checkNotNullParameter(onFound, "onFound");
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        collectAccessibleChildren(findChildCorrespondingToFocusEnter, mutableVector);
        if (mutableVector.getSize() <= 1) {
            FocusTargetNode focusTargetNode = (FocusTargetNode) (mutableVector.isEmpty() ? null : mutableVector.getContent()[0]);
            if (focusTargetNode != null) {
                return onFound.invoke(focusTargetNode).booleanValue();
            }
            return false;
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2328getEnterdhqQ8s())) {
            i = FocusDirection.INSTANCE.m2335getRightdhqQ8s();
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s()) || FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
            rect = topLeft(FocusTraversalKt.focusRect(findChildCorrespondingToFocusEnter));
        } else {
            if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s()) && !FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s())) {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
            rect = bottomRight(FocusTraversalKt.focusRect(findChildCorrespondingToFocusEnter));
        }
        FocusTargetNode m2360findBestCandidate4WY_MpI = m2360findBestCandidate4WY_MpI(mutableVector, rect, i);
        if (m2360findBestCandidate4WY_MpI != null) {
            return onFound.invoke(m2360findBestCandidate4WY_MpI).booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: searchChildren-4C6V_qg, reason: not valid java name */
    public static final boolean m2364searchChildren4C6V_qg(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i, Function1<? super FocusTargetNode, Boolean> function1) {
        FocusTargetNode m2360findBestCandidate4WY_MpI;
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        FocusTargetNode focusTargetNode3 = focusTargetNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
        if (!focusTargetNode3.getNode().getIsAttached()) {
            throw new IllegalStateException("visitChildren called on an unattached node".toString());
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = focusTargetNode3.getNode().getChild();
        if (child == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, focusTargetNode3.getNode());
        } else {
            mutableVector2.add(child);
        }
        while (mutableVector2.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector2.removeAt(mutableVector2.getSize() - 1);
            if ((node.getAggregateChildKindSet() & m4091constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, node);
            } else {
                while (true) {
                    if (node == null) {
                        break;
                    }
                    if ((node.getKindSet() & m4091constructorimpl) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                mutableVector.add((FocusTargetNode) node);
                            } else if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            node = delegate;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node != null) {
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(node);
                                                }
                                                node = null;
                                            }
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            node = DelegatableNodeKt.pop(mutableVector3);
                        }
                    } else {
                        node = node.getChild();
                    }
                }
            }
        }
        while (mutableVector.isNotEmpty() && (m2360findBestCandidate4WY_MpI = m2360findBestCandidate4WY_MpI(mutableVector, FocusTraversalKt.focusRect(focusTargetNode2), i)) != null) {
            if (m2360findBestCandidate4WY_MpI.fetchFocusProperties$ui_release().getCanFocus()) {
                return function1.invoke(m2360findBestCandidate4WY_MpI).booleanValue();
            }
            if (m2362generateAndSearchChildren4C6V_qg(m2360findBestCandidate4WY_MpI, focusTargetNode2, i, function1)) {
                return true;
            }
            mutableVector.remove(m2360findBestCandidate4WY_MpI);
        }
        return false;
    }

    private static final void collectAccessibleChildren(DelegatableNode delegatableNode, MutableVector<FocusTargetNode> mutableVector) {
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitChildren called on an unattached node".toString());
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = delegatableNode.getNode().getChild();
        if (child == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, delegatableNode.getNode());
        } else {
            mutableVector2.add(child);
        }
        while (mutableVector2.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector2.removeAt(mutableVector2.getSize() - 1);
            if ((node.getAggregateChildKindSet() & m4091constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, node);
            } else {
                while (true) {
                    if (node == null) {
                        break;
                    }
                    if ((node.getKindSet() & m4091constructorimpl) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode = (FocusTargetNode) node;
                                if (focusTargetNode.getIsAttached()) {
                                    if (focusTargetNode.fetchFocusProperties$ui_release().getCanFocus()) {
                                        mutableVector.add(focusTargetNode);
                                    } else {
                                        collectAccessibleChildren(focusTargetNode, mutableVector);
                                    }
                                }
                            } else if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node = delegate;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node != null) {
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(node);
                                                }
                                                node = null;
                                            }
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            node = DelegatableNodeKt.pop(mutableVector3);
                        }
                    } else {
                        node = node.getChild();
                    }
                }
            }
        }
    }
}
