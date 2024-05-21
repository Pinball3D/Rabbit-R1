package com.google.zxing.oned;

import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;

/* loaded from: classes3.dex */
final class UPCEANExtensionSupport {
    private static final int[] EXTENSION_START_PATTERN = {1, 1, 2};
    private final UPCEANExtension2Support twoSupport = new UPCEANExtension2Support();
    private final UPCEANExtension5Support fiveSupport = new UPCEANExtension5Support();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Result decodeRow(int i, BitArray bitArray, int i2) throws NotFoundException {
        int[] findGuardPattern = UPCEANReader.findGuardPattern(bitArray, i2, false, EXTENSION_START_PATTERN);
        try {
            return this.fiveSupport.decodeRow(i, bitArray, findGuardPattern);
        } catch (ReaderException unused) {
            return this.twoSupport.decodeRow(i, bitArray, findGuardPattern);
        }
    }
}
