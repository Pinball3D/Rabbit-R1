package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AnyAIDecoder extends AbstractExpandedDecoder {
    private static final int HEADER_SIZE = 5;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnyAIDecoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() throws NotFoundException, FormatException {
        return getGeneralDecoder().decodeAllCodes(new StringBuilder(), 5);
    }
}
