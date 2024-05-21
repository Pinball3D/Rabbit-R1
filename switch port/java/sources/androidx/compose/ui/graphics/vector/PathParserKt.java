package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.BuildConfig;

/* compiled from: PathParser.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u001aX\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002\u001aX\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u001a\u001a\u0010\u001a\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u001c0\u001b2\b\b\u0002\u0010\u001d\u001a\u00020\u0007\u001a\r\u0010\u001e\u001a\u00020\t*\u00020\tH\u0082\b\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u001f"}, d2 = {"EmptyArray", "", "getEmptyArray", "()[F", "arcToBezier", "", "p", "Landroidx/compose/ui/graphics/Path;", "cx", "", "cy", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "e1x", "e1y", "theta", "start", "sweep", "drawArc", "x0", "y0", "x1", "y1", "isMoreThanHalf", "", "isPositiveArc", "toPath", "", "Landroidx/compose/ui/graphics/vector/PathNode;", "target", "toRadians", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PathParserKt {
    private static final float[] EmptyArray = new float[0];

    public static final float[] getEmptyArray() {
        return EmptyArray;
    }

    private static final double toRadians(double d) {
        return (d / SubsamplingScaleImageView.ORIENTATION_180) * 3.141592653589793d;
    }

    public static /* synthetic */ Path toPath$default(List list, Path path, int i, Object obj) {
        if ((i & 1) != 0) {
            path = AndroidPath_androidKt.Path();
        }
        return toPath(list, path);
    }

    public static final Path toPath(List<? extends PathNode> list, Path path) {
        PathNode pathNode;
        float f;
        int i;
        int i2;
        PathNode pathNode2;
        float f2;
        float f3;
        float f4;
        float f5;
        float dy;
        float y1;
        float x2;
        float y2;
        float f6;
        float f7;
        float f8;
        float f9;
        float dy2;
        List<? extends PathNode> list2 = list;
        Path target = path;
        Intrinsics.checkNotNullParameter(list2, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        int mo2532getFillTypeRgk1Os = path.mo2532getFillTypeRgk1Os();
        path.rewind();
        target.mo2534setFillTypeoQ8Xj4U(mo2532getFillTypeRgk1Os);
        PathNode pathNode3 = list.isEmpty() ? PathNode.Close.INSTANCE : list2.get(0);
        int size = list.size();
        float f10 = 0.0f;
        int i3 = 0;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        while (i3 < size) {
            PathNode pathNode4 = list2.get(i3);
            if (pathNode4 instanceof PathNode.Close) {
                path.close();
                target.moveTo(f15, f16);
                pathNode2 = pathNode4;
                f11 = f15;
                f13 = f11;
                f12 = f16;
                f14 = f12;
            } else if (pathNode4 instanceof PathNode.RelativeMoveTo) {
                PathNode.RelativeMoveTo relativeMoveTo = (PathNode.RelativeMoveTo) pathNode4;
                f13 += relativeMoveTo.getDx();
                f14 += relativeMoveTo.getDy();
                target.relativeMoveTo(relativeMoveTo.getDx(), relativeMoveTo.getDy());
                pathNode2 = pathNode4;
                f15 = f13;
                f16 = f14;
            } else {
                if (pathNode4 instanceof PathNode.MoveTo) {
                    PathNode.MoveTo moveTo = (PathNode.MoveTo) pathNode4;
                    float x = moveTo.getX();
                    float y = moveTo.getY();
                    target.moveTo(moveTo.getX(), moveTo.getY());
                    f13 = x;
                    f15 = f13;
                    f14 = y;
                    f16 = f14;
                } else {
                    if (pathNode4 instanceof PathNode.RelativeLineTo) {
                        PathNode.RelativeLineTo relativeLineTo = (PathNode.RelativeLineTo) pathNode4;
                        target.relativeLineTo(relativeLineTo.getDx(), relativeLineTo.getDy());
                        f13 += relativeLineTo.getDx();
                        dy2 = relativeLineTo.getDy();
                    } else if (pathNode4 instanceof PathNode.LineTo) {
                        PathNode.LineTo lineTo = (PathNode.LineTo) pathNode4;
                        target.lineTo(lineTo.getX(), lineTo.getY());
                        float x3 = lineTo.getX();
                        f14 = lineTo.getY();
                        f13 = x3;
                    } else if (pathNode4 instanceof PathNode.RelativeHorizontalTo) {
                        PathNode.RelativeHorizontalTo relativeHorizontalTo = (PathNode.RelativeHorizontalTo) pathNode4;
                        target.relativeLineTo(relativeHorizontalTo.getDx(), f10);
                        f13 += relativeHorizontalTo.getDx();
                    } else if (pathNode4 instanceof PathNode.HorizontalTo) {
                        PathNode.HorizontalTo horizontalTo = (PathNode.HorizontalTo) pathNode4;
                        target.lineTo(horizontalTo.getX(), f14);
                        f13 = horizontalTo.getX();
                    } else if (pathNode4 instanceof PathNode.RelativeVerticalTo) {
                        PathNode.RelativeVerticalTo relativeVerticalTo = (PathNode.RelativeVerticalTo) pathNode4;
                        target.relativeLineTo(f10, relativeVerticalTo.getDy());
                        dy2 = relativeVerticalTo.getDy();
                    } else if (pathNode4 instanceof PathNode.VerticalTo) {
                        PathNode.VerticalTo verticalTo = (PathNode.VerticalTo) pathNode4;
                        target.lineTo(f13, verticalTo.getY());
                        f14 = verticalTo.getY();
                    } else {
                        if (pathNode4 instanceof PathNode.RelativeCurveTo) {
                            PathNode.RelativeCurveTo relativeCurveTo = (PathNode.RelativeCurveTo) pathNode4;
                            pathNode = pathNode4;
                            path.relativeCubicTo(relativeCurveTo.getDx1(), relativeCurveTo.getDy1(), relativeCurveTo.getDx2(), relativeCurveTo.getDy2(), relativeCurveTo.getDx3(), relativeCurveTo.getDy3());
                            f4 = relativeCurveTo.getDx2() + f13;
                            f5 = relativeCurveTo.getDy2() + f14;
                            f13 += relativeCurveTo.getDx3();
                            dy = relativeCurveTo.getDy3();
                        } else {
                            pathNode = pathNode4;
                            if (pathNode instanceof PathNode.CurveTo) {
                                PathNode.CurveTo curveTo = (PathNode.CurveTo) pathNode;
                                path.cubicTo(curveTo.getX1(), curveTo.getY1(), curveTo.getX2(), curveTo.getY2(), curveTo.getX3(), curveTo.getY3());
                                f4 = curveTo.getX2();
                                y1 = curveTo.getY2();
                                x2 = curveTo.getX3();
                                y2 = curveTo.getY3();
                            } else if (pathNode instanceof PathNode.RelativeReflectiveCurveTo) {
                                if (pathNode3.getIsCurve()) {
                                    f9 = f14 - f12;
                                    f8 = f13 - f11;
                                } else {
                                    f8 = f10;
                                    f9 = f8;
                                }
                                PathNode.RelativeReflectiveCurveTo relativeReflectiveCurveTo = (PathNode.RelativeReflectiveCurveTo) pathNode;
                                path.relativeCubicTo(f8, f9, relativeReflectiveCurveTo.getDx1(), relativeReflectiveCurveTo.getDy1(), relativeReflectiveCurveTo.getDx2(), relativeReflectiveCurveTo.getDy2());
                                f4 = relativeReflectiveCurveTo.getDx1() + f13;
                                f5 = relativeReflectiveCurveTo.getDy1() + f14;
                                f13 += relativeReflectiveCurveTo.getDx2();
                                dy = relativeReflectiveCurveTo.getDy2();
                            } else if (pathNode instanceof PathNode.ReflectiveCurveTo) {
                                if (pathNode3.getIsCurve()) {
                                    float f17 = 2;
                                    f7 = (f17 * f14) - f12;
                                    f6 = (f13 * f17) - f11;
                                } else {
                                    f6 = f13;
                                    f7 = f14;
                                }
                                PathNode.ReflectiveCurveTo reflectiveCurveTo = (PathNode.ReflectiveCurveTo) pathNode;
                                path.cubicTo(f6, f7, reflectiveCurveTo.getX1(), reflectiveCurveTo.getY1(), reflectiveCurveTo.getX2(), reflectiveCurveTo.getY2());
                                f4 = reflectiveCurveTo.getX1();
                                y1 = reflectiveCurveTo.getY1();
                                x2 = reflectiveCurveTo.getX2();
                                y2 = reflectiveCurveTo.getY2();
                            } else if (pathNode instanceof PathNode.RelativeQuadTo) {
                                PathNode.RelativeQuadTo relativeQuadTo = (PathNode.RelativeQuadTo) pathNode;
                                target.relativeQuadraticBezierTo(relativeQuadTo.getDx1(), relativeQuadTo.getDy1(), relativeQuadTo.getDx2(), relativeQuadTo.getDy2());
                                f4 = relativeQuadTo.getDx1() + f13;
                                f5 = relativeQuadTo.getDy1() + f14;
                                f13 += relativeQuadTo.getDx2();
                                dy = relativeQuadTo.getDy2();
                            } else if (pathNode instanceof PathNode.QuadTo) {
                                PathNode.QuadTo quadTo = (PathNode.QuadTo) pathNode;
                                target.quadraticBezierTo(quadTo.getX1(), quadTo.getY1(), quadTo.getX2(), quadTo.getY2());
                                f4 = quadTo.getX1();
                                y1 = quadTo.getY1();
                                x2 = quadTo.getX2();
                                y2 = quadTo.getY2();
                            } else if (pathNode instanceof PathNode.RelativeReflectiveQuadTo) {
                                if (pathNode3.getIsQuad()) {
                                    f2 = f13 - f11;
                                    f3 = f14 - f12;
                                } else {
                                    f2 = f10;
                                    f3 = f2;
                                }
                                PathNode.RelativeReflectiveQuadTo relativeReflectiveQuadTo = (PathNode.RelativeReflectiveQuadTo) pathNode;
                                target.relativeQuadraticBezierTo(f2, f3, relativeReflectiveQuadTo.getDx(), relativeReflectiveQuadTo.getDy());
                                f4 = f2 + f13;
                                f5 = f3 + f14;
                                f13 += relativeReflectiveQuadTo.getDx();
                                dy = relativeReflectiveQuadTo.getDy();
                            } else {
                                if (pathNode instanceof PathNode.ReflectiveQuadTo) {
                                    if (pathNode3.getIsQuad()) {
                                        float f18 = 2;
                                        f13 = (f13 * f18) - f11;
                                        f14 = (f18 * f14) - f12;
                                    }
                                    PathNode.ReflectiveQuadTo reflectiveQuadTo = (PathNode.ReflectiveQuadTo) pathNode;
                                    target.quadraticBezierTo(f13, f14, reflectiveQuadTo.getX(), reflectiveQuadTo.getY());
                                    float x4 = reflectiveQuadTo.getX();
                                    pathNode2 = pathNode;
                                    f12 = f14;
                                    f = f10;
                                    i = i3;
                                    i2 = size;
                                    f14 = reflectiveQuadTo.getY();
                                    f11 = f13;
                                    f13 = x4;
                                } else if (pathNode instanceof PathNode.RelativeArcTo) {
                                    PathNode.RelativeArcTo relativeArcTo = (PathNode.RelativeArcTo) pathNode;
                                    float arcStartDx = relativeArcTo.getArcStartDx() + f13;
                                    float arcStartDy = relativeArcTo.getArcStartDy() + f14;
                                    pathNode2 = pathNode;
                                    i = i3;
                                    f = 0.0f;
                                    i2 = size;
                                    drawArc(path, f13, f14, arcStartDx, arcStartDy, relativeArcTo.getHorizontalEllipseRadius(), relativeArcTo.getVerticalEllipseRadius(), relativeArcTo.getTheta(), relativeArcTo.isMoreThanHalf(), relativeArcTo.isPositiveArc());
                                    f11 = arcStartDx;
                                    f13 = f11;
                                    f15 = f15;
                                    f16 = f16;
                                    f12 = arcStartDy;
                                    f14 = f12;
                                } else {
                                    float f19 = f15;
                                    float f20 = f16;
                                    f = f10;
                                    i = i3;
                                    i2 = size;
                                    if (pathNode instanceof PathNode.ArcTo) {
                                        PathNode.ArcTo arcTo = (PathNode.ArcTo) pathNode;
                                        pathNode2 = pathNode;
                                        drawArc(path, f13, f14, arcTo.getArcStartX(), arcTo.getArcStartY(), arcTo.getHorizontalEllipseRadius(), arcTo.getVerticalEllipseRadius(), arcTo.getTheta(), arcTo.isMoreThanHalf(), arcTo.isPositiveArc());
                                        f13 = arcTo.getArcStartX();
                                        f12 = arcTo.getArcStartY();
                                        f14 = f12;
                                        f15 = f19;
                                        f16 = f20;
                                        f11 = f13;
                                    } else {
                                        pathNode2 = pathNode;
                                        f15 = f19;
                                        f16 = f20;
                                    }
                                }
                                i3 = i + 1;
                                target = path;
                                size = i2;
                                pathNode3 = pathNode2;
                                f10 = f;
                                list2 = list;
                            }
                            pathNode2 = pathNode;
                            f13 = x2;
                            f14 = y2;
                            f = f10;
                            i = i3;
                            i2 = size;
                            f12 = y1;
                            f11 = f4;
                            i3 = i + 1;
                            target = path;
                            size = i2;
                            pathNode3 = pathNode2;
                            f10 = f;
                            list2 = list;
                        }
                        f14 += dy;
                        pathNode2 = pathNode;
                        f12 = f5;
                        f = f10;
                        i = i3;
                        i2 = size;
                        f11 = f4;
                        i3 = i + 1;
                        target = path;
                        size = i2;
                        pathNode3 = pathNode2;
                        f10 = f;
                        list2 = list;
                    }
                    f14 += dy2;
                }
                pathNode2 = pathNode4;
            }
            f = f10;
            i = i3;
            i2 = size;
            i3 = i + 1;
            target = path;
            size = i2;
            pathNode3 = pathNode2;
            f10 = f;
            list2 = list;
        }
        return path;
    }

    private static final void drawArc(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, boolean z, boolean z2) {
        double d8;
        double d9;
        double d10 = (d7 / SubsamplingScaleImageView.ORIENTATION_180) * 3.141592653589793d;
        double cos = Math.cos(d10);
        double sin = Math.sin(d10);
        double d11 = ((d * cos) + (d2 * sin)) / d5;
        double d12 = (((-d) * sin) + (d2 * cos)) / d6;
        double d13 = ((d3 * cos) + (d4 * sin)) / d5;
        double d14 = (((-d3) * sin) + (d4 * cos)) / d6;
        double d15 = d11 - d13;
        double d16 = d12 - d14;
        double d17 = 2;
        double d18 = (d11 + d13) / d17;
        double d19 = (d12 + d14) / d17;
        double d20 = (d15 * d15) + (d16 * d16);
        if (d20 == BuildConfig.SENTRY_SAMPLE_RATE) {
            return;
        }
        double d21 = (1.0d / d20) - 0.25d;
        if (d21 < BuildConfig.SENTRY_SAMPLE_RATE) {
            double sqrt = (float) (Math.sqrt(d20) / 1.99999d);
            drawArc(path, d, d2, d3, d4, d5 * sqrt, d6 * sqrt, d7, z, z2);
            return;
        }
        double sqrt2 = Math.sqrt(d21);
        double d22 = d15 * sqrt2;
        double d23 = sqrt2 * d16;
        if (z == z2) {
            d8 = d18 - d23;
            d9 = d19 + d22;
        } else {
            d8 = d18 + d23;
            d9 = d19 - d22;
        }
        double atan2 = Math.atan2(d12 - d9, d11 - d8);
        double atan22 = Math.atan2(d14 - d9, d13 - d8) - atan2;
        if (z2 != (atan22 >= BuildConfig.SENTRY_SAMPLE_RATE)) {
            atan22 = atan22 > BuildConfig.SENTRY_SAMPLE_RATE ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
        }
        double d24 = d8 * d5;
        double d25 = d9 * d6;
        arcToBezier(path, (d24 * cos) - (d25 * sin), (d24 * sin) + (d25 * cos), d5, d6, d, d2, d10, atan2, atan22);
    }

    private static final void arcToBezier(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        double d10 = d3;
        double d11 = 4;
        int ceil = (int) Math.ceil(Math.abs((d9 * d11) / 3.141592653589793d));
        double cos = Math.cos(d7);
        double sin = Math.sin(d7);
        double cos2 = Math.cos(d8);
        double sin2 = Math.sin(d8);
        double d12 = -d10;
        double d13 = d12 * cos;
        double d14 = d4 * sin;
        double d15 = (d13 * sin2) - (d14 * cos2);
        double d16 = d12 * sin;
        double d17 = d4 * cos;
        double d18 = (sin2 * d16) + (cos2 * d17);
        double d19 = d9 / ceil;
        double d20 = d5;
        double d21 = d18;
        double d22 = d15;
        int i = 0;
        double d23 = d6;
        double d24 = d8;
        while (i < ceil) {
            double d25 = d24 + d19;
            double sin3 = Math.sin(d25);
            double cos3 = Math.cos(d25);
            int i2 = ceil;
            double d26 = (d + ((d10 * cos) * cos3)) - (d14 * sin3);
            double d27 = d2 + (d10 * sin * cos3) + (d17 * sin3);
            double d28 = (d13 * sin3) - (d14 * cos3);
            double d29 = (sin3 * d16) + (cos3 * d17);
            double d30 = d25 - d24;
            double tan = Math.tan(d30 / 2);
            double sin4 = (Math.sin(d30) * (Math.sqrt(d11 + ((3.0d * tan) * tan)) - 1)) / 3;
            path.cubicTo((float) (d20 + (d22 * sin4)), (float) (d23 + (d21 * sin4)), (float) (d26 - (sin4 * d28)), (float) (d27 - (sin4 * d29)), (float) d26, (float) d27);
            i++;
            d19 = d19;
            sin = sin;
            d20 = d26;
            d16 = d16;
            d24 = d25;
            d21 = d29;
            d11 = d11;
            d22 = d28;
            cos = cos;
            ceil = i2;
            d23 = d27;
            d10 = d3;
        }
    }
}
