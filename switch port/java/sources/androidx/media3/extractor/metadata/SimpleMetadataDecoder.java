package androidx.media3.extractor.metadata;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Assertions;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class SimpleMetadataDecoder implements MetadataDecoder {
    protected abstract Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer);

    @Override // androidx.media3.extractor.metadata.MetadataDecoder
    public final Metadata decode(MetadataInputBuffer metadataInputBuffer) {
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(metadataInputBuffer.data);
        Assertions.checkArgument(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (metadataInputBuffer.isDecodeOnly()) {
            return null;
        }
        return decode(metadataInputBuffer, byteBuffer);
    }
}
