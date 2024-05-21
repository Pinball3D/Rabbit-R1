package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class Id3Peeker {
    private final ParsableByteArray scratch = new ParsableByteArray(10);

    public Metadata peekId3Data(ExtractorInput extractorInput, Id3Decoder.FramePredicate framePredicate) throws IOException {
        Metadata metadata = null;
        int i = 0;
        while (true) {
            try {
                extractorInput.peekFully(this.scratch.getData(), 0, 10);
                this.scratch.setPosition(0);
                if (this.scratch.readUnsignedInt24() != 4801587) {
                    break;
                }
                this.scratch.skipBytes(3);
                int readSynchSafeInt = this.scratch.readSynchSafeInt();
                int i2 = readSynchSafeInt + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.scratch.getData(), 0, bArr, 0, 10);
                    extractorInput.peekFully(bArr, 10, readSynchSafeInt);
                    metadata = new Id3Decoder(framePredicate).decode(bArr, i2);
                } else {
                    extractorInput.advancePeekPosition(readSynchSafeInt);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        return metadata;
    }
}
