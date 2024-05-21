package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.decoder.DecoderException;

/* loaded from: classes2.dex */
public interface Decoder<I, O, E extends DecoderException> {
    I dequeueInputBuffer() throws DecoderException;

    O dequeueOutputBuffer() throws DecoderException;

    void flush();

    String getName();

    void queueInputBuffer(I i) throws DecoderException;

    void release();
}
