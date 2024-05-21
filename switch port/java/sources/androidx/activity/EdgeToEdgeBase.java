package androidx.activity;

import android.view.View;
import android.view.Window;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EdgeToEdge.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016¨\u0006\u000f"}, d2 = {"Landroidx/activity/EdgeToEdgeBase;", "Landroidx/activity/EdgeToEdgeImpl;", "()V", "setUp", "", "statusBarStyle", "Landroidx/activity/SystemBarStyle;", "navigationBarStyle", "window", "Landroid/view/Window;", "view", "Landroid/view/View;", "statusBarIsDark", "", "navigationBarIsDark", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class EdgeToEdgeBase implements EdgeToEdgeImpl {
    @Override // androidx.activity.EdgeToEdgeImpl
    public void setUp(SystemBarStyle statusBarStyle, SystemBarStyle navigationBarStyle, Window window, View view, boolean statusBarIsDark, boolean navigationBarIsDark) {
        Intrinsics.checkNotNullParameter(statusBarStyle, "statusBarStyle");
        Intrinsics.checkNotNullParameter(navigationBarStyle, "navigationBarStyle");
        Intrinsics.checkNotNullParameter(window, "window");
        Intrinsics.checkNotNullParameter(view, "view");
    }
}
