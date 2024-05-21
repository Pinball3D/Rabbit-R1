package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import io.sentry.protocol.MetricSummary;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PathParser.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J!\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0082\bJ\u0014\u0010\u0011\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\u0012J\u0006\u0010\u0013\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016J\u0011\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0010H\u0082\bJ\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u0010\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/compose/ui/graphics/vector/PathParser;", "", "()V", "floatResult", "Landroidx/compose/ui/graphics/vector/FloatResult;", "nodeData", "", "nodes", "", "Landroidx/compose/ui/graphics/vector/PathNode;", "addNodes", "", "cmd", "", "args", MetricSummary.JsonKeys.COUNT, "", "addPathNodes", "", "clear", "parsePathString", "pathData", "", "resizeNodeData", "dataCount", "toNodes", "toPath", "Landroidx/compose/ui/graphics/Path;", "target", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PathParser {
    private final List<PathNode> nodes = new ArrayList();
    private final FloatResult floatResult = new FloatResult(0.0f, false, 3, null);
    private float[] nodeData = new float[64];

    public final List<PathNode> toNodes() {
        return this.nodes;
    }

    public final void clear() {
        this.nodes.clear();
    }

    public final PathParser parsePathString(String pathData) {
        int i;
        char charAt;
        Intrinsics.checkNotNullParameter(pathData, "pathData");
        this.nodes.clear();
        int length = pathData.length();
        int i2 = 0;
        while (i2 < length && Intrinsics.compare((int) pathData.charAt(i2), 32) <= 0) {
            i2++;
        }
        while (length > i2 && Intrinsics.compare((int) pathData.charAt(length - 1), 32) <= 0) {
            length--;
        }
        int i3 = 0;
        while (i2 < length) {
            while (true) {
                i = i2 + 1;
                charAt = pathData.charAt(i2);
                int i4 = charAt | ' ';
                if ((i4 - 97) * (i4 - 122) <= 0 && i4 != 101) {
                    break;
                }
                if (i >= length) {
                    charAt = 0;
                    break;
                }
                i2 = i;
            }
            if (charAt != 0) {
                if ((charAt | ' ') != 122) {
                    i3 = 0;
                    while (true) {
                        if (i >= length || Intrinsics.compare((int) pathData.charAt(i), 32) > 0) {
                            i = FastFloatParser.INSTANCE.nextFloat(pathData, i, length, this.floatResult);
                            if (this.floatResult.getIsValid()) {
                                int i5 = i3 + 1;
                                this.nodeData[i3] = this.floatResult.getValue();
                                float[] fArr = this.nodeData;
                                if (i5 >= fArr.length) {
                                    float[] fArr2 = new float[i5 * 2];
                                    this.nodeData = fArr2;
                                    ArraysKt.copyInto(fArr, fArr2, 0, 0, fArr.length);
                                }
                                i3 = i5;
                            }
                            while (i < length && pathData.charAt(i) == ',') {
                                i++;
                            }
                            if (i >= length || !this.floatResult.getIsValid()) {
                                break;
                            }
                        } else {
                            i++;
                        }
                    }
                }
                PathNodeKt.addPathNodes(charAt, this.nodes, this.nodeData, i3);
            }
            i2 = i;
        }
        return this;
    }

    private final void resizeNodeData(int dataCount) {
        float[] fArr = this.nodeData;
        if (dataCount >= fArr.length) {
            float[] fArr2 = new float[dataCount * 2];
            this.nodeData = fArr2;
            ArraysKt.copyInto(fArr, fArr2, 0, 0, fArr.length);
        }
    }

    public final PathParser addPathNodes(List<? extends PathNode> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        this.nodes.addAll(nodes);
        return this;
    }

    public static /* synthetic */ Path toPath$default(PathParser pathParser, Path path, int i, Object obj) {
        if ((i & 1) != 0) {
            path = AndroidPath_androidKt.Path();
        }
        return pathParser.toPath(path);
    }

    public final Path toPath(Path target) {
        Intrinsics.checkNotNullParameter(target, "target");
        return PathParserKt.toPath(this.nodes, target);
    }

    private final void addNodes(char cmd, float[] args, int count) {
        PathNodeKt.addPathNodes(cmd, this.nodes, args, count);
    }
}
