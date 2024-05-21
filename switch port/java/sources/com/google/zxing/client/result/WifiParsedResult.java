package com.google.zxing.client.result;

/* loaded from: classes3.dex */
public final class WifiParsedResult extends ParsedResult {
    private final String anonymousIdentity;
    private final String eapMethod;
    private final boolean hidden;
    private final String identity;
    private final String networkEncryption;
    private final String password;
    private final String phase2Method;
    private final String ssid;

    public String getAnonymousIdentity() {
        return this.anonymousIdentity;
    }

    public String getEapMethod() {
        return this.eapMethod;
    }

    public String getIdentity() {
        return this.identity;
    }

    public String getNetworkEncryption() {
        return this.networkEncryption;
    }

    public String getPassword() {
        return this.password;
    }

    public String getPhase2Method() {
        return this.phase2Method;
    }

    public String getSsid() {
        return this.ssid;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public WifiParsedResult(String str, String str2, String str3) {
        this(str, str2, str3, false);
    }

    public WifiParsedResult(String str, String str2, String str3, boolean z) {
        this(str, str2, str3, z, null, null, null, null);
    }

    public WifiParsedResult(String str, String str2, String str3, boolean z, String str4, String str5, String str6, String str7) {
        super(ParsedResultType.WIFI);
        this.ssid = str2;
        this.networkEncryption = str;
        this.password = str3;
        this.hidden = z;
        this.identity = str4;
        this.anonymousIdentity = str5;
        this.eapMethod = str6;
        this.phase2Method = str7;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(80);
        maybeAppend(this.ssid, sb);
        maybeAppend(this.networkEncryption, sb);
        maybeAppend(this.password, sb);
        maybeAppend(Boolean.toString(this.hidden), sb);
        return sb.toString();
    }
}
