package io.sentry;

import com.google.android.exoplayer2.C;
import io.sentry.Session;
import io.sentry.cache.EnvelopeCache;
import io.sentry.cache.IEnvelopeCache;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Date;

/* loaded from: classes3.dex */
final class PreviousSessionFinalizer implements Runnable {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private final IHub hub;
    private final SentryOptions options;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PreviousSessionFinalizer(SentryOptions sentryOptions, IHub iHub) {
        this.options = sentryOptions;
        this.hub = iHub;
    }

    @Override // java.lang.Runnable
    public void run() {
        String cacheDirPath = this.options.getCacheDirPath();
        if (cacheDirPath == null) {
            this.options.getLogger().log(SentryLevel.INFO, "Cache dir is not set, not finalizing the previous session.", new Object[0]);
            return;
        }
        if (!this.options.isEnableAutoSessionTracking()) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Session tracking is disabled, bailing from previous session finalizer.", new Object[0]);
            return;
        }
        IEnvelopeCache envelopeDiskCache = this.options.getEnvelopeDiskCache();
        if ((envelopeDiskCache instanceof EnvelopeCache) && !((EnvelopeCache) envelopeDiskCache).waitPreviousSessionFlush()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Timed out waiting to flush previous session to its own file in session finalizer.", new Object[0]);
            return;
        }
        File previousSessionFile = EnvelopeCache.getPreviousSessionFile(cacheDirPath);
        ISerializer serializer = this.options.getSerializer();
        if (previousSessionFile.exists()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Current session is not ended, we'd need to end it.", new Object[0]);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(previousSessionFile), UTF_8));
                try {
                    Session session = (Session) serializer.deserialize(bufferedReader, Session.class);
                    if (session == null) {
                        this.options.getLogger().log(SentryLevel.ERROR, "Stream from path %s resulted in a null envelope.", previousSessionFile.getAbsolutePath());
                    } else {
                        File file = new File(this.options.getCacheDirPath(), EnvelopeCache.NATIVE_CRASH_MARKER_FILE);
                        Date date = null;
                        if (file.exists()) {
                            this.options.getLogger().log(SentryLevel.INFO, "Crash marker file exists, last Session is gonna be Crashed.", new Object[0]);
                            Date timestampFromCrashMarkerFile = getTimestampFromCrashMarkerFile(file);
                            if (!file.delete()) {
                                this.options.getLogger().log(SentryLevel.ERROR, "Failed to delete the crash marker file. %s.", file.getAbsolutePath());
                            }
                            session.update(Session.State.Crashed, null, true);
                            date = timestampFromCrashMarkerFile;
                        }
                        if (session.getAbnormalMechanism() == null) {
                            session.end(date);
                        }
                        this.hub.captureEnvelope(SentryEnvelope.from(serializer, session, this.options.getSdkVersion()));
                    }
                    bufferedReader.close();
                } finally {
                }
            } catch (Throwable th) {
                this.options.getLogger().log(SentryLevel.ERROR, "Error processing previous session.", th);
            }
            if (previousSessionFile.delete()) {
                return;
            }
            this.options.getLogger().log(SentryLevel.WARNING, "Failed to delete the previous session file.", new Object[0]);
        }
    }

    private Date getTimestampFromCrashMarkerFile(File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), UTF_8));
            try {
                String readLine = bufferedReader.readLine();
                this.options.getLogger().log(SentryLevel.DEBUG, "Crash marker file has %s timestamp.", readLine);
                Date dateTime = DateUtils.getDateTime(readLine);
                bufferedReader.close();
                return dateTime;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error reading the crash marker file.", e);
            return null;
        } catch (IllegalArgumentException e2) {
            this.options.getLogger().log(SentryLevel.ERROR, e2, "Error converting the crash timestamp.", new Object[0]);
            return null;
        }
    }
}
