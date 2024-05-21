package androidx.compose.ui.res;

import android.content.Context;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ColorResources.android.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/res/ColorResourceHelper;", "", "()V", "getColor", "Landroidx/compose/ui/graphics/Color;", "context", "Landroid/content/Context;", "id", "", "getColor-WaAFU9c", "(Landroid/content/Context;I)J", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ColorResourceHelper {
    public static final ColorResourceHelper INSTANCE = new ColorResourceHelper();

    private ColorResourceHelper() {
    }

    /* renamed from: getColor-WaAFU9c, reason: not valid java name */
    public final long m4239getColorWaAFU9c(Context context, int id) {
        Intrinsics.checkNotNullParameter(context, "context");
        return ColorKt.Color(context.getResources().getColor(id, context.getTheme()));
    }
}
