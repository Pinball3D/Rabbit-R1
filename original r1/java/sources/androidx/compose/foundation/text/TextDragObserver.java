package androidx.compose.foundation.text;

import kotlin.Metadata;

/* compiled from: LongPressTextDragObserver.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b`\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u001d\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\bJ\u001d\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0006H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\bJ\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H&ø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/text/TextDragObserver;", "", "onCancel", "", "onDown", "point", "Landroidx/compose/ui/geometry/Offset;", "onDown-k-4lQ0M", "(J)V", "onDrag", "delta", "onDrag-k-4lQ0M", "onStart", "startPoint", "onStart-k-4lQ0M", "onStop", "onUp", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface TextDragObserver {
    void onCancel();

    /* renamed from: onDown-k-4lQ0M, reason: not valid java name */
    void mo811onDownk4lQ0M(long point);

    /* renamed from: onDrag-k-4lQ0M, reason: not valid java name */
    void mo812onDragk4lQ0M(long delta);

    /* renamed from: onStart-k-4lQ0M, reason: not valid java name */
    void mo813onStartk4lQ0M(long startPoint);

    void onStop();

    void onUp();
}
