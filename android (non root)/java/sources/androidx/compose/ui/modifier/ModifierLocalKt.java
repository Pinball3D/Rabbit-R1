package androidx.compose.ui.modifier;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ModifierLocal.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004¨\u0006\u0005"}, d2 = {"modifierLocalOf", "Landroidx/compose/ui/modifier/ProvidableModifierLocal;", ExifInterface.GPS_DIRECTION_TRUE, "defaultFactory", "Lkotlin/Function0;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ModifierLocalKt {
    public static final <T> ProvidableModifierLocal<T> modifierLocalOf(Function0<? extends T> defaultFactory) {
        Intrinsics.checkNotNullParameter(defaultFactory, "defaultFactory");
        return new ProvidableModifierLocal<>(defaultFactory);
    }
}
