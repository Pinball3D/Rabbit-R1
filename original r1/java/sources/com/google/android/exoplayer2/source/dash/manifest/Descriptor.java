package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public final class Descriptor {
    public final String id;
    public final String schemeIdUri;
    public final String value;

    public Descriptor(String str, String str2, String str3) {
        this.schemeIdUri = str;
        this.value = str2;
        this.id = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Descriptor descriptor = (Descriptor) obj;
        return Util.areEqual(this.schemeIdUri, descriptor.schemeIdUri) && Util.areEqual(this.value, descriptor.value) && Util.areEqual(this.id, descriptor.id);
    }

    public int hashCode() {
        int hashCode = this.schemeIdUri.hashCode() * 31;
        String str = this.value;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.id;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
