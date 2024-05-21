package com.google.common.net;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@Immutable
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class HostAndPort implements Serializable {
    private static final int NO_PORT = -1;
    private static final long serialVersionUID = 0;
    private final boolean hasBracketlessColons;
    private final String host;
    private final int port;

    private static boolean isValidPort(int i) {
        return i >= 0 && i <= 65535;
    }

    public String getHost() {
        return this.host;
    }

    public boolean hasPort() {
        return this.port >= 0;
    }

    private HostAndPort(String str, int i, boolean z) {
        this.host = str;
        this.port = i;
        this.hasBracketlessColons = z;
    }

    public int getPort() {
        Preconditions.checkState(hasPort());
        return this.port;
    }

    public int getPortOrDefault(int i) {
        return hasPort() ? this.port : i;
    }

    public static HostAndPort fromParts(String str, int i) {
        Preconditions.checkArgument(isValidPort(i), "Port out of range: %s", i);
        HostAndPort fromString = fromString(str);
        Preconditions.checkArgument(!fromString.hasPort(), "Host has a port: %s", str);
        return new HostAndPort(fromString.host, i, fromString.hasBracketlessColons);
    }

    public static HostAndPort fromHost(String str) {
        HostAndPort fromString = fromString(str);
        Preconditions.checkArgument(!fromString.hasPort(), "Host has a port: %s", str);
        return fromString;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.common.net.HostAndPort fromString(java.lang.String r8) {
        /*
            com.google.common.base.Preconditions.checkNotNull(r8)
            java.lang.String r0 = "["
            boolean r0 = r8.startsWith(r0)
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L19
            java.lang.String[] r0 = getHostAndPortFromBracketedHost(r8)
            r4 = r0[r3]
            r0 = r0[r2]
        L16:
            r5 = r4
            r4 = r3
            goto L3c
        L19:
            r0 = 58
            int r4 = r8.indexOf(r0)
            if (r4 < 0) goto L32
            int r5 = r4 + 1
            int r0 = r8.indexOf(r0, r5)
            if (r0 != r1) goto L32
            java.lang.String r4 = r8.substring(r3, r4)
            java.lang.String r0 = r8.substring(r5)
            goto L16
        L32:
            if (r4 < 0) goto L36
            r0 = r2
            goto L37
        L36:
            r0 = r3
        L37:
            r4 = 0
            r5 = r8
            r7 = r4
            r4 = r0
            r0 = r7
        L3c:
            boolean r6 = com.google.common.base.Strings.isNullOrEmpty(r0)
            if (r6 != 0) goto L85
            java.lang.String r1 = "+"
            boolean r1 = r0.startsWith(r1)
            if (r1 != 0) goto L55
            com.google.common.base.CharMatcher r1 = com.google.common.base.CharMatcher.ascii()
            boolean r1 = r1.matchesAllOf(r0)
            if (r1 == 0) goto L55
            goto L56
        L55:
            r2 = r3
        L56:
            java.lang.String r1 = "Unparseable port number: %s"
            com.google.common.base.Preconditions.checkArgument(r2, r1, r8)
            int r1 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L69
            boolean r0 = isValidPort(r1)
            java.lang.String r2 = "Port number out of range: %s"
            com.google.common.base.Preconditions.checkArgument(r0, r2, r8)
            goto L85
        L69:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r8 = java.lang.String.valueOf(r8)
            int r1 = r8.length()
            java.lang.String r2 = "Unparseable port number: "
            if (r1 == 0) goto L7c
            java.lang.String r8 = r2.concat(r8)
            goto L81
        L7c:
            java.lang.String r8 = new java.lang.String
            r8.<init>(r2)
        L81:
            r0.<init>(r8)
            throw r0
        L85:
            com.google.common.net.HostAndPort r8 = new com.google.common.net.HostAndPort
            r8.<init>(r5, r1, r4)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.net.HostAndPort.fromString(java.lang.String):com.google.common.net.HostAndPort");
    }

    private static String[] getHostAndPortFromBracketedHost(String str) {
        Preconditions.checkArgument(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int indexOf = str.indexOf(58);
        int lastIndexOf = str.lastIndexOf(93);
        Preconditions.checkArgument(indexOf > -1 && lastIndexOf > indexOf, "Invalid bracketed host/port: %s", str);
        String substring = str.substring(1, lastIndexOf);
        int i = lastIndexOf + 1;
        if (i == str.length()) {
            return new String[]{substring, ""};
        }
        Preconditions.checkArgument(str.charAt(i) == ':', "Only a colon may follow a close bracket: %s", str);
        int i2 = lastIndexOf + 2;
        for (int i3 = i2; i3 < str.length(); i3++) {
            Preconditions.checkArgument(Character.isDigit(str.charAt(i3)), "Port must be numeric: %s", str);
        }
        return new String[]{substring, str.substring(i2)};
    }

    public HostAndPort withDefaultPort(int i) {
        Preconditions.checkArgument(isValidPort(i));
        return hasPort() ? this : new HostAndPort(this.host, i, this.hasBracketlessColons);
    }

    public HostAndPort requireBracketsForIPv6() {
        Preconditions.checkArgument(!this.hasBracketlessColons, "Possible bracketless IPv6 literal: %s", this.host);
        return this;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HostAndPort)) {
            return false;
        }
        HostAndPort hostAndPort = (HostAndPort) obj;
        return Objects.equal(this.host, hostAndPort.host) && this.port == hostAndPort.port;
    }

    public int hashCode() {
        return Objects.hashCode(this.host, Integer.valueOf(this.port));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.host.length() + 8);
        if (this.host.indexOf(58) >= 0) {
            sb.append('[').append(this.host).append(']');
        } else {
            sb.append(this.host);
        }
        if (hasPort()) {
            sb.append(':').append(this.port);
        }
        return sb.toString();
    }
}
