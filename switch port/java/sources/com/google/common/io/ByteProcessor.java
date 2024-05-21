package com.google.common.io;

import com.google.errorprone.annotations.DoNotMock;
import java.io.IOException;

@ElementTypesAreNonnullByDefault
@DoNotMock("Implement it normally")
/* loaded from: classes3.dex */
public interface ByteProcessor<T> {
    @ParametricNullness
    T getResult();

    boolean processBytes(byte[] bArr, int i, int i2) throws IOException;
}
