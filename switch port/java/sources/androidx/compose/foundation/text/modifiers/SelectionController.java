package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.foundation.text.TouchMode_androidKt;
import androidx.compose.foundation.text.selection.MultiWidgetSelectionDelegate;
import androidx.compose.foundation.text.selection.Selectable;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import io.sentry.protocol.Message;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: SelectionController.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\b\u0010\u0016\u001a\u00020\u0013H\u0016J\b\u0010\u0017\u001a\u00020\u0013H\u0016J\b\u0010\u0018\u001a\u00020\u0013H\u0016J\u000e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eR\u0019\u0010\u0004\u001a\u00020\u0005X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\tR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001f"}, d2 = {"Landroidx/compose/foundation/text/modifiers/SelectionController;", "Landroidx/compose/runtime/RememberObserver;", "selectionRegistrar", "Landroidx/compose/foundation/text/selection/SelectionRegistrar;", "backgroundSelectionColor", "Landroidx/compose/ui/graphics/Color;", Message.JsonKeys.PARAMS, "Landroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;", "(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "modifier", "Landroidx/compose/ui/Modifier;", "getModifier", "()Landroidx/compose/ui/Modifier;", "selectable", "Landroidx/compose/foundation/text/selection/Selectable;", "selectableId", "", "draw", "", "drawScope", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "onAbandoned", "onForgotten", "onRemembered", "updateGlobalPosition", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "updateTextLayout", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectionController implements RememberObserver {
    private final long backgroundSelectionColor;
    private final Modifier modifier;
    private StaticTextSelectionParams params;
    private Selectable selectable;
    private final long selectableId;
    private final SelectionRegistrar selectionRegistrar;

    public /* synthetic */ SelectionController(SelectionRegistrar selectionRegistrar, long j, StaticTextSelectionParams staticTextSelectionParams, DefaultConstructorMarker defaultConstructorMarker) {
        this(selectionRegistrar, j, staticTextSelectionParams);
    }

    public final Modifier getModifier() {
        return this.modifier;
    }

    private SelectionController(SelectionRegistrar selectionRegistrar, long j, StaticTextSelectionParams params) {
        Modifier makeSelectionModifier;
        Intrinsics.checkNotNullParameter(selectionRegistrar, "selectionRegistrar");
        Intrinsics.checkNotNullParameter(params, "params");
        this.selectionRegistrar = selectionRegistrar;
        this.backgroundSelectionColor = j;
        this.params = params;
        long nextSelectableId = selectionRegistrar.nextSelectableId();
        this.selectableId = nextSelectableId;
        makeSelectionModifier = SelectionControllerKt.makeSelectionModifier(selectionRegistrar, nextSelectableId, new Function0<LayoutCoordinates>() { // from class: androidx.compose.foundation.text.modifiers.SelectionController$modifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LayoutCoordinates invoke() {
                StaticTextSelectionParams staticTextSelectionParams;
                staticTextSelectionParams = SelectionController.this.params;
                return staticTextSelectionParams.getLayoutCoordinates();
            }
        }, new Function0<TextLayoutResult>() { // from class: androidx.compose.foundation.text.modifiers.SelectionController$modifier$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextLayoutResult invoke() {
                StaticTextSelectionParams staticTextSelectionParams;
                staticTextSelectionParams = SelectionController.this.params;
                return staticTextSelectionParams.getTextLayoutResult();
            }
        }, TouchMode_androidKt.isInTouchMode());
        this.modifier = BasicText_androidKt.textPointerHoverIcon(makeSelectionModifier, selectionRegistrar);
    }

    public /* synthetic */ SelectionController(SelectionRegistrar selectionRegistrar, long j, StaticTextSelectionParams staticTextSelectionParams, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(selectionRegistrar, j, (i & 4) != 0 ? StaticTextSelectionParams.INSTANCE.getEmpty() : staticTextSelectionParams, null);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        this.selectable = this.selectionRegistrar.subscribe(new MultiWidgetSelectionDelegate(this.selectableId, new Function0<LayoutCoordinates>() { // from class: androidx.compose.foundation.text.modifiers.SelectionController$onRemembered$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LayoutCoordinates invoke() {
                StaticTextSelectionParams staticTextSelectionParams;
                staticTextSelectionParams = SelectionController.this.params;
                return staticTextSelectionParams.getLayoutCoordinates();
            }
        }, new Function0<TextLayoutResult>() { // from class: androidx.compose.foundation.text.modifiers.SelectionController$onRemembered$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextLayoutResult invoke() {
                StaticTextSelectionParams staticTextSelectionParams;
                staticTextSelectionParams = SelectionController.this.params;
                return staticTextSelectionParams.getTextLayoutResult();
            }
        }));
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        Selectable selectable = this.selectable;
        if (selectable != null) {
            this.selectionRegistrar.unsubscribe(selectable);
            this.selectable = null;
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        Selectable selectable = this.selectable;
        if (selectable != null) {
            this.selectionRegistrar.unsubscribe(selectable);
            this.selectable = null;
        }
    }

    public final void updateTextLayout(TextLayoutResult textLayoutResult) {
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        this.params = StaticTextSelectionParams.copy$default(this.params, null, textLayoutResult, 1, null);
    }

    public final void updateGlobalPosition(LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        this.params = StaticTextSelectionParams.copy$default(this.params, coordinates, null, 2, null);
    }

    public final void draw(DrawScope drawScope) {
        int offset;
        int offset2;
        Intrinsics.checkNotNullParameter(drawScope, "drawScope");
        Selection selection = this.selectionRegistrar.getSubselections().get(Long.valueOf(this.selectableId));
        if (selection == null) {
            return;
        }
        if (!selection.getHandlesCrossed()) {
            offset = selection.getStart().getOffset();
        } else {
            offset = selection.getEnd().getOffset();
        }
        if (!selection.getHandlesCrossed()) {
            offset2 = selection.getEnd().getOffset();
        } else {
            offset2 = selection.getStart().getOffset();
        }
        if (offset == offset2) {
            return;
        }
        Selectable selectable = this.selectable;
        int lastVisibleOffset = selectable != null ? selectable.getLastVisibleOffset() : 0;
        Path pathForRange = this.params.getPathForRange(RangesKt.coerceAtMost(offset, lastVisibleOffset), RangesKt.coerceAtMost(offset2, lastVisibleOffset));
        if (pathForRange == null) {
            return;
        }
        if (!this.params.getShouldClip()) {
            DrawScope.m3173drawPathLG529CI$default(drawScope, pathForRange, this.backgroundSelectionColor, 0.0f, null, null, 0, 60, null);
            return;
        }
        float m2469getWidthimpl = Size.m2469getWidthimpl(drawScope.mo3182getSizeNHjbRc());
        float m2466getHeightimpl = Size.m2466getHeightimpl(drawScope.mo3182getSizeNHjbRc());
        int m2628getIntersectrtfAjoo = ClipOp.INSTANCE.m2628getIntersectrtfAjoo();
        DrawContext drawContext = drawScope.getDrawContext();
        long mo3107getSizeNHjbRc = drawContext.mo3107getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo3110clipRectN_I0leg(0.0f, 0.0f, m2469getWidthimpl, m2466getHeightimpl, m2628getIntersectrtfAjoo);
        DrawScope.m3173drawPathLG529CI$default(drawScope, pathForRange, this.backgroundSelectionColor, 0.0f, null, null, 0, 60, null);
        drawContext.getCanvas().restore();
        drawContext.mo3108setSizeuvyYCjk(mo3107getSizeNHjbRc);
    }
}
