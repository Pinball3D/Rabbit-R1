package com.google.android.exoplayer2.text.dvb;

import com.google.android.exoplayer2.text.SimpleSubtitleDecoder;
import com.google.android.exoplayer2.text.Subtitle;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.List;

/* loaded from: classes2.dex */
public final class DvbDecoder extends SimpleSubtitleDecoder {
    private final DvbParser parser;

    public DvbDecoder(List<byte[]> list) {
        super("DvbDecoder");
        ParsableByteArray parsableByteArray = new ParsableByteArray(list.get(0));
        this.parser = new DvbParser(parsableByteArray.readUnsignedShort(), parsableByteArray.readUnsignedShort());
    }

    @Override // com.google.android.exoplayer2.text.SimpleSubtitleDecoder
    protected Subtitle decode(byte[] bArr, int i, boolean z) {
        if (z) {
            this.parser.reset();
        }
        return new DvbSubtitle(this.parser.decode(bArr, i));
    }
}
