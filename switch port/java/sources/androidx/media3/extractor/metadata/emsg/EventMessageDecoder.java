package androidx.media3.extractor.metadata.emsg;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class EventMessageDecoder extends SimpleMetadataDecoder {
    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    protected Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        return new Metadata(decode(new ParsableByteArray(byteBuffer.array(), byteBuffer.limit())));
    }

    public EventMessage decode(ParsableByteArray parsableByteArray) {
        return new EventMessage((String) Assertions.checkNotNull(parsableByteArray.readNullTerminatedString()), (String) Assertions.checkNotNull(parsableByteArray.readNullTerminatedString()), parsableByteArray.readLong(), parsableByteArray.readLong(), Arrays.copyOfRange(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArray.limit()));
    }
}
