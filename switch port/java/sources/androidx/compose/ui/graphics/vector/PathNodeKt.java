package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.vector.PathNode;
import io.sentry.protocol.MetricSummary;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PathNode.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0010\f\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001ai\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020\b28\b\u0004\u0010(\u001a2\u0012\u0013\u0012\u00110%¢\u0006\f\b*\u0012\b\b+\u0012\u0004\b\b(,\u0012\u0013\u0012\u00110\b¢\u0006\f\b*\u0012\b\b+\u0012\u0004\b\b(-\u0012\u0004\u0012\u00020#0)H\u0082\b\u001a*\u0010.\u001a\u00020 *\u00020\u00012\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\bH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"ArcToKey", "", "CloseKey", "CurveToKey", "HorizontalToKey", "LineToKey", "MoveToKey", "NUM_ARC_TO_ARGS", "", "NUM_CURVE_TO_ARGS", "NUM_HORIZONTAL_TO_ARGS", "NUM_LINE_TO_ARGS", "NUM_MOVE_TO_ARGS", "NUM_QUAD_TO_ARGS", "NUM_REFLECTIVE_CURVE_TO_ARGS", "NUM_REFLECTIVE_QUAD_TO_ARGS", "NUM_VERTICAL_TO_ARGS", "QuadToKey", "ReflectiveCurveToKey", "ReflectiveQuadToKey", "RelativeArcToKey", "RelativeCloseKey", "RelativeCurveToKey", "RelativeHorizontalToKey", "RelativeLineToKey", "RelativeMoveToKey", "RelativeQuadToKey", "RelativeReflectiveCurveToKey", "RelativeReflectiveQuadToKey", "RelativeVerticalToKey", "VerticalToKey", "pathNodesFromArgs", "", "nodes", "", "Landroidx/compose/ui/graphics/vector/PathNode;", "args", "", MetricSummary.JsonKeys.COUNT, "numArgs", "nodeFor", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "subArray", "start", "addPathNodes", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PathNodeKt {
    private static final char ArcToKey = 'A';
    private static final char CloseKey = 'Z';
    private static final char CurveToKey = 'C';
    private static final char HorizontalToKey = 'H';
    private static final char LineToKey = 'L';
    private static final char MoveToKey = 'M';
    private static final int NUM_ARC_TO_ARGS = 7;
    private static final int NUM_CURVE_TO_ARGS = 6;
    private static final int NUM_HORIZONTAL_TO_ARGS = 1;
    private static final int NUM_LINE_TO_ARGS = 2;
    private static final int NUM_MOVE_TO_ARGS = 2;
    private static final int NUM_QUAD_TO_ARGS = 4;
    private static final int NUM_REFLECTIVE_CURVE_TO_ARGS = 4;
    private static final int NUM_REFLECTIVE_QUAD_TO_ARGS = 2;
    private static final int NUM_VERTICAL_TO_ARGS = 1;
    private static final char QuadToKey = 'Q';
    private static final char ReflectiveCurveToKey = 'S';
    private static final char ReflectiveQuadToKey = 'T';
    private static final char RelativeArcToKey = 'a';
    private static final char RelativeCloseKey = 'z';
    private static final char RelativeCurveToKey = 'c';
    private static final char RelativeHorizontalToKey = 'h';
    private static final char RelativeLineToKey = 'l';
    private static final char RelativeMoveToKey = 'm';
    private static final char RelativeQuadToKey = 'q';
    private static final char RelativeReflectiveCurveToKey = 's';
    private static final char RelativeReflectiveQuadToKey = 't';
    private static final char RelativeVerticalToKey = 'v';
    private static final char VerticalToKey = 'V';

    public static final void addPathNodes(char c, List<PathNode> nodes, float[] args, int i) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        Intrinsics.checkNotNullParameter(args, "args");
        if (c == 'z' || c == 'Z') {
            nodes.add(PathNode.Close.INSTANCE);
            return;
        }
        int i2 = 0;
        if (c == 'm') {
            int i3 = i - 2;
            while (i2 <= i3) {
                int i4 = i2 + 1;
                PathNode.RelativeLineTo relativeMoveTo = new PathNode.RelativeMoveTo(args[i2], args[i4]);
                if ((relativeMoveTo instanceof PathNode.MoveTo) && i2 > 0) {
                    relativeMoveTo = new PathNode.LineTo(args[i2], args[i4]);
                } else if (i2 > 0) {
                    relativeMoveTo = new PathNode.RelativeLineTo(args[i2], args[i4]);
                }
                nodes.add(relativeMoveTo);
                i2 += 2;
            }
            return;
        }
        if (c == 'M') {
            int i5 = i - 2;
            while (i2 <= i5) {
                int i6 = i2 + 1;
                PathNode.RelativeLineTo moveTo = new PathNode.MoveTo(args[i2], args[i6]);
                if (i2 > 0) {
                    moveTo = new PathNode.LineTo(args[i2], args[i6]);
                } else if ((moveTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    moveTo = new PathNode.RelativeLineTo(args[i2], args[i6]);
                }
                nodes.add(moveTo);
                i2 += 2;
            }
            return;
        }
        if (c == 'l') {
            int i7 = i - 2;
            while (i2 <= i7) {
                int i8 = i2 + 1;
                PathNode.RelativeLineTo relativeLineTo = new PathNode.RelativeLineTo(args[i2], args[i8]);
                if ((relativeLineTo instanceof PathNode.MoveTo) && i2 > 0) {
                    relativeLineTo = new PathNode.LineTo(args[i2], args[i8]);
                } else if ((relativeLineTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    relativeLineTo = new PathNode.RelativeLineTo(args[i2], args[i8]);
                }
                nodes.add(relativeLineTo);
                i2 += 2;
            }
            return;
        }
        if (c == 'L') {
            int i9 = i - 2;
            while (i2 <= i9) {
                int i10 = i2 + 1;
                PathNode.RelativeLineTo lineTo = new PathNode.LineTo(args[i2], args[i10]);
                if ((lineTo instanceof PathNode.MoveTo) && i2 > 0) {
                    lineTo = new PathNode.LineTo(args[i2], args[i10]);
                } else if ((lineTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    lineTo = new PathNode.RelativeLineTo(args[i2], args[i10]);
                }
                nodes.add(lineTo);
                i2 += 2;
            }
            return;
        }
        if (c == 'h') {
            int i11 = i - 1;
            while (i2 <= i11) {
                PathNode.RelativeLineTo relativeHorizontalTo = new PathNode.RelativeHorizontalTo(args[i2]);
                if ((relativeHorizontalTo instanceof PathNode.MoveTo) && i2 > 0) {
                    relativeHorizontalTo = new PathNode.LineTo(args[i2], args[i2 + 1]);
                } else if ((relativeHorizontalTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    relativeHorizontalTo = new PathNode.RelativeLineTo(args[i2], args[i2 + 1]);
                }
                nodes.add(relativeHorizontalTo);
                i2++;
            }
            return;
        }
        if (c == 'H') {
            int i12 = i - 1;
            while (i2 <= i12) {
                PathNode.RelativeLineTo horizontalTo = new PathNode.HorizontalTo(args[i2]);
                if ((horizontalTo instanceof PathNode.MoveTo) && i2 > 0) {
                    horizontalTo = new PathNode.LineTo(args[i2], args[i2 + 1]);
                } else if ((horizontalTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    horizontalTo = new PathNode.RelativeLineTo(args[i2], args[i2 + 1]);
                }
                nodes.add(horizontalTo);
                i2++;
            }
            return;
        }
        if (c == 'v') {
            int i13 = i - 1;
            while (i2 <= i13) {
                PathNode.RelativeLineTo relativeVerticalTo = new PathNode.RelativeVerticalTo(args[i2]);
                if ((relativeVerticalTo instanceof PathNode.MoveTo) && i2 > 0) {
                    relativeVerticalTo = new PathNode.LineTo(args[i2], args[i2 + 1]);
                } else if ((relativeVerticalTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    relativeVerticalTo = new PathNode.RelativeLineTo(args[i2], args[i2 + 1]);
                }
                nodes.add(relativeVerticalTo);
                i2++;
            }
            return;
        }
        if (c == 'V') {
            int i14 = i - 1;
            while (i2 <= i14) {
                PathNode.RelativeLineTo verticalTo = new PathNode.VerticalTo(args[i2]);
                if ((verticalTo instanceof PathNode.MoveTo) && i2 > 0) {
                    verticalTo = new PathNode.LineTo(args[i2], args[i2 + 1]);
                } else if ((verticalTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    verticalTo = new PathNode.RelativeLineTo(args[i2], args[i2 + 1]);
                }
                nodes.add(verticalTo);
                i2++;
            }
            return;
        }
        if (c == 'c') {
            int i15 = i - 6;
            while (i2 <= i15) {
                int i16 = i2 + 1;
                PathNode.RelativeLineTo relativeCurveTo = new PathNode.RelativeCurveTo(args[i2], args[i16], args[i2 + 2], args[i2 + 3], args[i2 + 4], args[i2 + 5]);
                if ((relativeCurveTo instanceof PathNode.MoveTo) && i2 > 0) {
                    relativeCurveTo = new PathNode.LineTo(args[i2], args[i16]);
                } else if ((relativeCurveTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    relativeCurveTo = new PathNode.RelativeLineTo(args[i2], args[i16]);
                }
                nodes.add(relativeCurveTo);
                i2 += 6;
            }
            return;
        }
        if (c == 'C') {
            int i17 = i - 6;
            while (i2 <= i17) {
                int i18 = i2 + 1;
                PathNode.RelativeLineTo curveTo = new PathNode.CurveTo(args[i2], args[i18], args[i2 + 2], args[i2 + 3], args[i2 + 4], args[i2 + 5]);
                if ((curveTo instanceof PathNode.MoveTo) && i2 > 0) {
                    curveTo = new PathNode.LineTo(args[i2], args[i18]);
                } else if ((curveTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    curveTo = new PathNode.RelativeLineTo(args[i2], args[i18]);
                }
                nodes.add(curveTo);
                i2 += 6;
            }
            return;
        }
        if (c == 's') {
            int i19 = i - 4;
            while (i2 <= i19) {
                int i20 = i2 + 1;
                PathNode.RelativeLineTo relativeReflectiveCurveTo = new PathNode.RelativeReflectiveCurveTo(args[i2], args[i20], args[i2 + 2], args[i2 + 3]);
                if ((relativeReflectiveCurveTo instanceof PathNode.MoveTo) && i2 > 0) {
                    relativeReflectiveCurveTo = new PathNode.LineTo(args[i2], args[i20]);
                } else if ((relativeReflectiveCurveTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    relativeReflectiveCurveTo = new PathNode.RelativeLineTo(args[i2], args[i20]);
                }
                nodes.add(relativeReflectiveCurveTo);
                i2 += 4;
            }
            return;
        }
        if (c == 'S') {
            int i21 = i - 4;
            while (i2 <= i21) {
                int i22 = i2 + 1;
                PathNode.RelativeLineTo reflectiveCurveTo = new PathNode.ReflectiveCurveTo(args[i2], args[i22], args[i2 + 2], args[i2 + 3]);
                if ((reflectiveCurveTo instanceof PathNode.MoveTo) && i2 > 0) {
                    reflectiveCurveTo = new PathNode.LineTo(args[i2], args[i22]);
                } else if ((reflectiveCurveTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    reflectiveCurveTo = new PathNode.RelativeLineTo(args[i2], args[i22]);
                }
                nodes.add(reflectiveCurveTo);
                i2 += 4;
            }
            return;
        }
        if (c == 'q') {
            int i23 = i - 4;
            while (i2 <= i23) {
                int i24 = i2 + 1;
                PathNode.RelativeLineTo relativeQuadTo = new PathNode.RelativeQuadTo(args[i2], args[i24], args[i2 + 2], args[i2 + 3]);
                if ((relativeQuadTo instanceof PathNode.MoveTo) && i2 > 0) {
                    relativeQuadTo = new PathNode.LineTo(args[i2], args[i24]);
                } else if ((relativeQuadTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    relativeQuadTo = new PathNode.RelativeLineTo(args[i2], args[i24]);
                }
                nodes.add(relativeQuadTo);
                i2 += 4;
            }
            return;
        }
        if (c == 'Q') {
            int i25 = i - 4;
            while (i2 <= i25) {
                int i26 = i2 + 1;
                PathNode.RelativeLineTo quadTo = new PathNode.QuadTo(args[i2], args[i26], args[i2 + 2], args[i2 + 3]);
                if ((quadTo instanceof PathNode.MoveTo) && i2 > 0) {
                    quadTo = new PathNode.LineTo(args[i2], args[i26]);
                } else if ((quadTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    quadTo = new PathNode.RelativeLineTo(args[i2], args[i26]);
                }
                nodes.add(quadTo);
                i2 += 4;
            }
            return;
        }
        if (c == 't') {
            int i27 = i - 2;
            while (i2 <= i27) {
                int i28 = i2 + 1;
                PathNode.RelativeLineTo relativeReflectiveQuadTo = new PathNode.RelativeReflectiveQuadTo(args[i2], args[i28]);
                if ((relativeReflectiveQuadTo instanceof PathNode.MoveTo) && i2 > 0) {
                    relativeReflectiveQuadTo = new PathNode.LineTo(args[i2], args[i28]);
                } else if ((relativeReflectiveQuadTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    relativeReflectiveQuadTo = new PathNode.RelativeLineTo(args[i2], args[i28]);
                }
                nodes.add(relativeReflectiveQuadTo);
                i2 += 2;
            }
            return;
        }
        if (c == 'T') {
            int i29 = i - 2;
            while (i2 <= i29) {
                int i30 = i2 + 1;
                PathNode.RelativeLineTo reflectiveQuadTo = new PathNode.ReflectiveQuadTo(args[i2], args[i30]);
                if ((reflectiveQuadTo instanceof PathNode.MoveTo) && i2 > 0) {
                    reflectiveQuadTo = new PathNode.LineTo(args[i2], args[i30]);
                } else if ((reflectiveQuadTo instanceof PathNode.RelativeMoveTo) && i2 > 0) {
                    reflectiveQuadTo = new PathNode.RelativeLineTo(args[i2], args[i30]);
                }
                nodes.add(reflectiveQuadTo);
                i2 += 2;
            }
            return;
        }
        if (c == 'a') {
            int i31 = i - 7;
            for (int i32 = 0; i32 <= i31; i32 += 7) {
                int i33 = i32 + 1;
                PathNode.RelativeLineTo relativeArcTo = new PathNode.RelativeArcTo(args[i32], args[i33], args[i32 + 2], Float.compare(args[i32 + 3], 0.0f) != 0, Float.compare(args[i32 + 4], 0.0f) != 0, args[i32 + 5], args[i32 + 6]);
                if ((relativeArcTo instanceof PathNode.MoveTo) && i32 > 0) {
                    relativeArcTo = new PathNode.LineTo(args[i32], args[i33]);
                } else if ((relativeArcTo instanceof PathNode.RelativeMoveTo) && i32 > 0) {
                    relativeArcTo = new PathNode.RelativeLineTo(args[i32], args[i33]);
                }
                nodes.add(relativeArcTo);
            }
            return;
        }
        if (c != 'A') {
            throw new IllegalArgumentException("Unknown command for: " + c);
        }
        int i34 = i - 7;
        for (int i35 = 0; i35 <= i34; i35 += 7) {
            int i36 = i35 + 1;
            PathNode.RelativeLineTo arcTo = new PathNode.ArcTo(args[i35], args[i36], args[i35 + 2], Float.compare(args[i35 + 3], 0.0f) != 0, Float.compare(args[i35 + 4], 0.0f) != 0, args[i35 + 5], args[i35 + 6]);
            if ((arcTo instanceof PathNode.MoveTo) && i35 > 0) {
                arcTo = new PathNode.LineTo(args[i35], args[i36]);
            } else if ((arcTo instanceof PathNode.RelativeMoveTo) && i35 > 0) {
                arcTo = new PathNode.RelativeLineTo(args[i35], args[i36]);
            }
            nodes.add(arcTo);
        }
    }

    private static final void pathNodesFromArgs(List<PathNode> list, float[] fArr, int i, int i2, Function2<? super float[], ? super Integer, ? extends PathNode> function2) {
        int i3 = i - i2;
        int i4 = 0;
        while (i4 <= i3) {
            PathNode.RelativeLineTo invoke = function2.invoke(fArr, Integer.valueOf(i4));
            if ((invoke instanceof PathNode.MoveTo) && i4 > 0) {
                invoke = new PathNode.LineTo(fArr[i4], fArr[i4 + 1]);
            } else if ((invoke instanceof PathNode.RelativeMoveTo) && i4 > 0) {
                invoke = new PathNode.RelativeLineTo(fArr[i4], fArr[i4 + 1]);
            }
            list.add(invoke);
            i4 += i2;
        }
    }
}
