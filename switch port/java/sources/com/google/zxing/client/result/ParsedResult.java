package com.google.zxing.client.result;

/* loaded from: classes3.dex */
public abstract class ParsedResult {
    private final ParsedResultType type;

    public abstract String getDisplayResult();

    public final ParsedResultType getType() {
        return this.type;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ParsedResult(ParsedResultType parsedResultType) {
        this.type = parsedResultType;
    }

    public final String toString() {
        return getDisplayResult();
    }

    public static void maybeAppend(String str, StringBuilder sb) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append('\n');
        }
        sb.append(str);
    }

    public static void maybeAppend(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                maybeAppend(str, sb);
            }
        }
    }
}
