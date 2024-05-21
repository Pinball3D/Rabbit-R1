package io.sentry.clientreport;

import io.sentry.util.Objects;

/* loaded from: classes3.dex */
final class ClientReportKey {
    private final String category;
    private final String reason;

    public String getCategory() {
        return this.category;
    }

    public String getReason() {
        return this.reason;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClientReportKey(String str, String str2) {
        this.reason = str;
        this.category = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientReportKey)) {
            return false;
        }
        ClientReportKey clientReportKey = (ClientReportKey) obj;
        return Objects.equals(getReason(), clientReportKey.getReason()) && Objects.equals(getCategory(), clientReportKey.getCategory());
    }

    public int hashCode() {
        return Objects.hash(getReason(), getCategory());
    }
}
