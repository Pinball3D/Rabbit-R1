package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.DrawModifierNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DrawModifier.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001e\u0012\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007¢\u0006\u0002\u0010\bJ\f\u0010\f\u001a\u00020\u0006*\u00020\rH\u0016R+\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\b¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/draw/DrawBackgroundModifier;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "onDraw", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "getOnDraw", "()Lkotlin/jvm/functions/Function1;", "setOnDraw", "draw", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DrawBackgroundModifier extends Modifier.Node implements DrawModifierNode {
    private Function1<? super DrawScope, Unit> onDraw;

    public final Function1<DrawScope, Unit> getOnDraw() {
        return this.onDraw;
    }

    public final void setOnDraw(Function1<? super DrawScope, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onDraw = function1;
    }

    public DrawBackgroundModifier(Function1<? super DrawScope, Unit> onDraw) {
        Intrinsics.checkNotNullParameter(onDraw, "onDraw");
        this.onDraw = onDraw;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        this.onDraw.invoke(contentDrawScope);
        contentDrawScope.drawContent();
    }
}
