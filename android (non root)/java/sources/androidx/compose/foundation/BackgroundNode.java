package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: Background.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B*\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\nø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\f\u0010$\u001a\u00020%*\u00020&H\u0016J\f\u0010'\u001a\u00020%*\u00020&H\u0002J\f\u0010(\u001a\u00020%*\u00020&H\u0002R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R%\u0010\u0003\u001a\u00020\u0004X\u0086\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0019\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006)"}, d2 = {"Landroidx/compose/foundation/BackgroundNode;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "color", "Landroidx/compose/ui/graphics/Color;", "brush", "Landroidx/compose/ui/graphics/Brush;", ViewHierarchyNode.JsonKeys.ALPHA, "", "shape", "Landroidx/compose/ui/graphics/Shape;", "(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getAlpha", "()F", "setAlpha", "(F)V", "getBrush", "()Landroidx/compose/ui/graphics/Brush;", "setBrush", "(Landroidx/compose/ui/graphics/Brush;)V", "getColor-0d7_KjU", "()J", "setColor-8_81llA", "(J)V", "J", "lastLayoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "lastOutline", "Landroidx/compose/ui/graphics/Outline;", "lastShape", "lastSize", "Landroidx/compose/ui/geometry/Size;", "getShape", "()Landroidx/compose/ui/graphics/Shape;", "setShape", "(Landroidx/compose/ui/graphics/Shape;)V", "draw", "", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "drawOutline", "drawRect", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class BackgroundNode extends Modifier.Node implements DrawModifierNode {
    private float alpha;
    private Brush brush;
    private long color;
    private LayoutDirection lastLayoutDirection;
    private Outline lastOutline;
    private Shape lastShape;
    private Size lastSize;
    private Shape shape;

    public /* synthetic */ BackgroundNode(long j, Brush brush, float f, Shape shape, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, brush, f, shape);
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final Brush getBrush() {
        return this.brush;
    }

    /* renamed from: getColor-0d7_KjU, reason: not valid java name and from getter */
    public final long getColor() {
        return this.color;
    }

    public final Shape getShape() {
        return this.shape;
    }

    public final void setAlpha(float f) {
        this.alpha = f;
    }

    public final void setBrush(Brush brush) {
        this.brush = brush;
    }

    /* renamed from: setColor-8_81llA, reason: not valid java name */
    public final void m171setColor8_81llA(long j) {
        this.color = j;
    }

    public final void setShape(Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }

    private BackgroundNode(long j, Brush brush, float f, Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.color = j;
        this.brush = brush;
        this.alpha = f;
        this.shape = shape;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        if (this.shape == RectangleShapeKt.getRectangleShape()) {
            drawRect(contentDrawScope);
        } else {
            drawOutline(contentDrawScope);
        }
        contentDrawScope.drawContent();
    }

    private final void drawRect(ContentDrawScope contentDrawScope) {
        if (!Color.m2640equalsimpl0(this.color, Color.INSTANCE.m2675getUnspecified0d7_KjU())) {
            DrawScope.m3177drawRectnJ9OG0$default(contentDrawScope, this.color, 0L, 0L, 0.0f, null, null, 0, WebSocketProtocol.PAYLOAD_SHORT, null);
        }
        Brush brush = this.brush;
        if (brush != null) {
            DrawScope.m3176drawRectAsUm42w$default(contentDrawScope, brush, 0L, 0L, this.alpha, null, null, 0, 118, null);
        }
    }

    private final void drawOutline(ContentDrawScope contentDrawScope) {
        Outline mo218createOutlinePq9zytI;
        if (Size.m2464equalsimpl(contentDrawScope.mo3182getSizeNHjbRc(), this.lastSize) && contentDrawScope.getLayoutDirection() == this.lastLayoutDirection && Intrinsics.areEqual(this.lastShape, this.shape)) {
            mo218createOutlinePq9zytI = this.lastOutline;
            Intrinsics.checkNotNull(mo218createOutlinePq9zytI);
        } else {
            mo218createOutlinePq9zytI = this.shape.mo218createOutlinePq9zytI(contentDrawScope.mo3182getSizeNHjbRc(), contentDrawScope.getLayoutDirection(), contentDrawScope);
        }
        if (!Color.m2640equalsimpl0(this.color, Color.INSTANCE.m2675getUnspecified0d7_KjU())) {
            OutlineKt.m2891drawOutlinewDX37Ww(contentDrawScope, mo218createOutlinePq9zytI, this.color, (r17 & 4) != 0 ? 1.0f : 0.0f, (r17 & 8) != 0 ? Fill.INSTANCE : null, (r17 & 16) != 0 ? null : null, (r17 & 32) != 0 ? DrawScope.INSTANCE.m3183getDefaultBlendMode0nO6VwU() : 0);
        }
        Brush brush = this.brush;
        if (brush != null) {
            OutlineKt.m2890drawOutlinehn5TExg$default(contentDrawScope, mo218createOutlinePq9zytI, brush, this.alpha, null, null, 0, 56, null);
        }
        this.lastOutline = mo218createOutlinePq9zytI;
        this.lastSize = Size.m2457boximpl(contentDrawScope.mo3182getSizeNHjbRc());
        this.lastLayoutDirection = contentDrawScope.getLayoutDirection();
        this.lastShape = this.shape;
    }
}
