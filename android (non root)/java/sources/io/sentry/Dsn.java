package io.sentry;

import io.sentry.util.Objects;
import java.net.URI;

/* loaded from: classes3.dex */
final class Dsn {
    private final String path;
    private final String projectId;
    private final String publicKey;
    private final String secretKey;
    private final URI sentryUri;

    public String getPath() {
        return this.path;
    }

    public String getProjectId() {
        return this.projectId;
    }

    public String getPublicKey() {
        return this.publicKey;
    }

    public String getSecretKey() {
        return this.secretKey;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public URI getSentryUri() {
        return this.sentryUri;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Dsn(String str) throws IllegalArgumentException {
        try {
            Objects.requireNonNull(str, "The DSN is required.");
            URI normalize = new URI(str).normalize();
            String scheme = normalize.getScheme();
            if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
                throw new IllegalArgumentException("Invalid DSN scheme: " + scheme);
            }
            String userInfo = normalize.getUserInfo();
            if (userInfo == null || userInfo.isEmpty()) {
                throw new IllegalArgumentException("Invalid DSN: No public key provided.");
            }
            String[] split = userInfo.split(":", -1);
            String str2 = split[0];
            this.publicKey = str2;
            if (str2 == null || str2.isEmpty()) {
                throw new IllegalArgumentException("Invalid DSN: No public key provided.");
            }
            this.secretKey = split.length > 1 ? split[1] : null;
            String path = normalize.getPath();
            path = path.endsWith("/") ? path.substring(0, path.length() - 1) : path;
            int lastIndexOf = path.lastIndexOf("/") + 1;
            String substring = path.substring(0, lastIndexOf);
            substring = substring.endsWith("/") ? substring : substring + "/";
            this.path = substring;
            String substring2 = path.substring(lastIndexOf);
            this.projectId = substring2;
            if (substring2.isEmpty()) {
                throw new IllegalArgumentException("Invalid DSN: A Project Id is required.");
            }
            this.sentryUri = new URI(scheme, null, normalize.getHost(), normalize.getPort(), substring + "api/" + substring2, null, null);
        } catch (Throwable th) {
            throw new IllegalArgumentException(th);
        }
    }
}
