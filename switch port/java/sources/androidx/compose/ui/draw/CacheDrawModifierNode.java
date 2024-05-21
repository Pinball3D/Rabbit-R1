package androidx.compose.ui.draw;

import androidx.compose.ui.node.DrawModifierNode;
import kotlin.Metadata;

/* compiled from: DrawModifier.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&\u0082\u0001\u0001\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/draw/CacheDrawModifierNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "invalidateDrawCache", "", "Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface CacheDrawModifierNode extends DrawModifierNode {
    void invalidateDrawCache();
}
