package com.airbnb.lottie.network;

/* loaded from: classes2.dex */
public enum FileExtension {
    JSON(".json"),
    ZIP(".zip");

    public final String extension;

    @Override // java.lang.Enum
    public String toString() {
        return this.extension;
    }

    FileExtension(String str) {
        this.extension = str;
    }

    public String tempExtension() {
        return ".temp" + this.extension;
    }
}
