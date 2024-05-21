package androidx.profileinstaller;

/* loaded from: classes2.dex */
enum FileSectionType {
    DEX_FILES(0),
    EXTRA_DESCRIPTORS(1),
    CLASSES(2),
    METHODS(3),
    AGGREGATION_COUNT(4);

    private final long mValue;

    public long getValue() {
        return this.mValue;
    }

    FileSectionType(long j) {
        this.mValue = j;
    }

    static FileSectionType fromValue(long j) {
        FileSectionType[] values = values();
        for (int i = 0; i < values.length; i++) {
            if (values[i].getValue() == j) {
                return values[i];
            }
        }
        throw new IllegalArgumentException("Unsupported FileSection Type " + j);
    }
}
