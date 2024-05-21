package androidx.compose.ui.platform;

import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import kotlin.Metadata;

/* compiled from: ViewConfiguration.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0012\u0010\b\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0005R\u001d\u0010\n\u001a\u00020\u000b8VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\f\u0010\u0005R\u0012\u0010\r\u001a\u00020\u000eX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010ø\u0001\u0003\u0082\u0002\u0015\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/platform/ViewConfiguration;", "", "doubleTapMinTimeMillis", "", "getDoubleTapMinTimeMillis", "()J", "doubleTapTimeoutMillis", "getDoubleTapTimeoutMillis", "longPressTimeoutMillis", "getLongPressTimeoutMillis", "minimumTouchTargetSize", "Landroidx/compose/ui/unit/DpSize;", "getMinimumTouchTargetSize-MYxV2XQ", "touchSlop", "", "getTouchSlop", "()F", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ViewConfiguration {
    long getDoubleTapMinTimeMillis();

    long getDoubleTapTimeoutMillis();

    long getLongPressTimeoutMillis();

    float getTouchSlop();

    /* compiled from: ViewConfiguration.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: getMinimumTouchTargetSize-MYxV2XQ, reason: not valid java name */
        public static long m4234getMinimumTouchTargetSizeMYxV2XQ(ViewConfiguration viewConfiguration) {
            return ViewConfiguration.super.mo4020getMinimumTouchTargetSizeMYxV2XQ();
        }
    }

    /* renamed from: getMinimumTouchTargetSize-MYxV2XQ */
    default long mo4020getMinimumTouchTargetSizeMYxV2XQ() {
        float f = 48;
        return DpKt.m4905DpSizeYgX7TsA(Dp.m4883constructorimpl(f), Dp.m4883constructorimpl(f));
    }
}
