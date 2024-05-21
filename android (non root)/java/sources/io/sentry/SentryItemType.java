package io.sentry;

import androidx.core.app.NotificationCompat;
import io.sentry.cache.EnvelopeCache;
import io.sentry.clientreport.ClientReport;
import io.sentry.protocol.SentryTransaction;
import java.io.IOException;
import java.util.Locale;

/* loaded from: classes3.dex */
public enum SentryItemType implements JsonSerializable {
    Session(EnvelopeCache.PREFIX_CURRENT_SESSION_FILE),
    Event(NotificationCompat.CATEGORY_EVENT),
    UserFeedback("user_report"),
    Attachment("attachment"),
    Transaction("transaction"),
    Profile("profile"),
    ClientReport("client_report"),
    ReplayEvent("replay_event"),
    ReplayRecording("replay_recording"),
    CheckIn("check_in"),
    Statsd("statsd"),
    Unknown("__unknown__");

    private final String itemType;

    public String getItemType() {
        return this.itemType;
    }

    public static SentryItemType resolve(Object obj) {
        return obj instanceof SentryEvent ? Event : obj instanceof SentryTransaction ? Transaction : obj instanceof Session ? Session : obj instanceof ClientReport ? ClientReport : Attachment;
    }

    SentryItemType(String str) {
        this.itemType = str;
    }

    public static SentryItemType valueOfLabel(String str) {
        for (SentryItemType sentryItemType : values()) {
            if (sentryItemType.itemType.equals(str)) {
                return sentryItemType;
            }
        }
        return Unknown;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.value(this.itemType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SentryItemType> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public SentryItemType deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            return SentryItemType.valueOfLabel(jsonObjectReader.nextString().toLowerCase(Locale.ROOT));
        }
    }
}
