package androidx.compose.ui.text.font;

import android.content.Context;
import android.graphics.Paint;
import androidx.compose.ui.text.TempListUtilsKt;
import androidx.compose.ui.text.font.FontVariation;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PlatformTypefaces.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0014\u0010\r\u001a\u00020\u000e*\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0003R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/text/font/TypefaceCompatApi26;", "", "()V", "threadLocalPaint", "Ljava/lang/ThreadLocal;", "Landroid/graphics/Paint;", "setFontVariationSettings", "Landroid/graphics/Typeface;", "typeface", "variationSettings", "Landroidx/compose/ui/text/font/FontVariation$Settings;", "context", "Landroid/content/Context;", "toAndroidString", "", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TypefaceCompatApi26 {
    public static final TypefaceCompatApi26 INSTANCE = new TypefaceCompatApi26();
    private static ThreadLocal<Paint> threadLocalPaint = new ThreadLocal<>();

    private TypefaceCompatApi26() {
    }

    public final android.graphics.Typeface setFontVariationSettings(android.graphics.Typeface typeface, FontVariation.Settings variationSettings, Context context) {
        Intrinsics.checkNotNullParameter(variationSettings, "variationSettings");
        Intrinsics.checkNotNullParameter(context, "context");
        if (typeface == null) {
            return null;
        }
        if (variationSettings.getSettings().isEmpty()) {
            return typeface;
        }
        Paint paint = threadLocalPaint.get();
        if (paint == null) {
            paint = new Paint();
            threadLocalPaint.set(paint);
        }
        paint.setTypeface(typeface);
        paint.setFontVariationSettings(toAndroidString(variationSettings, context));
        return paint.getTypeface();
    }

    private final String toAndroidString(FontVariation.Settings settings, Context context) {
        final Density Density = AndroidDensity_androidKt.Density(context);
        return TempListUtilsKt.fastJoinToString$default(settings.getSettings(), null, null, null, 0, null, new Function1<FontVariation.Setting, CharSequence>() { // from class: androidx.compose.ui.text.font.TypefaceCompatApi26$toAndroidString$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(FontVariation.Setting setting) {
                Intrinsics.checkNotNullParameter(setting, "setting");
                return "'" + setting.getAxisName() + "' " + setting.toVariationValue(Density.this);
            }
        }, 31, null);
    }
}
