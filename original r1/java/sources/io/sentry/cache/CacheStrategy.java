package io.sentry.cache;

import com.google.android.exoplayer2.C;
import io.sentry.ISerializer;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;
import io.sentry.SentryItemType;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.clientreport.DiscardReason;
import io.sentry.util.Objects;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class CacheStrategy {
    protected static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    protected final File directory;
    private final int maxSize;
    protected final SentryOptions options;
    protected final ISerializer serializer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CacheStrategy(SentryOptions sentryOptions, String str, int i) {
        Objects.requireNonNull(str, "Directory is required.");
        this.options = (SentryOptions) Objects.requireNonNull(sentryOptions, "SentryOptions is required.");
        this.serializer = sentryOptions.getSerializer();
        this.directory = new File(str);
        this.maxSize = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isDirectoryValid() {
        if (this.directory.isDirectory() && this.directory.canWrite() && this.directory.canRead()) {
            return true;
        }
        this.options.getLogger().log(SentryLevel.ERROR, "The directory for caching files is inaccessible.: %s", this.directory.getAbsolutePath());
        return false;
    }

    private void sortFilesOldestToNewest(File[] fileArr) {
        if (fileArr.length > 1) {
            Arrays.sort(fileArr, new Comparator() { // from class: io.sentry.cache.CacheStrategy$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int compare;
                    compare = Long.compare(((File) obj).lastModified(), ((File) obj2).lastModified());
                    return compare;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void rotateCacheIfNeeded(File[] fileArr) {
        int length = fileArr.length;
        if (length >= this.maxSize) {
            this.options.getLogger().log(SentryLevel.WARNING, "Cache folder if full (respecting maxSize). Rotating files", new Object[0]);
            int i = (length - this.maxSize) + 1;
            sortFilesOldestToNewest(fileArr);
            File[] fileArr2 = (File[]) Arrays.copyOfRange(fileArr, i, length);
            for (int i2 = 0; i2 < i; i2++) {
                File file = fileArr[i2];
                moveInitFlagIfNecessary(file, fileArr2);
                if (!file.delete()) {
                    this.options.getLogger().log(SentryLevel.WARNING, "File can't be deleted: %s", file.getAbsolutePath());
                }
            }
        }
    }

    private void moveInitFlagIfNecessary(File file, File[] fileArr) {
        Boolean init;
        int i;
        File file2;
        SentryEnvelope readEnvelope;
        SentryEnvelopeItem sentryEnvelopeItem;
        Session readSession;
        SentryEnvelope readEnvelope2 = readEnvelope(file);
        if (readEnvelope2 == null || !isValidEnvelope(readEnvelope2)) {
            return;
        }
        this.options.getClientReportRecorder().recordLostEnvelope(DiscardReason.CACHE_OVERFLOW, readEnvelope2);
        Session firstSession = getFirstSession(readEnvelope2);
        if (firstSession == null || !isValidSession(firstSession) || (init = firstSession.getInit()) == null || !init.booleanValue()) {
            return;
        }
        int length = fileArr.length;
        for (i = 0; i < length; i++) {
            file2 = fileArr[i];
            readEnvelope = readEnvelope(file2);
            if (readEnvelope != null && isValidEnvelope(readEnvelope)) {
                Iterator<SentryEnvelopeItem> it = readEnvelope.getItems().iterator();
                while (true) {
                    sentryEnvelopeItem = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    SentryEnvelopeItem next = it.next();
                    if (isSessionType(next) && (readSession = readSession(next)) != null && isValidSession(readSession)) {
                        Boolean init2 = readSession.getInit();
                        if (init2 != null && init2.booleanValue()) {
                            this.options.getLogger().log(SentryLevel.ERROR, "Session %s has 2 times the init flag.", firstSession.getSessionId());
                            return;
                        }
                        if (firstSession.getSessionId() != null && firstSession.getSessionId().equals(readSession.getSessionId())) {
                            readSession.setInitAsTrue();
                            try {
                                sentryEnvelopeItem = SentryEnvelopeItem.fromSession(this.serializer, readSession);
                                it.remove();
                                break;
                            } catch (IOException e) {
                                this.options.getLogger().log(SentryLevel.ERROR, e, "Failed to create new envelope item for the session %s", firstSession.getSessionId());
                            }
                        }
                    }
                }
            }
        }
        return;
        if (sentryEnvelopeItem != null) {
            SentryEnvelope buildNewEnvelope = buildNewEnvelope(readEnvelope, sentryEnvelopeItem);
            long lastModified = file2.lastModified();
            if (!file2.delete()) {
                this.options.getLogger().log(SentryLevel.WARNING, "File can't be deleted: %s", file2.getAbsolutePath());
            }
            saveNewEnvelope(buildNewEnvelope, file2, lastModified);
            return;
        }
    }

    private SentryEnvelope readEnvelope(File file) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                SentryEnvelope deserializeEnvelope = this.serializer.deserializeEnvelope(bufferedInputStream);
                bufferedInputStream.close();
                return deserializeEnvelope;
            } finally {
            }
        } catch (IOException e) {
            this.options.getLogger().log(SentryLevel.ERROR, "Failed to deserialize the envelope.", e);
            return null;
        }
    }

    private Session getFirstSession(SentryEnvelope sentryEnvelope) {
        for (SentryEnvelopeItem sentryEnvelopeItem : sentryEnvelope.getItems()) {
            if (isSessionType(sentryEnvelopeItem)) {
                return readSession(sentryEnvelopeItem);
            }
        }
        return null;
    }

    private boolean isValidSession(Session session) {
        return session.getStatus().equals(Session.State.Ok) && session.getSessionId() != null;
    }

    private boolean isSessionType(SentryEnvelopeItem sentryEnvelopeItem) {
        if (sentryEnvelopeItem == null) {
            return false;
        }
        return sentryEnvelopeItem.getHeader().getType().equals(SentryItemType.Session);
    }

    private Session readSession(SentryEnvelopeItem sentryEnvelopeItem) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(sentryEnvelopeItem.getData()), UTF_8));
            try {
                Session session = (Session) this.serializer.deserialize(bufferedReader, Session.class);
                bufferedReader.close();
                return session;
            } finally {
            }
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Failed to deserialize the session.", th);
            return null;
        }
    }

    private void saveNewEnvelope(SentryEnvelope sentryEnvelope, File file, long j) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                this.serializer.serialize(sentryEnvelope, fileOutputStream);
                file.setLastModified(j);
                fileOutputStream.close();
            } finally {
            }
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Failed to serialize the new envelope to the disk.", th);
        }
    }

    private SentryEnvelope buildNewEnvelope(SentryEnvelope sentryEnvelope, SentryEnvelopeItem sentryEnvelopeItem) {
        ArrayList arrayList = new ArrayList();
        Iterator<SentryEnvelopeItem> it = sentryEnvelope.getItems().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        arrayList.add(sentryEnvelopeItem);
        return new SentryEnvelope(sentryEnvelope.getHeader(), arrayList);
    }

    private boolean isValidEnvelope(SentryEnvelope sentryEnvelope) {
        return sentryEnvelope.getItems().iterator().hasNext();
    }
}
