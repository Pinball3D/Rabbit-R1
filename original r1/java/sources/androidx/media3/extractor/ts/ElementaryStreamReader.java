package androidx.media3.extractor.ts;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ts.TsPayloadReader;

/* loaded from: classes2.dex */
public interface ElementaryStreamReader {
    void consume(ParsableByteArray parsableByteArray) throws ParserException;

    void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator);

    void packetFinished();

    void packetStarted(long j, int i);

    void seek();
}
