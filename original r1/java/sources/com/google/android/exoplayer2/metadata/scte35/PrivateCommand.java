package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new Parcelable.Creator<PrivateCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.PrivateCommand.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivateCommand[] newArray(int i) {
            return new PrivateCommand[i];
        }
    };
    public final byte[] commandBytes;
    public final long identifier;
    public final long ptsAdjustment;

    private PrivateCommand(long j, byte[] bArr, long j2) {
        this.ptsAdjustment = j2;
        this.identifier = j;
        this.commandBytes = bArr;
    }

    private PrivateCommand(Parcel parcel) {
        this.ptsAdjustment = parcel.readLong();
        this.identifier = parcel.readLong();
        this.commandBytes = (byte[]) Util.castNonNull(parcel.createByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PrivateCommand parseFromSection(ParsableByteArray parsableByteArray, int i, long j) {
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        parsableByteArray.readBytes(bArr, 0, i2);
        return new PrivateCommand(readUnsignedInt, bArr, j);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.ptsAdjustment);
        parcel.writeLong(this.identifier);
        parcel.writeByteArray(this.commandBytes);
    }
}
