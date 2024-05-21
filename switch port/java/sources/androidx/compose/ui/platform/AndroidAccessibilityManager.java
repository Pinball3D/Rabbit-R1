package androidx.compose.ui.platform;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidAccessibilityManager.android.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/platform/AndroidAccessibilityManager;", "Landroidx/compose/ui/platform/AccessibilityManager;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "accessibilityManager", "Landroid/view/accessibility/AccessibilityManager;", "calculateRecommendedTimeoutMillis", "", "originalTimeoutMillis", "containsIcons", "", "containsText", "containsControls", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidAccessibilityManager implements AccessibilityManager {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final int FlagContentControls = 4;

    @Deprecated
    public static final int FlagContentIcons = 1;

    @Deprecated
    public static final int FlagContentText = 2;
    private final android.view.accessibility.AccessibilityManager accessibilityManager;

    /* compiled from: AndroidAccessibilityManager.android.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/platform/AndroidAccessibilityManager$Companion;", "", "()V", "FlagContentControls", "", "FlagContentIcons", "FlagContentText", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AndroidAccessibilityManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("accessibility");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
        this.accessibilityManager = (android.view.accessibility.AccessibilityManager) systemService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.platform.AccessibilityManager
    public long calculateRecommendedTimeoutMillis(long originalTimeoutMillis, boolean containsIcons, boolean containsText, boolean containsControls) {
        int i = containsIcons;
        if (originalTimeoutMillis >= 2147483647L) {
            return originalTimeoutMillis;
        }
        if (containsText) {
            i = (containsIcons ? 1 : 0) | 2;
        }
        if (containsControls) {
            i = (i == true ? 1 : 0) | 4;
        }
        int recommendedTimeoutMillis = Api29Impl.INSTANCE.getRecommendedTimeoutMillis(this.accessibilityManager, (int) originalTimeoutMillis, i);
        if (recommendedTimeoutMillis == Integer.MAX_VALUE) {
            return Long.MAX_VALUE;
        }
        return recommendedTimeoutMillis;
    }
}
