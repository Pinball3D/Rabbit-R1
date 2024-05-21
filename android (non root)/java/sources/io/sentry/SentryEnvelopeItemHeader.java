package io.sentry;

import io.sentry.util.Objects;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class SentryEnvelopeItemHeader implements JsonSerializable, JsonUnknown {
    private final String attachmentType;
    private final String contentType;
    private final String fileName;
    private final Callable<Integer> getLength;
    private final int length;
    private final SentryItemType type;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String ATTACHMENT_TYPE = "attachment_type";
        public static final String CONTENT_TYPE = "content_type";
        public static final String FILENAME = "filename";
        public static final String LENGTH = "length";
        public static final String TYPE = "type";
    }

    public String getAttachmentType() {
        return this.attachmentType;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getFileName() {
        return this.fileName;
    }

    public SentryItemType getType() {
        return this.type;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public int getLength() {
        Callable<Integer> callable = this.getLength;
        if (callable == null) {
            return this.length;
        }
        try {
            return callable.call().intValue();
        } catch (Throwable unused) {
            return -1;
        }
    }

    public SentryEnvelopeItemHeader(SentryItemType sentryItemType, int i, String str, String str2, String str3) {
        this.type = (SentryItemType) Objects.requireNonNull(sentryItemType, "type is required");
        this.contentType = str;
        this.length = i;
        this.fileName = str2;
        this.getLength = null;
        this.attachmentType = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SentryEnvelopeItemHeader(SentryItemType sentryItemType, Callable<Integer> callable, String str, String str2, String str3) {
        this.type = (SentryItemType) Objects.requireNonNull(sentryItemType, "type is required");
        this.contentType = str;
        this.length = -1;
        this.fileName = str2;
        this.getLength = callable;
        this.attachmentType = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SentryEnvelopeItemHeader(SentryItemType sentryItemType, Callable<Integer> callable, String str, String str2) {
        this(sentryItemType, callable, str, str2, (String) null);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.contentType != null) {
            objectWriter.name(JsonKeys.CONTENT_TYPE).value(this.contentType);
        }
        if (this.fileName != null) {
            objectWriter.name("filename").value(this.fileName);
        }
        objectWriter.name("type").value(iLogger, this.type);
        if (this.attachmentType != null) {
            objectWriter.name(JsonKeys.ATTACHMENT_TYPE).value(this.attachmentType);
        }
        objectWriter.name(JsonKeys.LENGTH).value(getLength());
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.unknown.get(str);
                objectWriter.name(str);
                objectWriter.value(iLogger, obj);
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SentryEnvelopeItemHeader> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0066 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x006c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0079 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0085 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x005b A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.SentryEnvelopeItemHeader deserialize(io.sentry.JsonObjectReader r12, io.sentry.ILogger r13) throws java.lang.Exception {
            /*
                r11 = this;
                r12.beginObject()
                r0 = 0
                r1 = 0
                r3 = r0
                r5 = r3
                r6 = r5
                r7 = r6
                r4 = r1
            La:
                io.sentry.vendor.gson.stream.JsonToken r2 = r12.peek()
                io.sentry.vendor.gson.stream.JsonToken r8 = io.sentry.vendor.gson.stream.JsonToken.NAME
                java.lang.String r9 = "type"
                if (r2 != r8) goto L8a
                java.lang.String r2 = r12.nextName()
                r2.hashCode()
                int r8 = r2.hashCode()
                r10 = -1
                switch(r8) {
                    case -1106363674: goto L4e;
                    case -734768633: goto L43;
                    case -672977706: goto L38;
                    case 3575610: goto L2f;
                    case 831846208: goto L24;
                    default: goto L23;
                }
            L23:
                goto L58
            L24:
                java.lang.String r8 = "content_type"
                boolean r8 = r2.equals(r8)
                if (r8 != 0) goto L2d
                goto L58
            L2d:
                r10 = 4
                goto L58
            L2f:
                boolean r8 = r2.equals(r9)
                if (r8 != 0) goto L36
                goto L58
            L36:
                r10 = 3
                goto L58
            L38:
                java.lang.String r8 = "attachment_type"
                boolean r8 = r2.equals(r8)
                if (r8 != 0) goto L41
                goto L58
            L41:
                r10 = 2
                goto L58
            L43:
                java.lang.String r8 = "filename"
                boolean r8 = r2.equals(r8)
                if (r8 != 0) goto L4c
                goto L58
            L4c:
                r10 = 1
                goto L58
            L4e:
                java.lang.String r8 = "length"
                boolean r8 = r2.equals(r8)
                if (r8 != 0) goto L57
                goto L58
            L57:
                r10 = r1
            L58:
                switch(r10) {
                    case 0: goto L85;
                    case 1: goto L7f;
                    case 2: goto L79;
                    case 3: goto L6c;
                    case 4: goto L66;
                    default: goto L5b;
                }
            L5b:
                if (r0 != 0) goto L62
                java.util.HashMap r0 = new java.util.HashMap
                r0.<init>()
            L62:
                r12.nextUnknown(r13, r0, r2)
                goto La
            L66:
                java.lang.String r2 = r12.nextStringOrNull()
                r5 = r2
                goto La
            L6c:
                io.sentry.SentryItemType$Deserializer r2 = new io.sentry.SentryItemType$Deserializer
                r2.<init>()
                java.lang.Object r2 = r12.nextOrNull(r13, r2)
                io.sentry.SentryItemType r2 = (io.sentry.SentryItemType) r2
                r3 = r2
                goto La
            L79:
                java.lang.String r2 = r12.nextStringOrNull()
                r7 = r2
                goto La
            L7f:
                java.lang.String r2 = r12.nextStringOrNull()
                r6 = r2
                goto La
            L85:
                int r4 = r12.nextInt()
                goto La
            L8a:
                if (r3 == 0) goto L99
                io.sentry.SentryEnvelopeItemHeader r11 = new io.sentry.SentryEnvelopeItemHeader
                r2 = r11
                r2.<init>(r3, r4, r5, r6, r7)
                r11.setUnknown(r0)
                r12.endObject()
                return r11
            L99:
                java.lang.Exception r11 = r11.missingRequiredFieldException(r9, r13)
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.SentryEnvelopeItemHeader.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.SentryEnvelopeItemHeader");
        }

        private Exception missingRequiredFieldException(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.log(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }
    }
}
