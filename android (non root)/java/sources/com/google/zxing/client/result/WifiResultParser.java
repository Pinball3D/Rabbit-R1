package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes3.dex */
public final class WifiResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public WifiParsedResult parse(Result result) {
        String substring;
        String matchSinglePrefixedField;
        String str;
        boolean z;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("WIFI:") || (matchSinglePrefixedField = matchSinglePrefixedField("S:", (substring = massagedText.substring(5)), ';', false)) == null || matchSinglePrefixedField.isEmpty()) {
            return null;
        }
        String matchSinglePrefixedField2 = matchSinglePrefixedField("P:", substring, ';', false);
        String matchSinglePrefixedField3 = matchSinglePrefixedField("T:", substring, ';', false);
        if (matchSinglePrefixedField3 == null) {
            matchSinglePrefixedField3 = "nopass";
        }
        String str2 = matchSinglePrefixedField3;
        String matchSinglePrefixedField4 = matchSinglePrefixedField("PH2:", substring, ';', false);
        String matchSinglePrefixedField5 = matchSinglePrefixedField("H:", substring, ';', false);
        if (matchSinglePrefixedField5 == null) {
            str = matchSinglePrefixedField4;
        } else {
            if (matchSinglePrefixedField4 != null || "true".equalsIgnoreCase(matchSinglePrefixedField5) || "false".equalsIgnoreCase(matchSinglePrefixedField5)) {
                str = matchSinglePrefixedField4;
                z = Boolean.parseBoolean(matchSinglePrefixedField5);
                return new WifiParsedResult(str2, matchSinglePrefixedField, matchSinglePrefixedField2, z, matchSinglePrefixedField("I:", substring, ';', false), matchSinglePrefixedField("A:", substring, ';', false), matchSinglePrefixedField("E:", substring, ';', false), str);
            }
            str = matchSinglePrefixedField5;
        }
        z = false;
        return new WifiParsedResult(str2, matchSinglePrefixedField, matchSinglePrefixedField2, z, matchSinglePrefixedField("I:", substring, ';', false), matchSinglePrefixedField("A:", substring, ';', false), matchSinglePrefixedField("E:", substring, ';', false), str);
    }
}
