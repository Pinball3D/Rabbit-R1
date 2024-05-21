package androidx.compose.ui.layout;

import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.math.MathKt;

/* compiled from: AlignmentLine.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
/* synthetic */ class AlignmentLineKt$FirstBaseline$1 extends FunctionReferenceImpl implements Function2<Integer, Integer, Integer> {
    public static final AlignmentLineKt$FirstBaseline$1 INSTANCE = new AlignmentLineKt$FirstBaseline$1();

    AlignmentLineKt$FirstBaseline$1() {
        super(2, MathKt.class, MetricSummary.JsonKeys.MIN, "min(II)I", 1);
    }

    public final Integer invoke(int i, int i2) {
        return Integer.valueOf(Math.min(i, i2));
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Integer invoke(Integer num, Integer num2) {
        return invoke(num.intValue(), num2.intValue());
    }
}
