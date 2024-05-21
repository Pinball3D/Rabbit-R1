package kotlin.math;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.comparisons.UComparisonsKt;

/* compiled from: UMath.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b\u0004\u0010\u0005\u001a \u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b¢\u0006\u0004\b\u0007\u0010\b\u001a \u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b\n\u0010\u0005\u001a \u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0087\b¢\u0006\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {MetricSummary.JsonKeys.MAX, "Lkotlin/UInt;", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "max-J1ME1BU", "(II)I", "Lkotlin/ULong;", "max-eb3DHEI", "(JJ)J", MetricSummary.JsonKeys.MIN, "min-J1ME1BU", "min-eb3DHEI", "kotlin-stdlib"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UMathKt {
    /* renamed from: min-J1ME1BU, reason: not valid java name */
    private static final int m6911minJ1ME1BU(int i, int i2) {
        return UComparisonsKt.m6893minOfJ1ME1BU(i, i2);
    }

    /* renamed from: min-eb3DHEI, reason: not valid java name */
    private static final long m6912mineb3DHEI(long j, long j2) {
        return UComparisonsKt.m6901minOfeb3DHEI(j, j2);
    }

    /* renamed from: max-J1ME1BU, reason: not valid java name */
    private static final int m6909maxJ1ME1BU(int i, int i2) {
        return UComparisonsKt.m6881maxOfJ1ME1BU(i, i2);
    }

    /* renamed from: max-eb3DHEI, reason: not valid java name */
    private static final long m6910maxeb3DHEI(long j, long j2) {
        return UComparisonsKt.m6889maxOfeb3DHEI(j, j2);
    }
}
