package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes2.dex */
public final class Track {
    public static final int TRANSFORMATION_CEA608_CDAT = 1;
    public static final int TRANSFORMATION_NONE = 0;
    public final long durationUs;
    public final long[] editListDurations;
    public final long[] editListMediaTimes;
    public final Format format;
    public final int id;
    public final long movieTimescale;
    public final int nalUnitLengthFieldLength;
    private final TrackEncryptionBox[] sampleDescriptionEncryptionBoxes;
    public final int sampleTransformation;
    public final long timescale;
    public final int type;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface Transformation {
    }

    public Track(int i, int i2, long j, long j2, long j3, Format format, int i3, TrackEncryptionBox[] trackEncryptionBoxArr, int i4, long[] jArr, long[] jArr2) {
        this.id = i;
        this.type = i2;
        this.timescale = j;
        this.movieTimescale = j2;
        this.durationUs = j3;
        this.format = format;
        this.sampleTransformation = i3;
        this.sampleDescriptionEncryptionBoxes = trackEncryptionBoxArr;
        this.nalUnitLengthFieldLength = i4;
        this.editListDurations = jArr;
        this.editListMediaTimes = jArr2;
    }

    public TrackEncryptionBox getSampleDescriptionEncryptionBox(int i) {
        TrackEncryptionBox[] trackEncryptionBoxArr = this.sampleDescriptionEncryptionBoxes;
        if (trackEncryptionBoxArr == null) {
            return null;
        }
        return trackEncryptionBoxArr[i];
    }

    public Track copyWithFormat(Format format) {
        return new Track(this.id, this.type, this.timescale, this.movieTimescale, this.durationUs, format, this.sampleTransformation, this.sampleDescriptionEncryptionBoxes, this.nalUnitLengthFieldLength, this.editListDurations, this.editListMediaTimes);
    }
}
