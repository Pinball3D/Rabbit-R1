package androidx.compose.ui;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ZIndexModifier.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0000\u001a\u00020\u0002H\u0007¨\u0006\u0003"}, d2 = {"zIndex", "Landroidx/compose/ui/Modifier;", "", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ZIndexModifierKt {
    public static final Modifier zIndex(Modifier modifier, float f) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return modifier.then(new ZIndexElement(f));
    }
}
