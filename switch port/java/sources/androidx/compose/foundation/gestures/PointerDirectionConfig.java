package androidx.compose.foundation.gestures;

import kotlin.Metadata;

/* compiled from: DragGestureDetector.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b`\u0018\u00002\u00020\u0001J\u001d\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\u0007J(\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H&ø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000eø\u0001\u0003\u0082\u0002\u0015\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0002\b!\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/gestures/PointerDirectionConfig;", "", "crossAxisDelta", "", "offset", "Landroidx/compose/ui/geometry/Offset;", "crossAxisDelta-k-4lQ0M", "(J)F", "mainAxisDelta", "mainAxisDelta-k-4lQ0M", "offsetFromChanges", "mainChange", "crossChange", "offsetFromChanges-dBAh8RU", "(FF)J", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface PointerDirectionConfig {
    /* renamed from: crossAxisDelta-k-4lQ0M */
    float mo286crossAxisDeltak4lQ0M(long offset);

    /* renamed from: mainAxisDelta-k-4lQ0M */
    float mo287mainAxisDeltak4lQ0M(long offset);

    /* renamed from: offsetFromChanges-dBAh8RU */
    long mo288offsetFromChangesdBAh8RU(float mainChange, float crossChange);
}
