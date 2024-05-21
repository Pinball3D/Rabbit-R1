package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import io.sentry.protocol.Message;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidPopup.android.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0012\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J \u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J \u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/window/PopupLayoutHelperImpl;", "Landroidx/compose/ui/window/PopupLayoutHelper;", "()V", "getWindowVisibleDisplayFrame", "", "composeView", "Landroid/view/View;", "outRect", "Landroid/graphics/Rect;", "setGestureExclusionRects", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "updateViewLayout", "windowManager", "Landroid/view/WindowManager;", "popupView", Message.JsonKeys.PARAMS, "Landroid/view/ViewGroup$LayoutParams;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
class PopupLayoutHelperImpl implements PopupLayoutHelper {
    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public void setGestureExclusionRects(View composeView, int width, int height) {
        Intrinsics.checkNotNullParameter(composeView, "composeView");
    }

    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public void getWindowVisibleDisplayFrame(View composeView, Rect outRect) {
        Intrinsics.checkNotNullParameter(composeView, "composeView");
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        composeView.getWindowVisibleDisplayFrame(outRect);
    }

    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public void updateViewLayout(WindowManager windowManager, View popupView, ViewGroup.LayoutParams params) {
        Intrinsics.checkNotNullParameter(windowManager, "windowManager");
        Intrinsics.checkNotNullParameter(popupView, "popupView");
        Intrinsics.checkNotNullParameter(params, "params");
        windowManager.updateViewLayout(popupView, params);
    }
}
