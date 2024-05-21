package androidx.compose.ui.platform;

import android.view.ViewParent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RenderNodeLayer.android.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/platform/WrapperRenderNodeLayerHelperMethods;", "", "()V", "onDescendantInvalidated", "", "ownerView", "Landroidx/compose/ui/platform/AndroidComposeView;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WrapperRenderNodeLayerHelperMethods {
    public static final WrapperRenderNodeLayerHelperMethods INSTANCE = new WrapperRenderNodeLayerHelperMethods();

    private WrapperRenderNodeLayerHelperMethods() {
    }

    public final void onDescendantInvalidated(AndroidComposeView ownerView) {
        Intrinsics.checkNotNullParameter(ownerView, "ownerView");
        ViewParent parent = ownerView.getParent();
        if (parent != null) {
            AndroidComposeView androidComposeView = ownerView;
            parent.onDescendantInvalidated(androidComposeView, androidComposeView);
        }
    }
}
