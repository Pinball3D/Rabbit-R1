package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: VelocityTracker.kt */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u001a(\u0010\u0006\u001a\f\u0012\b\u0012\u00060\bj\u0002`\t0\u00072\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0082\b¢\u0006\u0002\u0010\f\u001a(\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u001a\u0011\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0003H\u0082\b\u001a2\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\bH\u0000\u001a\u0012\u0010\u001a\u001a\u00020\u001b*\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e\u001a\u0014\u0010\u001f\u001a\u00020\u0003*\u00020\b2\u0006\u0010 \u001a\u00020\bH\u0002\u001a,\u0010!\u001a\u00020\u0003*\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\"2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0001H\u0082\n¢\u0006\u0002\u0010%\u001a\r\u0010&\u001a\u00020\u0003*\u00020\bH\u0082\b\u001a4\u0010'\u001a\u00020\u001b*\f\u0012\u0004\u0012\u00020\b0\u0007j\u0002`\"2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u0003H\u0082\n¢\u0006\u0002\u0010)\u001a1\u0010'\u001a\u00020\u001b*\n\u0012\u0006\u0012\u0004\u0018\u00010*0\u00072\u0006\u0010+\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0003H\u0002¢\u0006\u0002\u0010.\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000*\u0018\b\u0002\u0010\u0006\"\b\u0012\u0004\u0012\u00020\b0\u00072\b\u0012\u0004\u0012\u00020\b0\u0007*\f\b\u0002\u0010/\"\u00020\b2\u00020\b¨\u00060"}, d2 = {"AssumePointerMoveStoppedMilliseconds", "", "DefaultWeight", "", "HistorySize", "HorizonMilliseconds", "Matrix", "", "", "Landroidx/compose/ui/input/pointer/util/Vector;", "rows", "cols", "(II)[[F", "calculateImpulseVelocity", "dataPoints", "time", "sampleCount", "isDataDifferential", "", "kineticEnergyToVelocity", "kineticEnergy", "polyFitLeastSquares", ViewHierarchyNode.JsonKeys.X, ViewHierarchyNode.JsonKeys.Y, "degree", "coefficients", "addPointerInputChange", "", "Landroidx/compose/ui/input/pointer/util/VelocityTracker;", NotificationCompat.CATEGORY_EVENT, "Landroidx/compose/ui/input/pointer/PointerInputChange;", "dot", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "get", "Landroidx/compose/ui/input/pointer/util/Matrix;", "row", "col", "([[FII)F", "norm", "set", "value", "([[FIIF)V", "Landroidx/compose/ui/input/pointer/util/DataPointAtTime;", "index", "", "dataPoint", "([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V", "Vector", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VelocityTrackerKt {
    private static final int AssumePointerMoveStoppedMilliseconds = 40;
    private static final float DefaultWeight = 1.0f;
    private static final int HistorySize = 20;
    private static final int HorizonMilliseconds = 100;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void set(DataPointAtTime[] dataPointAtTimeArr, int i, long j, float f) {
        DataPointAtTime dataPointAtTime = dataPointAtTimeArr[i];
        if (dataPointAtTime == null) {
            dataPointAtTimeArr[i] = new DataPointAtTime(j, f);
        } else {
            dataPointAtTime.setTime(j);
            dataPointAtTime.setDataPoint(f);
        }
    }

    public static final void addPointerInputChange(VelocityTracker velocityTracker, PointerInputChange event) {
        Intrinsics.checkNotNullParameter(velocityTracker, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        if (PointerEventKt.changedToDownIgnoreConsumed(event)) {
            velocityTracker.m3852setCurrentPointerPositionAccumulatork4lQ0M$ui_release(event.getPosition());
            velocityTracker.resetTracking();
        }
        long previousPosition = event.getPreviousPosition();
        List<HistoricalChange> historical = event.getHistorical();
        int size = historical.size();
        int i = 0;
        while (i < size) {
            HistoricalChange historicalChange = historical.get(i);
            long m2404minusMKHz9U = Offset.m2404minusMKHz9U(historicalChange.getPosition(), previousPosition);
            long position = historicalChange.getPosition();
            velocityTracker.m3852setCurrentPointerPositionAccumulatork4lQ0M$ui_release(Offset.m2405plusMKHz9U(velocityTracker.getCurrentPointerPositionAccumulator(), m2404minusMKHz9U));
            velocityTracker.m3849addPositionUv8p0NA(historicalChange.getUptimeMillis(), velocityTracker.getCurrentPointerPositionAccumulator());
            i++;
            previousPosition = position;
        }
        velocityTracker.m3852setCurrentPointerPositionAccumulatork4lQ0M$ui_release(Offset.m2405plusMKHz9U(velocityTracker.getCurrentPointerPositionAccumulator(), Offset.m2404minusMKHz9U(event.getPosition(), previousPosition)));
        velocityTracker.m3849addPositionUv8p0NA(event.getUptimeMillis(), velocityTracker.getCurrentPointerPositionAccumulator());
    }

    public static /* synthetic */ float[] polyFitLeastSquares$default(float[] fArr, float[] fArr2, int i, int i2, float[] fArr3, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            fArr3 = new float[RangesKt.coerceAtLeast(i2 + 1, 0)];
        }
        return polyFitLeastSquares(fArr, fArr2, i, i2, fArr3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculateImpulseVelocity(float[] fArr, float[] fArr2, int i, boolean z) {
        float f;
        float f2;
        float f3 = 0.0f;
        if (i < 2) {
            return 0.0f;
        }
        if (i == 2) {
            float f4 = fArr2[0];
            float f5 = fArr2[1];
            if (f4 == f5) {
                return 0.0f;
            }
            if (z) {
                f2 = fArr[0];
            } else {
                f2 = fArr[0] - fArr[1];
            }
            return f2 / (f4 - f5);
        }
        int i2 = i - 1;
        for (int i3 = i2; i3 > 0; i3--) {
            int i4 = i3 - 1;
            if (fArr2[i3] != fArr2[i4]) {
                float signum = Math.signum(f3) * ((float) Math.sqrt(2 * Math.abs(f3)));
                if (z) {
                    f = -fArr[i4];
                } else {
                    f = fArr[i3] - fArr[i4];
                }
                float f6 = f / (fArr2[i3] - fArr2[i4]);
                f3 += (f6 - signum) * Math.abs(f6);
                if (i3 == i2) {
                    f3 *= 0.5f;
                }
            }
        }
        return Math.signum(f3) * ((float) Math.sqrt(2 * Math.abs(f3)));
    }

    private static final float kineticEnergyToVelocity(float f) {
        return Math.signum(f) * ((float) Math.sqrt(2 * Math.abs(f)));
    }

    private static final float dot(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            f += fArr[i] * fArr2[i];
        }
        return f;
    }

    private static final float norm(float[] fArr) {
        return (float) Math.sqrt(dot(fArr, fArr));
    }

    private static final float[][] Matrix(int i, int i2) {
        float[][] fArr = new float[i];
        for (int i3 = 0; i3 < i; i3++) {
            fArr[i3] = new float[i2];
        }
        return fArr;
    }

    private static final float get(float[][] fArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        return fArr[i][i2];
    }

    private static final void set(float[][] fArr, int i, int i2, float f) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        fArr[i][i2] = f;
    }

    public static final float[] polyFitLeastSquares(float[] x, float[] y, int i, int i2, float[] coefficients) {
        int i3 = i2;
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(y, "y");
        Intrinsics.checkNotNullParameter(coefficients, "coefficients");
        if (i3 < 1) {
            throw new IllegalArgumentException("The degree must be at positive integer");
        }
        if (i == 0) {
            throw new IllegalArgumentException("At least one point must be provided");
        }
        if (i3 >= i) {
            i3 = i - 1;
        }
        int i4 = i3 + 1;
        float[][] fArr = new float[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            fArr[i5] = new float[i];
        }
        for (int i6 = 0; i6 < i; i6++) {
            fArr[0][i6] = 1.0f;
            for (int i7 = 1; i7 < i4; i7++) {
                fArr[i7][i6] = fArr[i7 - 1][i6] * x[i6];
            }
        }
        float[][] fArr2 = new float[i4];
        for (int i8 = 0; i8 < i4; i8++) {
            fArr2[i8] = new float[i];
        }
        float[][] fArr3 = new float[i4];
        for (int i9 = 0; i9 < i4; i9++) {
            fArr3[i9] = new float[i4];
        }
        int i10 = 0;
        while (i10 < i4) {
            float[] fArr4 = fArr2[i10];
            float[] fArr5 = fArr[i10];
            for (int i11 = 0; i11 < i; i11++) {
                fArr4[i11] = fArr5[i11];
            }
            for (int i12 = 0; i12 < i10; i12++) {
                float[] fArr6 = fArr2[i12];
                float dot = dot(fArr4, fArr6);
                for (int i13 = 0; i13 < i; i13++) {
                    fArr4[i13] = fArr4[i13] - (fArr6[i13] * dot);
                }
            }
            float sqrt = (float) Math.sqrt(dot(fArr4, fArr4));
            if (sqrt < 1.0E-6f) {
                throw new IllegalArgumentException("Vectors are linearly dependent or zero so no solution. TODO(shepshapard), actually determine what this means");
            }
            float f = 1.0f / sqrt;
            for (int i14 = 0; i14 < i; i14++) {
                fArr4[i14] = fArr4[i14] * f;
            }
            float[] fArr7 = fArr3[i10];
            int i15 = 0;
            while (i15 < i4) {
                fArr7[i15] = i15 < i10 ? 0.0f : dot(fArr4, fArr[i15]);
                i15++;
            }
            i10++;
        }
        for (int i16 = i3; -1 < i16; i16--) {
            coefficients[i16] = dot(fArr2[i16], y);
            int i17 = i16 + 1;
            if (i17 <= i3) {
                int i18 = i3;
                while (true) {
                    coefficients[i16] = coefficients[i16] - (fArr3[i16][i18] * coefficients[i18]);
                    if (i18 != i17) {
                        i18--;
                    }
                }
            }
            coefficients[i16] = coefficients[i16] / fArr3[i16][i16];
        }
        return coefficients;
    }
}
