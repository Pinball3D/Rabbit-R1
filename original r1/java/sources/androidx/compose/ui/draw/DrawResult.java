package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DrawModifier.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B \b\u0000\u0012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006¢\u0006\u0002\u0010\u0007R+\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/draw/DrawResult;", "", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "getBlock$ui_release", "()Lkotlin/jvm/functions/Function1;", "setBlock$ui_release", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DrawResult {
    public static final int $stable = 8;
    private Function1<? super ContentDrawScope, Unit> block;

    public final Function1<ContentDrawScope, Unit> getBlock$ui_release() {
        return this.block;
    }

    public final void setBlock$ui_release(Function1<? super ContentDrawScope, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.block = function1;
    }

    public DrawResult(Function1<? super ContentDrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.block = block;
    }
}
