package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BringIntoViewRequester.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u0006H\u0002J\b\u0010\u000b\u001a\u00020\u0006H\u0016J\b\u0010\f\u001a\u00020\u0006H\u0016J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;", "Landroidx/compose/foundation/relocation/BringIntoViewChildNode;", "requester", "Landroidx/compose/foundation/relocation/BringIntoViewRequester;", "(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V", "bringIntoView", "", "rect", "Landroidx/compose/ui/geometry/Rect;", "(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disposeRequester", "onAttach", "onDetach", "updateRequester", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BringIntoViewRequesterNode extends BringIntoViewChildNode {
    private BringIntoViewRequester requester;

    public BringIntoViewRequesterNode(BringIntoViewRequester requester) {
        Intrinsics.checkNotNullParameter(requester, "requester");
        this.requester = requester;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateRequester(this.requester);
    }

    public final void updateRequester(BringIntoViewRequester requester) {
        Intrinsics.checkNotNullParameter(requester, "requester");
        disposeRequester();
        if (requester instanceof BringIntoViewRequesterImpl) {
            ((BringIntoViewRequesterImpl) requester).getModifiers().add(this);
        }
        this.requester = requester;
    }

    private final void disposeRequester() {
        BringIntoViewRequester bringIntoViewRequester = this.requester;
        if (bringIntoViewRequester instanceof BringIntoViewRequesterImpl) {
            Intrinsics.checkNotNull(bringIntoViewRequester, "null cannot be cast to non-null type androidx.compose.foundation.relocation.BringIntoViewRequesterImpl");
            ((BringIntoViewRequesterImpl) bringIntoViewRequester).getModifiers().remove(this);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        disposeRequester();
    }

    public final Object bringIntoView(final Rect rect, Continuation<? super Unit> continuation) {
        Object bringChildIntoView;
        BringIntoViewParent parent = getParent();
        LayoutCoordinates layoutCoordinates = getLayoutCoordinates();
        return (layoutCoordinates != null && (bringChildIntoView = parent.bringChildIntoView(layoutCoordinates, new Function0<Rect>() { // from class: androidx.compose.foundation.relocation.BringIntoViewRequesterNode$bringIntoView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Rect invoke() {
                Rect rect2 = Rect.this;
                if (rect2 != null) {
                    return rect2;
                }
                LayoutCoordinates layoutCoordinates2 = this.getLayoutCoordinates();
                if (layoutCoordinates2 != null) {
                    return SizeKt.m2490toRectuvyYCjk(IntSizeKt.m5053toSizeozmzZPI(layoutCoordinates2.mo3883getSizeYbymL2g()));
                }
                return null;
            }
        }, continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? bringChildIntoView : Unit.INSTANCE;
    }
}
