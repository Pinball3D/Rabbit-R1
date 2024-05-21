package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidCanvas.android.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J-\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t0\r¢\u0006\u0002\b\u000fH\u0086\bø\u0001\u0000R\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"Landroidx/compose/ui/graphics/CanvasHolder;", "", "()V", "androidCanvas", "Landroidx/compose/ui/graphics/AndroidCanvas;", "getAndroidCanvas$annotations", "getAndroidCanvas", "()Landroidx/compose/ui/graphics/AndroidCanvas;", "drawInto", "", "targetCanvas", "Landroid/graphics/Canvas;", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/Canvas;", "Lkotlin/ExtensionFunctionType;", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CanvasHolder {
    private final AndroidCanvas androidCanvas = new AndroidCanvas();

    public static /* synthetic */ void getAndroidCanvas$annotations() {
    }

    public final AndroidCanvas getAndroidCanvas() {
        return this.androidCanvas;
    }

    public final void drawInto(android.graphics.Canvas targetCanvas, Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(targetCanvas, "targetCanvas");
        Intrinsics.checkNotNullParameter(block, "block");
        android.graphics.Canvas internalCanvas = getAndroidCanvas().getInternalCanvas();
        getAndroidCanvas().setInternalCanvas(targetCanvas);
        block.invoke(getAndroidCanvas());
        getAndroidCanvas().setInternalCanvas(internalCanvas);
    }
}
