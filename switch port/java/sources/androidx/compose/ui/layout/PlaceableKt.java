package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Placeable.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u001f\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"DefaultConstraints", "Landroidx/compose/ui/unit/Constraints;", "J", "DefaultLayerBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "", "Lkotlin/ExtensionFunctionType;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PlaceableKt {
    private static final Function1<GraphicsLayerScope, Unit> DefaultLayerBlock = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.ui.layout.PlaceableKt$DefaultLayerBlock$1
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(GraphicsLayerScope graphicsLayerScope) {
            Intrinsics.checkNotNullParameter(graphicsLayerScope, "$this$null");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
            invoke2(graphicsLayerScope);
            return Unit.INSTANCE;
        }
    };
    private static final long DefaultConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);

    public static final /* synthetic */ long access$getDefaultConstraints$p() {
        return DefaultConstraints;
    }

    public static final /* synthetic */ Function1 access$getDefaultLayerBlock$p() {
        return DefaultLayerBlock;
    }
}
