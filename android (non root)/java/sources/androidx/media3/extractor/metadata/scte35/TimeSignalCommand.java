package androidx.media3.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;

/* loaded from: classes2.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new Parcelable.Creator<TimeSignalCommand>() { // from class: androidx.media3.extractor.metadata.scte35.TimeSignalCommand.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TimeSignalCommand[] newArray(int i) {
            return new TimeSignalCommand[i];
        }
    };
    public final long playbackPositionUs;
    public final long ptsTime;

    private TimeSignalCommand(long j, long j2) {
        this.ptsTime = j;
        this.playbackPositionUs = j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TimeSignalCommand parseFromSection(ParsableByteArray parsableByteArray, long j, TimestampAdjuster timestampAdjuster) {
        long parseSpliceTime = parseSpliceTime(parsableByteArray, j);
        return new TimeSignalCommand(parseSpliceTime, timestampAdjuster.adjustTsTimestamp(parseSpliceTime));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long parseSpliceTime(ParsableByteArray parsableByteArray, long j) {
        long readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((128 & readUnsignedByte) != 0) {
            return 8589934591L & ((((readUnsignedByte & 1) << 32) | parsableByteArray.readUnsignedInt()) + j);
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public String toString() {
        return "SCTE-35 TimeSignalCommand { ptsTime=" + this.ptsTime + ", playbackPositionUs= " + this.playbackPositionUs + " }";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }
}
