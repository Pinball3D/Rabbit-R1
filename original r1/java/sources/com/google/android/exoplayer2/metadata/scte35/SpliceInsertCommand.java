package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new Parcelable.Creator<SpliceInsertCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceInsertCommand[] newArray(int i) {
            return new SpliceInsertCommand[i];
        }
    };
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<ComponentSplice> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    private SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<ComponentSplice> list, boolean z5, long j4, int i, int i2, int i3) {
        this.spliceEventId = j;
        this.spliceEventCancelIndicator = z;
        this.outOfNetworkIndicator = z2;
        this.programSpliceFlag = z3;
        this.spliceImmediateFlag = z4;
        this.programSplicePts = j2;
        this.programSplicePlaybackPositionUs = j3;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z5;
        this.breakDurationUs = j4;
        this.uniqueProgramId = i;
        this.availNum = i2;
        this.availsExpected = i3;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(ComponentSplice.createFromParcel(parcel));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceInsertCommand parseFromSection(ParsableByteArray parsableByteArray, long j, TimestampAdjuster timestampAdjuster) {
        List list;
        boolean z;
        boolean z2;
        long j2;
        boolean z3;
        long j3;
        int i;
        int i2;
        int i3;
        boolean z4;
        boolean z5;
        long j4;
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        boolean z6 = (parsableByteArray.readUnsignedByte() & 128) != 0;
        List emptyList = Collections.emptyList();
        if (z6) {
            list = emptyList;
            z = false;
            z2 = false;
            j2 = -9223372036854775807L;
            z3 = false;
            j3 = -9223372036854775807L;
            i = 0;
            i2 = 0;
            i3 = 0;
            z4 = false;
        } else {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            boolean z7 = (readUnsignedByte & 128) != 0;
            boolean z8 = (readUnsignedByte & 64) != 0;
            boolean z9 = (readUnsignedByte & 32) != 0;
            boolean z10 = (readUnsignedByte & 16) != 0;
            long parseSpliceTime = (!z8 || z10) ? -9223372036854775807L : TimeSignalCommand.parseSpliceTime(parsableByteArray, j);
            if (!z8) {
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                ArrayList arrayList = new ArrayList(readUnsignedByte2);
                for (int i4 = 0; i4 < readUnsignedByte2; i4++) {
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    long parseSpliceTime2 = !z10 ? TimeSignalCommand.parseSpliceTime(parsableByteArray, j) : -9223372036854775807L;
                    arrayList.add(new ComponentSplice(readUnsignedByte3, parseSpliceTime2, timestampAdjuster.adjustTsTimestamp(parseSpliceTime2)));
                }
                emptyList = arrayList;
            }
            if (z9) {
                long readUnsignedByte4 = parsableByteArray.readUnsignedByte();
                boolean z11 = (128 & readUnsignedByte4) != 0;
                j4 = ((((readUnsignedByte4 & 1) << 32) | parsableByteArray.readUnsignedInt()) * 1000) / 90;
                z5 = z11;
            } else {
                z5 = false;
                j4 = -9223372036854775807L;
            }
            i = parsableByteArray.readUnsignedShort();
            z4 = z8;
            i2 = parsableByteArray.readUnsignedByte();
            i3 = parsableByteArray.readUnsignedByte();
            list = emptyList;
            long j5 = parseSpliceTime;
            z3 = z5;
            j3 = j4;
            z2 = z10;
            z = z7;
            j2 = j5;
        }
        return new SpliceInsertCommand(readUnsignedInt, z6, z, z4, z2, j2, timestampAdjuster.adjustTsTimestamp(j2), list, z3, j3, i, i2, i3);
    }

    /* loaded from: classes2.dex */
    public static final class ComponentSplice {
        public final long componentSplicePlaybackPositionUs;
        public final long componentSplicePts;
        public final int componentTag;

        private ComponentSplice(int i, long j, long j2) {
            this.componentTag = i;
            this.componentSplicePts = j;
            this.componentSplicePlaybackPositionUs = j2;
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.componentTag);
            parcel.writeLong(this.componentSplicePts);
            parcel.writeLong(this.componentSplicePlaybackPositionUs);
        }

        public static ComponentSplice createFromParcel(Parcel parcel) {
            return new ComponentSplice(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.componentSpliceList.get(i2).writeToParcel(parcel);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }
}
