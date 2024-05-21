package androidx.compose.ui.platform;

import androidx.exifinterface.media.ExifInterface;
import java.lang.Comparable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000f\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\b`\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\fJ\b\u0010\r\u001a\u00020\nH\u0016R\u0012\u0010\u0004\u001a\u00028\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00028\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/platform/OpenEndRange;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "endExclusive", "getEndExclusive", "()Ljava/lang/Comparable;", "start", "getStart", "contains", "", "value", "(Ljava/lang/Comparable;)Z", "isEmpty", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface OpenEndRange<T extends Comparable<? super T>> {
    T getEndExclusive();

    T getStart();

    default boolean contains(T value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.compareTo(getStart()) >= 0 && value.compareTo(getEndExclusive()) < 0;
    }

    default boolean isEmpty() {
        return getStart().compareTo(getEndExclusive()) >= 0;
    }
}
