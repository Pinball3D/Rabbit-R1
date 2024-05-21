package androidx.compose.ui.platform;

import android.graphics.Matrix;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayerMatrixCache.android.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B=\u00126\u0010\u0003\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0004¢\u0006\u0002\u0010\u000bJ \u0010\u0016\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00028\u0000ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u001e\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00028\u0000ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0018J\u0006\u0010\u001b\u001a\u00020\nR\u0010\u0010\f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R>\u0010\u0003\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u000eX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000fR\u0010\u0010\u0015\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001c"}, d2 = {"Landroidx/compose/ui/platform/LayerMatrixCache;", ExifInterface.GPS_DIRECTION_TRUE, "", "getMatrix", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "target", "Landroid/graphics/Matrix;", "matrix", "", "(Lkotlin/jvm/functions/Function2;)V", "androidMatrixCache", "inverseMatrixCache", "Landroidx/compose/ui/graphics/Matrix;", "[F", "isDirty", "", "isInverseDirty", "isInverseValid", "matrixCache", "previousAndroidMatrix", "calculateInverseMatrix", "calculateInverseMatrix-bWbORWo", "(Ljava/lang/Object;)[F", "calculateMatrix", "calculateMatrix-GrdbGEg", "invalidate", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LayerMatrixCache<T> {
    private Matrix androidMatrixCache;
    private final Function2<T, Matrix, Unit> getMatrix;
    private float[] inverseMatrixCache;
    private boolean isDirty;
    private boolean isInverseDirty;
    private boolean isInverseValid;
    private float[] matrixCache;
    private Matrix previousAndroidMatrix;

    public final void invalidate() {
        this.isDirty = true;
        this.isInverseDirty = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LayerMatrixCache(Function2<? super T, ? super Matrix, Unit> getMatrix) {
        Intrinsics.checkNotNullParameter(getMatrix, "getMatrix");
        this.getMatrix = getMatrix;
        this.isDirty = true;
        this.isInverseDirty = true;
        this.isInverseValid = true;
    }

    /* renamed from: calculateMatrix-GrdbGEg, reason: not valid java name */
    public final float[] m4208calculateMatrixGrdbGEg(T target) {
        float[] fArr = this.matrixCache;
        if (fArr == null) {
            fArr = androidx.compose.ui.graphics.Matrix.m2864constructorimpl$default(null, 1, null);
            this.matrixCache = fArr;
        }
        if (!this.isDirty) {
            return fArr;
        }
        Matrix matrix = this.androidMatrixCache;
        if (matrix == null) {
            matrix = new Matrix();
            this.androidMatrixCache = matrix;
        }
        this.getMatrix.invoke(target, matrix);
        Matrix matrix2 = this.previousAndroidMatrix;
        if (matrix2 == null || !Intrinsics.areEqual(matrix, matrix2)) {
            AndroidMatrixConversions_androidKt.m2512setFromtUYjHk(fArr, matrix);
            this.androidMatrixCache = matrix2;
            this.previousAndroidMatrix = matrix;
        }
        this.isDirty = false;
        return fArr;
    }

    /* renamed from: calculateInverseMatrix-bWbORWo, reason: not valid java name */
    public final float[] m4207calculateInverseMatrixbWbORWo(T target) {
        float[] fArr = this.inverseMatrixCache;
        if (fArr == null) {
            fArr = androidx.compose.ui.graphics.Matrix.m2864constructorimpl$default(null, 1, null);
            this.inverseMatrixCache = fArr;
        }
        if (this.isInverseDirty) {
            this.isInverseValid = InvertMatrixKt.m4205invertToJiSxe2E(m4208calculateMatrixGrdbGEg(target), fArr);
            this.isInverseDirty = false;
        }
        if (this.isInverseValid) {
            return fArr;
        }
        return null;
    }
}
