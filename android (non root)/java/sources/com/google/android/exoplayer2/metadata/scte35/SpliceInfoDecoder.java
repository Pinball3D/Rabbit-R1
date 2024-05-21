package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataInputBuffer;
import com.google.android.exoplayer2.metadata.SimpleMetadataDecoder;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class SpliceInfoDecoder extends SimpleMetadataDecoder {
    private static final int TYPE_PRIVATE_COMMAND = 255;
    private static final int TYPE_SPLICE_INSERT = 5;
    private static final int TYPE_SPLICE_NULL = 0;
    private static final int TYPE_SPLICE_SCHEDULE = 4;
    private static final int TYPE_TIME_SIGNAL = 6;
    private final ParsableByteArray sectionData = new ParsableByteArray();
    private final ParsableBitArray sectionHeader = new ParsableBitArray();
    private TimestampAdjuster timestampAdjuster;

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    protected Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        Metadata.Entry spliceNullCommand;
        if (this.timestampAdjuster == null || metadataInputBuffer.subsampleOffsetUs != this.timestampAdjuster.getTimestampOffsetUs()) {
            TimestampAdjuster timestampAdjuster = new TimestampAdjuster(metadataInputBuffer.timeUs);
            this.timestampAdjuster = timestampAdjuster;
            timestampAdjuster.adjustSampleTimestamp(metadataInputBuffer.timeUs - metadataInputBuffer.subsampleOffsetUs);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.sectionData.reset(array, limit);
        this.sectionHeader.reset(array, limit);
        this.sectionHeader.skipBits(39);
        long readBits = (this.sectionHeader.readBits(1) << 32) | this.sectionHeader.readBits(32);
        this.sectionHeader.skipBits(20);
        int readBits2 = this.sectionHeader.readBits(12);
        int readBits3 = this.sectionHeader.readBits(8);
        this.sectionData.skipBytes(14);
        if (readBits3 == 0) {
            spliceNullCommand = new SpliceNullCommand();
        } else if (readBits3 == 255) {
            spliceNullCommand = PrivateCommand.parseFromSection(this.sectionData, readBits2, readBits);
        } else if (readBits3 == 4) {
            spliceNullCommand = SpliceScheduleCommand.parseFromSection(this.sectionData);
        } else if (readBits3 == 5) {
            spliceNullCommand = SpliceInsertCommand.parseFromSection(this.sectionData, readBits, this.timestampAdjuster);
        } else {
            spliceNullCommand = readBits3 != 6 ? null : TimeSignalCommand.parseFromSection(this.sectionData, readBits, this.timestampAdjuster);
        }
        return spliceNullCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(spliceNullCommand);
    }
}
