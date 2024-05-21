package com.google.thirdparty.publicsuffix;

/* loaded from: classes3.dex */
public enum PublicSuffixType {
    PRIVATE(':', ','),
    REGISTRY('!', '?');

    private final char innerNodeCode;
    private final char leafNodeCode;

    char getInnerNodeCode() {
        return this.innerNodeCode;
    }

    char getLeafNodeCode() {
        return this.leafNodeCode;
    }

    PublicSuffixType(char c, char c2) {
        this.innerNodeCode = c;
        this.leafNodeCode = c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PublicSuffixType fromCode(char c) {
        for (PublicSuffixType publicSuffixType : values()) {
            if (publicSuffixType.getInnerNodeCode() == c || publicSuffixType.getLeafNodeCode() == c) {
                return publicSuffixType;
            }
        }
        throw new IllegalArgumentException(new StringBuilder(38).append("No enum corresponding to given code: ").append(c).toString());
    }
}
