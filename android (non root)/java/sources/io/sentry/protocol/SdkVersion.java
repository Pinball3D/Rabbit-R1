package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.util.Objects;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public final class SdkVersion implements JsonUnknown, JsonSerializable {
    private Set<String> deserializedIntegrations;
    private Set<SentryPackage> deserializedPackages;
    private String name;
    private Map<String, Object> unknown;
    private String version;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String INTEGRATIONS = "integrations";
        public static final String NAME = "name";
        public static final String PACKAGES = "packages";
        public static final String VERSION = "version";
    }

    public String getName() {
        return this.name;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getVersion() {
        return this.version;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public SdkVersion(String str, String str2) {
        this.name = (String) Objects.requireNonNull(str, "name is required.");
        this.version = (String) Objects.requireNonNull(str2, "version is required.");
    }

    public void setVersion(String str) {
        this.version = (String) Objects.requireNonNull(str, "version is required.");
    }

    public void setName(String str) {
        this.name = (String) Objects.requireNonNull(str, "name is required.");
    }

    public void addPackage(String str, String str2) {
        SentryIntegrationPackageStorage.getInstance().addPackage(str, str2);
    }

    public void addIntegration(String str) {
        SentryIntegrationPackageStorage.getInstance().addIntegration(str);
    }

    @Deprecated
    public List<SentryPackage> getPackages() {
        Set<SentryPackage> set = this.deserializedPackages;
        if (set == null) {
            set = SentryIntegrationPackageStorage.getInstance().getPackages();
        }
        return new CopyOnWriteArrayList(set);
    }

    public Set<SentryPackage> getPackageSet() {
        Set<SentryPackage> set = this.deserializedPackages;
        return set != null ? set : SentryIntegrationPackageStorage.getInstance().getPackages();
    }

    @Deprecated
    public List<String> getIntegrations() {
        Set<String> set = this.deserializedIntegrations;
        if (set == null) {
            set = SentryIntegrationPackageStorage.getInstance().getIntegrations();
        }
        return new CopyOnWriteArrayList(set);
    }

    public Set<String> getIntegrationSet() {
        Set<String> set = this.deserializedIntegrations;
        return set != null ? set : SentryIntegrationPackageStorage.getInstance().getIntegrations();
    }

    public static SdkVersion updateSdkVersion(SdkVersion sdkVersion, String str, String str2) {
        Objects.requireNonNull(str, "name is required.");
        Objects.requireNonNull(str2, "version is required.");
        if (sdkVersion == null) {
            return new SdkVersion(str, str2);
        }
        sdkVersion.setName(str);
        sdkVersion.setVersion(str2);
        return sdkVersion;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SdkVersion sdkVersion = (SdkVersion) obj;
        return this.name.equals(sdkVersion.name) && this.version.equals(sdkVersion.version);
    }

    public int hashCode() {
        return Objects.hash(this.name, this.version);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("name").value(this.name);
        objectWriter.name("version").value(this.version);
        Set<SentryPackage> packageSet = getPackageSet();
        Set<String> integrationSet = getIntegrationSet();
        if (!packageSet.isEmpty()) {
            objectWriter.name(JsonKeys.PACKAGES).value(iLogger, packageSet);
        }
        if (!integrationSet.isEmpty()) {
            objectWriter.name(JsonKeys.INTEGRATIONS).value(iLogger, integrationSet);
        }
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                objectWriter.name(str).value(iLogger, this.unknown.get(str));
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SdkVersion> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0061 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x006d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x007c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0081 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0056 A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.protocol.SdkVersion deserialize(io.sentry.JsonObjectReader r8, io.sentry.ILogger r9) throws java.lang.Exception {
            /*
                r7 = this;
                java.util.ArrayList r7 = new java.util.ArrayList
                r7.<init>()
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r8.beginObject()
                r1 = 0
                r2 = r1
                r3 = r2
            L10:
                io.sentry.vendor.gson.stream.JsonToken r4 = r8.peek()
                io.sentry.vendor.gson.stream.JsonToken r5 = io.sentry.vendor.gson.stream.JsonToken.NAME
                if (r4 != r5) goto L86
                java.lang.String r4 = r8.nextName()
                r4.hashCode()
                int r5 = r4.hashCode()
                r6 = -1
                switch(r5) {
                    case 3373707: goto L49;
                    case 351608024: goto L3e;
                    case 750867693: goto L33;
                    case 1487029535: goto L28;
                    default: goto L27;
                }
            L27:
                goto L53
            L28:
                java.lang.String r5 = "integrations"
                boolean r5 = r4.equals(r5)
                if (r5 != 0) goto L31
                goto L53
            L31:
                r6 = 3
                goto L53
            L33:
                java.lang.String r5 = "packages"
                boolean r5 = r4.equals(r5)
                if (r5 != 0) goto L3c
                goto L53
            L3c:
                r6 = 2
                goto L53
            L3e:
                java.lang.String r5 = "version"
                boolean r5 = r4.equals(r5)
                if (r5 != 0) goto L47
                goto L53
            L47:
                r6 = 1
                goto L53
            L49:
                java.lang.String r5 = "name"
                boolean r5 = r4.equals(r5)
                if (r5 != 0) goto L52
                goto L53
            L52:
                r6 = 0
            L53:
                switch(r6) {
                    case 0: goto L81;
                    case 1: goto L7c;
                    case 2: goto L6d;
                    case 3: goto L61;
                    default: goto L56;
                }
            L56:
                if (r3 != 0) goto L5d
                java.util.HashMap r3 = new java.util.HashMap
                r3.<init>()
            L5d:
                r8.nextUnknown(r9, r3, r4)
                goto L10
            L61:
                java.lang.Object r4 = r8.nextObjectOrNull()
                java.util.List r4 = (java.util.List) r4
                if (r4 == 0) goto L10
                r0.addAll(r4)
                goto L10
            L6d:
                io.sentry.protocol.SentryPackage$Deserializer r4 = new io.sentry.protocol.SentryPackage$Deserializer
                r4.<init>()
                java.util.List r4 = r8.nextListOrNull(r9, r4)
                if (r4 == 0) goto L10
                r7.addAll(r4)
                goto L10
            L7c:
                java.lang.String r2 = r8.nextString()
                goto L10
            L81:
                java.lang.String r1 = r8.nextString()
                goto L10
            L86:
                r8.endObject()
                if (r1 == 0) goto Lb3
                if (r2 == 0) goto La6
                io.sentry.protocol.SdkVersion r8 = new io.sentry.protocol.SdkVersion
                r8.<init>(r1, r2)
                java.util.concurrent.CopyOnWriteArraySet r9 = new java.util.concurrent.CopyOnWriteArraySet
                r9.<init>(r7)
                io.sentry.protocol.SdkVersion.access$002(r8, r9)
                java.util.concurrent.CopyOnWriteArraySet r7 = new java.util.concurrent.CopyOnWriteArraySet
                r7.<init>(r0)
                io.sentry.protocol.SdkVersion.access$102(r8, r7)
                r8.setUnknown(r3)
                return r8
            La6:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "Missing required field \"version\""
                r7.<init>(r8)
                io.sentry.SentryLevel r0 = io.sentry.SentryLevel.ERROR
                r9.log(r0, r8, r7)
                throw r7
            Lb3:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "Missing required field \"name\""
                r7.<init>(r8)
                io.sentry.SentryLevel r0 = io.sentry.SentryLevel.ERROR
                r9.log(r0, r8, r7)
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.protocol.SdkVersion.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.protocol.SdkVersion");
        }
    }
}
