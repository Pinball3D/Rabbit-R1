package androidx.media3.common;

/* loaded from: classes2.dex */
public class MediaPeriodId {
    public final int adGroupIndex;
    public final int adIndexInAdGroup;
    public final int nextAdGroupIndex;
    public final Object periodUid;
    public final long windowSequenceNumber;

    public boolean isAd() {
        return this.adGroupIndex != -1;
    }

    public MediaPeriodId(Object obj) {
        this(obj, -1L);
    }

    public MediaPeriodId(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }

    public MediaPeriodId(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }

    public MediaPeriodId(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MediaPeriodId(MediaPeriodId mediaPeriodId) {
        this.periodUid = mediaPeriodId.periodUid;
        this.adGroupIndex = mediaPeriodId.adGroupIndex;
        this.adIndexInAdGroup = mediaPeriodId.adIndexInAdGroup;
        this.windowSequenceNumber = mediaPeriodId.windowSequenceNumber;
        this.nextAdGroupIndex = mediaPeriodId.nextAdGroupIndex;
    }

    private MediaPeriodId(Object obj, int i, int i2, long j, int i3) {
        this.periodUid = obj;
        this.adGroupIndex = i;
        this.adIndexInAdGroup = i2;
        this.windowSequenceNumber = j;
        this.nextAdGroupIndex = i3;
    }

    public MediaPeriodId copyWithPeriodUid(Object obj) {
        return this.periodUid.equals(obj) ? this : new MediaPeriodId(obj, this.adGroupIndex, this.adIndexInAdGroup, this.windowSequenceNumber, this.nextAdGroupIndex);
    }

    public MediaPeriodId copyWithWindowSequenceNumber(long j) {
        return this.windowSequenceNumber == j ? this : new MediaPeriodId(this.periodUid, this.adGroupIndex, this.adIndexInAdGroup, j, this.nextAdGroupIndex);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaPeriodId)) {
            return false;
        }
        MediaPeriodId mediaPeriodId = (MediaPeriodId) obj;
        return this.periodUid.equals(mediaPeriodId.periodUid) && this.adGroupIndex == mediaPeriodId.adGroupIndex && this.adIndexInAdGroup == mediaPeriodId.adIndexInAdGroup && this.windowSequenceNumber == mediaPeriodId.windowSequenceNumber && this.nextAdGroupIndex == mediaPeriodId.nextAdGroupIndex;
    }

    public int hashCode() {
        return ((((((((527 + this.periodUid.hashCode()) * 31) + this.adGroupIndex) * 31) + this.adIndexInAdGroup) * 31) + ((int) this.windowSequenceNumber)) * 31) + this.nextAdGroupIndex;
    }
}
