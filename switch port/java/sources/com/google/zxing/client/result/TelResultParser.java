package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes3.dex */
public final class TelResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public TelParsedResult parse(Result result) {
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("tel:") && !massagedText.startsWith("TEL:")) {
            return null;
        }
        String str = massagedText.startsWith("TEL:") ? "tel:" + massagedText.substring(4) : massagedText;
        int indexOf = massagedText.indexOf(63, 4);
        return new TelParsedResult(indexOf < 0 ? massagedText.substring(4) : massagedText.substring(4, indexOf), str, null);
    }
}
