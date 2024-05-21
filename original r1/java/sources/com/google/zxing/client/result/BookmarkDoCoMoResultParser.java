package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes3.dex */
public final class BookmarkDoCoMoResultParser extends AbstractDoCoMoResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        String text = result.getText();
        if (!text.startsWith("MEBKM:")) {
            return null;
        }
        String matchSingleDoCoMoPrefixedField = matchSingleDoCoMoPrefixedField("TITLE:", text, true);
        String[] matchDoCoMoPrefixedField = matchDoCoMoPrefixedField("URL:", text);
        if (matchDoCoMoPrefixedField == null) {
            return null;
        }
        String str = matchDoCoMoPrefixedField[0];
        if (URIResultParser.isBasicallyValidURI(str)) {
            return new URIParsedResult(str, matchSingleDoCoMoPrefixedField);
        }
        return null;
    }
}
