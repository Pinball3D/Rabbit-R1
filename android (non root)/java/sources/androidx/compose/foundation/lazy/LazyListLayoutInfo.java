package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.IntSize;
import io.sentry.protocol.Device;
import java.util.List;
import kotlin.Metadata;

/* compiled from: LazyListLayoutInfo.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0014\u0010\b\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0005R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0005R\u0012\u0010\u0014\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0005R\u001d\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0005R\u0018\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 ø\u0001\u0003\u0082\u0002\u0015\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0004\b!0\u0001¨\u0006!À\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/lazy/LazyListLayoutInfo;", "", "afterContentPadding", "", "getAfterContentPadding", "()I", "beforeContentPadding", "getBeforeContentPadding", "mainAxisItemSpacing", "getMainAxisItemSpacing", Device.JsonKeys.ORIENTATION, "Landroidx/compose/foundation/gestures/Orientation;", "getOrientation", "()Landroidx/compose/foundation/gestures/Orientation;", "reverseLayout", "", "getReverseLayout", "()Z", "totalItemsCount", "getTotalItemsCount", "viewportEndOffset", "getViewportEndOffset", "viewportSize", "Landroidx/compose/ui/unit/IntSize;", "getViewportSize-YbymL2g", "()J", "viewportStartOffset", "getViewportStartOffset", "visibleItemsInfo", "", "Landroidx/compose/foundation/lazy/LazyListItemInfo;", "getVisibleItemsInfo", "()Ljava/util/List;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface LazyListLayoutInfo {
    default int getAfterContentPadding() {
        return 0;
    }

    default int getBeforeContentPadding() {
        return 0;
    }

    default int getMainAxisItemSpacing() {
        return 0;
    }

    default boolean getReverseLayout() {
        return false;
    }

    int getTotalItemsCount();

    int getViewportEndOffset();

    int getViewportStartOffset();

    List<LazyListItemInfo> getVisibleItemsInfo();

    /* compiled from: LazyListLayoutInfo.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: getViewportSize-YbymL2g, reason: not valid java name */
        public static long m596getViewportSizeYbymL2g(LazyListLayoutInfo lazyListLayoutInfo) {
            return LazyListLayoutInfo.super.mo593getViewportSizeYbymL2g();
        }

        @Deprecated
        public static Orientation getOrientation(LazyListLayoutInfo lazyListLayoutInfo) {
            return LazyListLayoutInfo.super.getOrientation();
        }

        @Deprecated
        public static boolean getReverseLayout(LazyListLayoutInfo lazyListLayoutInfo) {
            return LazyListLayoutInfo.super.getReverseLayout();
        }

        @Deprecated
        public static int getBeforeContentPadding(LazyListLayoutInfo lazyListLayoutInfo) {
            return LazyListLayoutInfo.super.getBeforeContentPadding();
        }

        @Deprecated
        public static int getAfterContentPadding(LazyListLayoutInfo lazyListLayoutInfo) {
            return LazyListLayoutInfo.super.getAfterContentPadding();
        }

        @Deprecated
        public static int getMainAxisItemSpacing(LazyListLayoutInfo lazyListLayoutInfo) {
            return LazyListLayoutInfo.super.getMainAxisItemSpacing();
        }
    }

    /* renamed from: getViewportSize-YbymL2g */
    default long mo593getViewportSizeYbymL2g() {
        return IntSize.INSTANCE.m5048getZeroYbymL2g();
    }

    default Orientation getOrientation() {
        return Orientation.Vertical;
    }
}
