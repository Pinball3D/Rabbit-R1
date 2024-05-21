package androidx.compose.ui.platform;

import android.content.Context;
import android.graphics.Canvas;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewLayerContainer.android.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0014J\b\u0010\t\u001a\u00020\u0006H\u0004¨\u0006\n"}, d2 = {"Landroidx/compose/ui/platform/ViewLayerContainer;", "Landroidx/compose/ui/platform/DrawChildContainer;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "dispatchDraw", "", "canvas", "Landroid/graphics/Canvas;", "dispatchGetDisplayList", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ViewLayerContainer extends DrawChildContainer {
    @Override // androidx.compose.ui.platform.DrawChildContainer, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
    }

    protected final void dispatchGetDisplayList() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewLayerContainer(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
