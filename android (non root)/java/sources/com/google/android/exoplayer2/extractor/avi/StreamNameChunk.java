package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.util.ParsableByteArray;

/* loaded from: classes2.dex */
final class StreamNameChunk implements AviChunk {
    public final String name;

    @Override // com.google.android.exoplayer2.extractor.avi.AviChunk
    public int getType() {
        return 1852994675;
    }

    public static StreamNameChunk parseFrom(ParsableByteArray parsableByteArray) {
        return new StreamNameChunk(parsableByteArray.readString(parsableByteArray.bytesLeft()));
    }

    private StreamNameChunk(String str) {
        this.name = str;
    }
}
