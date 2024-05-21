package com.google.android.exoplayer2.metadata.dvbsi;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataInputBuffer;
import com.google.android.exoplayer2.metadata.SimpleMetadataDecoder;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.common.base.Charsets;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class AppInfoTableDecoder extends SimpleMetadataDecoder {
    public static final int APPLICATION_INFORMATION_TABLE_ID = 116;
    private static final int DESCRIPTOR_SIMPLE_APPLICATION_LOCATION = 21;
    private static final int DESCRIPTOR_TRANSPORT_PROTOCOL = 2;
    private static final int TRANSPORT_PROTOCOL_HTTP = 3;

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    protected Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            return parseAit(new ParsableBitArray(byteBuffer.array(), byteBuffer.limit()));
        }
        return null;
    }

    private static Metadata parseAit(ParsableBitArray parsableBitArray) {
        parsableBitArray.skipBits(12);
        int bytePosition = (parsableBitArray.getBytePosition() + parsableBitArray.readBits(12)) - 4;
        parsableBitArray.skipBits(44);
        parsableBitArray.skipBytes(parsableBitArray.readBits(12));
        parsableBitArray.skipBits(16);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String str = null;
            if (parsableBitArray.getBytePosition() >= bytePosition) {
                break;
            }
            parsableBitArray.skipBits(48);
            int readBits = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(4);
            int bytePosition2 = parsableBitArray.getBytePosition() + parsableBitArray.readBits(12);
            String str2 = null;
            while (parsableBitArray.getBytePosition() < bytePosition2) {
                int readBits2 = parsableBitArray.readBits(8);
                int readBits3 = parsableBitArray.readBits(8);
                int bytePosition3 = parsableBitArray.getBytePosition() + readBits3;
                if (readBits2 == 2) {
                    int readBits4 = parsableBitArray.readBits(16);
                    parsableBitArray.skipBits(8);
                    if (readBits4 != 3) {
                    }
                    while (parsableBitArray.getBytePosition() < bytePosition3) {
                        str = parsableBitArray.readBytesAsString(parsableBitArray.readBits(8), Charsets.US_ASCII);
                        int readBits5 = parsableBitArray.readBits(8);
                        for (int i = 0; i < readBits5; i++) {
                            parsableBitArray.skipBytes(parsableBitArray.readBits(8));
                        }
                    }
                } else if (readBits2 == 21) {
                    str2 = parsableBitArray.readBytesAsString(readBits3, Charsets.US_ASCII);
                }
                parsableBitArray.setPosition(bytePosition3 * 8);
            }
            parsableBitArray.setPosition(bytePosition2 * 8);
            if (str != null && str2 != null) {
                arrayList.add(new AppInfoTable(readBits, str + str2));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }
}
