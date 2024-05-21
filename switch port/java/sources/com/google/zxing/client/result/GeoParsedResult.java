package com.google.zxing.client.result;

import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes3.dex */
public final class GeoParsedResult extends ParsedResult {
    private final double altitude;
    private final double latitude;
    private final double longitude;
    private final String query;

    public double getAltitude() {
        return this.altitude;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getQuery() {
        return this.query;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GeoParsedResult(double d, double d2, double d3, String str) {
        super(ParsedResultType.GEO);
        this.latitude = d;
        this.longitude = d2;
        this.altitude = d3;
        this.query = str;
    }

    public String getGeoURI() {
        StringBuilder sb = new StringBuilder("geo:");
        sb.append(this.latitude);
        sb.append(',');
        sb.append(this.longitude);
        if (this.altitude > BuildConfig.SENTRY_SAMPLE_RATE) {
            sb.append(',');
            sb.append(this.altitude);
        }
        if (this.query != null) {
            sb.append('?');
            sb.append(this.query);
        }
        return sb.toString();
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.latitude);
        sb.append(", ");
        sb.append(this.longitude);
        if (this.altitude > BuildConfig.SENTRY_SAMPLE_RATE) {
            sb.append(", ");
            sb.append(this.altitude);
            sb.append('m');
        }
        if (this.query != null) {
            sb.append(" (");
            sb.append(this.query);
            sb.append(')');
        }
        return sb.toString();
    }
}
