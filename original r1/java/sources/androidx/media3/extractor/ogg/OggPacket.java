package androidx.media3.extractor.ogg;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorUtil;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class OggPacket {
    private boolean populated;
    private int segmentCount;
    private final OggPageHeader pageHeader = new OggPageHeader();
    private final ParsableByteArray packetArray = new ParsableByteArray(new byte[65025], 0);
    private int currentSegmentIndex = -1;

    public OggPageHeader getPageHeader() {
        return this.pageHeader;
    }

    public ParsableByteArray getPayload() {
        return this.packetArray;
    }

    public void reset() {
        this.pageHeader.reset();
        this.packetArray.reset(0);
        this.currentSegmentIndex = -1;
        this.populated = false;
    }

    public boolean populate(ExtractorInput extractorInput) throws IOException {
        int i;
        Assertions.checkState(extractorInput != null);
        if (this.populated) {
            this.populated = false;
            this.packetArray.reset(0);
        }
        while (!this.populated) {
            if (this.currentSegmentIndex < 0) {
                if (!this.pageHeader.skipToNextPage(extractorInput) || !this.pageHeader.populate(extractorInput, true)) {
                    return false;
                }
                int i2 = this.pageHeader.headerSize;
                if ((this.pageHeader.type & 1) == 1 && this.packetArray.limit() == 0) {
                    i2 += calculatePacketSize(0);
                    i = this.segmentCount;
                } else {
                    i = 0;
                }
                if (!ExtractorUtil.skipFullyQuietly(extractorInput, i2)) {
                    return false;
                }
                this.currentSegmentIndex = i;
            }
            int calculatePacketSize = calculatePacketSize(this.currentSegmentIndex);
            int i3 = this.currentSegmentIndex + this.segmentCount;
            if (calculatePacketSize > 0) {
                ParsableByteArray parsableByteArray = this.packetArray;
                parsableByteArray.ensureCapacity(parsableByteArray.limit() + calculatePacketSize);
                if (!ExtractorUtil.readFullyQuietly(extractorInput, this.packetArray.getData(), this.packetArray.limit(), calculatePacketSize)) {
                    return false;
                }
                ParsableByteArray parsableByteArray2 = this.packetArray;
                parsableByteArray2.setLimit(parsableByteArray2.limit() + calculatePacketSize);
                this.populated = this.pageHeader.laces[i3 + (-1)] != 255;
            }
            if (i3 == this.pageHeader.pageSegmentCount) {
                i3 = -1;
            }
            this.currentSegmentIndex = i3;
        }
        return true;
    }

    public void trimPayload() {
        if (this.packetArray.getData().length == 65025) {
            return;
        }
        ParsableByteArray parsableByteArray = this.packetArray;
        parsableByteArray.reset(Arrays.copyOf(parsableByteArray.getData(), Math.max(65025, this.packetArray.limit())), this.packetArray.limit());
    }

    private int calculatePacketSize(int i) {
        int i2 = 0;
        this.segmentCount = 0;
        while (this.segmentCount + i < this.pageHeader.pageSegmentCount) {
            int[] iArr = this.pageHeader.laces;
            int i3 = this.segmentCount;
            this.segmentCount = i3 + 1;
            int i4 = iArr[i3 + i];
            i2 += i4;
            if (i4 != 255) {
                break;
            }
        }
        return i2;
    }
}
