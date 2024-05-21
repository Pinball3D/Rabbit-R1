package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
final class SimpleToken extends Token {
    private final short bitCount;
    private final short value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleToken(Token token, int i, int i2) {
        super(token);
        this.value = (short) i;
        this.bitCount = (short) i2;
    }

    @Override // com.google.zxing.aztec.encoder.Token
    void appendTo(BitArray bitArray, byte[] bArr) {
        bitArray.appendBits(this.value, this.bitCount);
    }

    public String toString() {
        short s = this.value;
        short s2 = this.bitCount;
        return "<" + Integer.toBinaryString((1 << this.bitCount) | (s & ((1 << s2) - 1)) | (1 << s2)).substring(1) + Typography.greater;
    }
}
