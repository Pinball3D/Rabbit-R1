package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidPopup.android.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Landroidx/compose/ui/window/PopupLayoutHelperImpl29;", "Landroidx/compose/ui/window/PopupLayoutHelperImpl;", "()V", "setGestureExclusionRects", "", "composeView", "Landroid/view/View;", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PopupLayoutHelperImpl29 extends PopupLayoutHelperImpl {
    @Override // androidx.compose.ui.window.PopupLayoutHelperImpl, androidx.compose.ui.window.PopupLayoutHelper
    public void setGestureExclusionRects(View composeView, int width, int height) {
        Intrinsics.checkNotNullParameter(composeView, "composeView");
        composeView.setSystemGestureExclusionRects(CollectionsKt.mutableListOf(new Rect(0, 0, width, height)));
    }
}
