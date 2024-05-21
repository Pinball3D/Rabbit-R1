package org.webrtc;

import java.util.Locale;

/* loaded from: classes3.dex */
public class SessionDescription {
    public final String description;
    public final Type type;

    String getDescription() {
        return this.description;
    }

    /* loaded from: classes3.dex */
    public enum Type {
        OFFER,
        PRANSWER,
        ANSWER,
        ROLLBACK;

        public String canonicalForm() {
            return name().toLowerCase(Locale.US);
        }

        public static Type fromCanonicalForm(String str) {
            return (Type) valueOf(Type.class, str.toUpperCase(Locale.US));
        }
    }

    public SessionDescription(Type type, String str) {
        this.type = type;
        this.description = str;
    }

    String getTypeInCanonicalForm() {
        return this.type.canonicalForm();
    }
}
