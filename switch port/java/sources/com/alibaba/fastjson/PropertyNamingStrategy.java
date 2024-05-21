package com.alibaba.fastjson;

/* loaded from: classes2.dex */
public enum PropertyNamingStrategy {
    CamelCase,
    PascalCase,
    SnakeCase,
    KebabCase;

    /* renamed from: com.alibaba.fastjson.PropertyNamingStrategy$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;

        static {
            int[] iArr = new int[PropertyNamingStrategy.values().length];
            $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy = iArr;
            try {
                iArr[PropertyNamingStrategy.SnakeCase.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[PropertyNamingStrategy.KebabCase.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[PropertyNamingStrategy.PascalCase.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[PropertyNamingStrategy.CamelCase.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public String translate(String str) {
        char charAt;
        int i = AnonymousClass1.$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy[ordinal()];
        int i2 = 0;
        if (i == 1) {
            StringBuilder sb = new StringBuilder();
            while (i2 < str.length()) {
                char charAt2 = str.charAt(i2);
                if (charAt2 >= 'A' && charAt2 <= 'Z') {
                    char c = (char) (charAt2 + ' ');
                    if (i2 > 0) {
                        sb.append('_');
                    }
                    sb.append(c);
                } else {
                    sb.append(charAt2);
                }
                i2++;
            }
            return sb.toString();
        }
        if (i == 2) {
            StringBuilder sb2 = new StringBuilder();
            while (i2 < str.length()) {
                char charAt3 = str.charAt(i2);
                if (charAt3 >= 'A' && charAt3 <= 'Z') {
                    char c2 = (char) (charAt3 + ' ');
                    if (i2 > 0) {
                        sb2.append('-');
                    }
                    sb2.append(c2);
                } else {
                    sb2.append(charAt3);
                }
                i2++;
            }
            return sb2.toString();
        }
        if (i != 3) {
            if (i != 4 || (charAt = str.charAt(0)) < 'A' || charAt > 'Z') {
                return str;
            }
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] + ' ');
            return new String(charArray);
        }
        char charAt4 = str.charAt(0);
        if (charAt4 < 'a' || charAt4 > 'z') {
            return str;
        }
        char[] charArray2 = str.toCharArray();
        charArray2[0] = (char) (charArray2[0] - ' ');
        return new String(charArray2);
    }
}
