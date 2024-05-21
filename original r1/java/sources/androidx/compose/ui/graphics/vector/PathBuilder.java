package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.vector.PathNode;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* compiled from: PathBuilder.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010 \n\u0002\b\u0013\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J>\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nJ>\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u0006\u0010\u0017\u001a\u00020\u0000J6\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\nJ6\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\nJ\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00050#J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\nJ\u000e\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\nJ\u0016\u0010(\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\n2\u0006\u0010)\u001a\u00020\nJ\u0016\u0010*\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ\u0016\u0010,\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\n2\u0006\u0010)\u001a\u00020\nJ\u0016\u0010-\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ&\u0010.\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ&\u0010/\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ&\u00100\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ&\u00101\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\nJ\u0016\u00102\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nJ\u0016\u00103\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u00104\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\nJ\u000e\u00105\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\nR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathBuilder;", "", "()V", "nodes", "", "Landroidx/compose/ui/graphics/vector/PathNode;", "addNode", "node", "arcTo", "horizontalEllipseRadius", "", "verticalEllipseRadius", "theta", "isMoreThanHalf", "", "isPositiveArc", "x1", "y1", "arcToRelative", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "dx1", "dy1", "close", "curveTo", "x2", "y2", "x3", "y3", "curveToRelative", "dx2", "dy2", "dx3", "dy3", "getNodes", "", "horizontalLineTo", ViewHierarchyNode.JsonKeys.X, "horizontalLineToRelative", "dx", "lineTo", ViewHierarchyNode.JsonKeys.Y, "lineToRelative", "dy", "moveTo", "moveToRelative", "quadTo", "quadToRelative", "reflectiveCurveTo", "reflectiveCurveToRelative", "reflectiveQuadTo", "reflectiveQuadToRelative", "verticalLineTo", "verticalLineToRelative", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PathBuilder {
    private final List<PathNode> nodes = new ArrayList();

    public final List<PathNode> getNodes() {
        return this.nodes;
    }

    public final PathBuilder close() {
        return addNode(PathNode.Close.INSTANCE);
    }

    public final PathBuilder moveTo(float x, float y) {
        return addNode(new PathNode.MoveTo(x, y));
    }

    public final PathBuilder moveToRelative(float dx, float dy) {
        return addNode(new PathNode.RelativeMoveTo(dx, dy));
    }

    public final PathBuilder lineTo(float x, float y) {
        return addNode(new PathNode.LineTo(x, y));
    }

    public final PathBuilder lineToRelative(float dx, float dy) {
        return addNode(new PathNode.RelativeLineTo(dx, dy));
    }

    public final PathBuilder horizontalLineTo(float x) {
        return addNode(new PathNode.HorizontalTo(x));
    }

    public final PathBuilder horizontalLineToRelative(float dx) {
        return addNode(new PathNode.RelativeHorizontalTo(dx));
    }

    public final PathBuilder verticalLineTo(float y) {
        return addNode(new PathNode.VerticalTo(y));
    }

    public final PathBuilder verticalLineToRelative(float dy) {
        return addNode(new PathNode.RelativeVerticalTo(dy));
    }

    public final PathBuilder curveTo(float x1, float y1, float x2, float y2, float x3, float y3) {
        return addNode(new PathNode.CurveTo(x1, y1, x2, y2, x3, y3));
    }

    public final PathBuilder curveToRelative(float dx1, float dy1, float dx2, float dy2, float dx3, float dy3) {
        return addNode(new PathNode.RelativeCurveTo(dx1, dy1, dx2, dy2, dx3, dy3));
    }

    public final PathBuilder reflectiveCurveTo(float x1, float y1, float x2, float y2) {
        return addNode(new PathNode.ReflectiveCurveTo(x1, y1, x2, y2));
    }

    public final PathBuilder reflectiveCurveToRelative(float dx1, float dy1, float dx2, float dy2) {
        return addNode(new PathNode.RelativeReflectiveCurveTo(dx1, dy1, dx2, dy2));
    }

    public final PathBuilder quadTo(float x1, float y1, float x2, float y2) {
        return addNode(new PathNode.QuadTo(x1, y1, x2, y2));
    }

    public final PathBuilder quadToRelative(float dx1, float dy1, float dx2, float dy2) {
        return addNode(new PathNode.RelativeQuadTo(dx1, dy1, dx2, dy2));
    }

    public final PathBuilder reflectiveQuadTo(float x1, float y1) {
        return addNode(new PathNode.ReflectiveQuadTo(x1, y1));
    }

    public final PathBuilder reflectiveQuadToRelative(float dx1, float dy1) {
        return addNode(new PathNode.RelativeReflectiveQuadTo(dx1, dy1));
    }

    public final PathBuilder arcTo(float horizontalEllipseRadius, float verticalEllipseRadius, float theta, boolean isMoreThanHalf, boolean isPositiveArc, float x1, float y1) {
        return addNode(new PathNode.ArcTo(horizontalEllipseRadius, verticalEllipseRadius, theta, isMoreThanHalf, isPositiveArc, x1, y1));
    }

    public final PathBuilder arcToRelative(float a, float b, float theta, boolean isMoreThanHalf, boolean isPositiveArc, float dx1, float dy1) {
        return addNode(new PathNode.RelativeArcTo(a, b, theta, isMoreThanHalf, isPositiveArc, dx1, dy1));
    }

    private final PathBuilder addNode(PathNode node) {
        this.nodes.add(node);
        return this;
    }
}
