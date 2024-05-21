package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidMatrixConversions.android.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\t"}, d2 = {"setFrom", "", "Landroid/graphics/Matrix;", "matrix", "Landroidx/compose/ui/graphics/Matrix;", "setFrom-EL8BTi8", "(Landroid/graphics/Matrix;[F)V", "setFrom-tU-YjHk", "([FLandroid/graphics/Matrix;)V", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidMatrixConversions_androidKt {
    /* renamed from: setFrom-tU-YjHk, reason: not valid java name */
    public static final void m2512setFromtUYjHk(float[] setFrom, android.graphics.Matrix matrix) {
        Intrinsics.checkNotNullParameter(setFrom, "$this$setFrom");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        matrix.getValues(setFrom);
        float f = setFrom[0];
        float f2 = setFrom[1];
        float f3 = setFrom[2];
        float f4 = setFrom[3];
        float f5 = setFrom[4];
        float f6 = setFrom[5];
        float f7 = setFrom[6];
        float f8 = setFrom[7];
        float f9 = setFrom[8];
        setFrom[0] = f;
        setFrom[1] = f4;
        setFrom[2] = 0.0f;
        setFrom[3] = f7;
        setFrom[4] = f2;
        setFrom[5] = f5;
        setFrom[6] = 0.0f;
        setFrom[7] = f8;
        setFrom[8] = 0.0f;
        setFrom[9] = 0.0f;
        setFrom[10] = 1.0f;
        setFrom[11] = 0.0f;
        setFrom[12] = f3;
        setFrom[13] = f6;
        setFrom[14] = 0.0f;
        setFrom[15] = f9;
    }

    /* renamed from: setFrom-EL8BTi8, reason: not valid java name */
    public static final void m2511setFromEL8BTi8(android.graphics.Matrix setFrom, float[] matrix) {
        Intrinsics.checkNotNullParameter(setFrom, "$this$setFrom");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        float f = matrix[2];
        if (f == 0.0f) {
            float f2 = matrix[6];
            if (f2 == 0.0f && matrix[10] == 1.0f && matrix[14] == 0.0f) {
                float f3 = matrix[8];
                if (f3 == 0.0f && matrix[9] == 0.0f && matrix[11] == 0.0f) {
                    float f4 = matrix[0];
                    float f5 = matrix[1];
                    float f6 = matrix[3];
                    float f7 = matrix[4];
                    float f8 = matrix[5];
                    float f9 = matrix[7];
                    float f10 = matrix[12];
                    float f11 = matrix[13];
                    float f12 = matrix[15];
                    matrix[0] = f4;
                    matrix[1] = f7;
                    matrix[2] = f10;
                    matrix[3] = f5;
                    matrix[4] = f8;
                    matrix[5] = f11;
                    matrix[6] = f6;
                    matrix[7] = f9;
                    matrix[8] = f12;
                    setFrom.setValues(matrix);
                    matrix[0] = f4;
                    matrix[1] = f5;
                    matrix[2] = f;
                    matrix[3] = f6;
                    matrix[4] = f7;
                    matrix[5] = f8;
                    matrix[6] = f2;
                    matrix[7] = f9;
                    matrix[8] = f3;
                    return;
                }
            }
        }
        throw new IllegalArgumentException("Android does not support arbitrary transforms".toString());
    }
}
