package androidx.compose.foundation.text.selection;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidSelectionHandles.android.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0002\u0010\u0006J5\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\fH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0004\u001a\u00020\u0005X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0007\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/text/selection/HandlePositionProvider;", "Landroidx/compose/ui/window/PopupPositionProvider;", "handleReferencePoint", "Landroidx/compose/foundation/text/selection/HandleReferencePoint;", "offset", "Landroidx/compose/ui/unit/IntOffset;", "(Landroidx/compose/foundation/text/selection/HandleReferencePoint;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "calculatePosition", "anchorBounds", "Landroidx/compose/ui/unit/IntRect;", "windowSize", "Landroidx/compose/ui/unit/IntSize;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "popupContentSize", "calculatePosition-llwVHH4", "(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HandlePositionProvider implements PopupPositionProvider {
    private final HandleReferencePoint handleReferencePoint;
    private final long offset;

    /* compiled from: AndroidSelectionHandles.android.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HandleReferencePoint.values().length];
            try {
                iArr[HandleReferencePoint.TopLeft.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HandleReferencePoint.TopRight.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[HandleReferencePoint.TopMiddle.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ HandlePositionProvider(HandleReferencePoint handleReferencePoint, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(handleReferencePoint, j);
    }

    private HandlePositionProvider(HandleReferencePoint handleReferencePoint, long j) {
        Intrinsics.checkNotNullParameter(handleReferencePoint, "handleReferencePoint");
        this.handleReferencePoint = handleReferencePoint;
        this.offset = j;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4, reason: not valid java name */
    public long mo884calculatePositionllwVHH4(IntRect anchorBounds, long windowSize, LayoutDirection layoutDirection, long popupContentSize) {
        Intrinsics.checkNotNullParameter(anchorBounds, "anchorBounds");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        int i = WhenMappings.$EnumSwitchMapping$0[this.handleReferencePoint.ordinal()];
        if (i == 1) {
            return IntOffsetKt.IntOffset(anchorBounds.getLeft() + IntOffset.m5001getXimpl(this.offset), anchorBounds.getTop() + IntOffset.m5002getYimpl(this.offset));
        }
        if (i == 2) {
            return IntOffsetKt.IntOffset((anchorBounds.getLeft() + IntOffset.m5001getXimpl(this.offset)) - IntSize.m5043getWidthimpl(popupContentSize), anchorBounds.getTop() + IntOffset.m5002getYimpl(this.offset));
        }
        if (i == 3) {
            return IntOffsetKt.IntOffset((anchorBounds.getLeft() + IntOffset.m5001getXimpl(this.offset)) - (IntSize.m5043getWidthimpl(popupContentSize) / 2), anchorBounds.getTop() + IntOffset.m5002getYimpl(this.offset));
        }
        throw new NoWhenBranchMatchedException();
    }
}
