package androidx.compose.ui.text.android;

import android.graphics.Paint;
import android.graphics.Rect;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PaintExtensions.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH\u0007¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/text/android/Paint29;", "", "()V", "getTextBounds", "", "paint", "Landroid/graphics/Paint;", "text", "", "start", "", "end", "rect", "Landroid/graphics/Rect;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class Paint29 {
    public static final Paint29 INSTANCE = new Paint29();

    private Paint29() {
    }

    @JvmStatic
    public static final void getTextBounds(Paint paint, CharSequence text, int start, int end, Rect rect) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(rect, "rect");
        paint.getTextBounds(text, start, end, rect);
    }
}
