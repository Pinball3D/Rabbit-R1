package androidx.media3.extractor.text.dvb;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import java.util.List;

/* loaded from: classes2.dex */
public final class DvbDecoder extends SimpleSubtitleDecoder {
    private final DvbParser parser;

    public DvbDecoder(List<byte[]> list) {
        super("DvbDecoder");
        ParsableByteArray parsableByteArray = new ParsableByteArray(list.get(0));
        this.parser = new DvbParser(parsableByteArray.readUnsignedShort(), parsableByteArray.readUnsignedShort());
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle decode(byte[] bArr, int i, boolean z) {
        if (z) {
            this.parser.reset();
        }
        return new DvbSubtitle(this.parser.decode(bArr, i));
    }
}
