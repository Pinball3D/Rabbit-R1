package com.google.zxing.client.result;

import com.google.zxing.Result;

/* loaded from: classes3.dex */
public final class AddressBookDoCoMoResultParser extends AbstractDoCoMoResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String[] matchDoCoMoPrefixedField;
        String massagedText = getMassagedText(result);
        if (!massagedText.startsWith("MECARD:") || (matchDoCoMoPrefixedField = matchDoCoMoPrefixedField("N:", massagedText)) == null) {
            return null;
        }
        String parseName = parseName(matchDoCoMoPrefixedField[0]);
        String matchSingleDoCoMoPrefixedField = matchSingleDoCoMoPrefixedField("SOUND:", massagedText, true);
        String[] matchDoCoMoPrefixedField2 = matchDoCoMoPrefixedField("TEL:", massagedText);
        String[] matchDoCoMoPrefixedField3 = matchDoCoMoPrefixedField("EMAIL:", massagedText);
        String matchSingleDoCoMoPrefixedField2 = matchSingleDoCoMoPrefixedField("NOTE:", massagedText, false);
        String[] matchDoCoMoPrefixedField4 = matchDoCoMoPrefixedField("ADR:", massagedText);
        String matchSingleDoCoMoPrefixedField3 = matchSingleDoCoMoPrefixedField("BDAY:", massagedText, true);
        return new AddressBookParsedResult(maybeWrap(parseName), null, matchSingleDoCoMoPrefixedField, matchDoCoMoPrefixedField2, null, matchDoCoMoPrefixedField3, null, null, matchSingleDoCoMoPrefixedField2, matchDoCoMoPrefixedField4, null, matchSingleDoCoMoPrefixedField("ORG:", massagedText, true), !isStringOfDigits(matchSingleDoCoMoPrefixedField3, 8) ? null : matchSingleDoCoMoPrefixedField3, null, matchDoCoMoPrefixedField("URL:", massagedText), null);
    }

    private static String parseName(String str) {
        int indexOf = str.indexOf(44);
        return indexOf >= 0 ? str.substring(indexOf + 1) + ' ' + str.substring(0, indexOf) : str;
    }
}
