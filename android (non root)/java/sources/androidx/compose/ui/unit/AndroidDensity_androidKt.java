package androidx.compose.ui.unit;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidDensity.android.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"Density", "Landroidx/compose/ui/unit/Density;", "context", "Landroid/content/Context;", "ui-unit_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidDensity_androidKt {
    public static final Density Density(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DensityKt.Density(context.getResources().getDisplayMetrics().density, context.getResources().getConfiguration().fontScale);
    }
}
