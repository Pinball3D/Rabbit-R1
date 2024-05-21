package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.util.Assertions;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class SimpleMetadataDecoder implements MetadataDecoder {
    protected abstract Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer);

    @Override // com.google.android.exoplayer2.metadata.MetadataDecoder
    public final Metadata decode(MetadataInputBuffer metadataInputBuffer) {
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(metadataInputBuffer.data);
        Assertions.checkArgument(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (metadataInputBuffer.isDecodeOnly()) {
            return null;
        }
        return decode(metadataInputBuffer, byteBuffer);
    }
}
