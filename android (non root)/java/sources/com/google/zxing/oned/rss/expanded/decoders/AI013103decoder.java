package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AI013103decoder extends AI013x0xDecoder {
    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected int checkWeight(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AI013103decoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected void addWeightCode(StringBuilder sb, int i) {
        sb.append("(3103)");
    }
}
