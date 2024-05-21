package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import io.sentry.protocol.Message;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;

/* compiled from: AndroidPopup.android.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\ba\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J \u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&J \u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/window/PopupLayoutHelper;", "", "getWindowVisibleDisplayFrame", "", "composeView", "Landroid/view/View;", "outRect", "Landroid/graphics/Rect;", "setGestureExclusionRects", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "updateViewLayout", "windowManager", "Landroid/view/WindowManager;", "popupView", Message.JsonKeys.PARAMS, "Landroid/view/ViewGroup$LayoutParams;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface PopupLayoutHelper {
    void getWindowVisibleDisplayFrame(View composeView, Rect outRect);

    void setGestureExclusionRects(View composeView, int width, int height);

    void updateViewLayout(WindowManager windowManager, View popupView, ViewGroup.LayoutParams params);
}
