package androidx.navigation;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: View.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"findNavController", "Landroidx/navigation/NavController;", "Landroid/view/View;", "navigation-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ViewKt {
    public static final NavController findNavController(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return Navigation.findNavController(view);
    }
}
