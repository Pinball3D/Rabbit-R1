package io.sentry;

import com.google.android.exoplayer2.C;
import io.sentry.Breadcrumb;
import io.sentry.ProfilingTraceData;
import io.sentry.ProfilingTransactionData;
import io.sentry.SentryAppStartProfilingOptions;
import io.sentry.SentryEnvelopeHeader;
import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.SentryEvent;
import io.sentry.SentryItemType;
import io.sentry.SentryLevel;
import io.sentry.SentryLockReason;
import io.sentry.Session;
import io.sentry.SpanContext;
import io.sentry.SpanId;
import io.sentry.SpanStatus;
import io.sentry.UserFeedback;
import io.sentry.clientreport.ClientReport;
import io.sentry.profilemeasurements.ProfileMeasurement;
import io.sentry.profilemeasurements.ProfileMeasurementValue;
import io.sentry.protocol.App;
import io.sentry.protocol.Browser;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.Device;
import io.sentry.protocol.Geo;
import io.sentry.protocol.Gpu;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.Message;
import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.Request;
import io.sentry.protocol.SdkInfo;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryPackage;
import io.sentry.protocol.SentryRuntime;
import io.sentry.protocol.SentrySpan;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.protocol.ViewHierarchy;
import io.sentry.protocol.ViewHierarchyNode;
import io.sentry.util.Objects;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class JsonSerializer implements ISerializer {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private final Map<Class<?>, JsonDeserializer<?>> deserializersByClass;
    private final SentryOptions options;

    public JsonSerializer(SentryOptions sentryOptions) {
        this.options = sentryOptions;
        HashMap hashMap = new HashMap();
        this.deserializersByClass = hashMap;
        hashMap.put(App.class, new App.Deserializer());
        hashMap.put(Breadcrumb.class, new Breadcrumb.Deserializer());
        hashMap.put(Browser.class, new Browser.Deserializer());
        hashMap.put(Contexts.class, new Contexts.Deserializer());
        hashMap.put(DebugImage.class, new DebugImage.Deserializer());
        hashMap.put(DebugMeta.class, new DebugMeta.Deserializer());
        hashMap.put(Device.class, new Device.Deserializer());
        hashMap.put(Device.DeviceOrientation.class, new Device.DeviceOrientation.Deserializer());
        hashMap.put(Gpu.class, new Gpu.Deserializer());
        hashMap.put(MeasurementValue.class, new MeasurementValue.Deserializer());
        hashMap.put(Mechanism.class, new Mechanism.Deserializer());
        hashMap.put(Message.class, new Message.Deserializer());
        hashMap.put(MetricSummary.class, new MetricSummary.Deserializer());
        hashMap.put(OperatingSystem.class, new OperatingSystem.Deserializer());
        hashMap.put(ProfilingTraceData.class, new ProfilingTraceData.Deserializer());
        hashMap.put(ProfilingTransactionData.class, new ProfilingTransactionData.Deserializer());
        hashMap.put(ProfileMeasurement.class, new ProfileMeasurement.Deserializer());
        hashMap.put(ProfileMeasurementValue.class, new ProfileMeasurementValue.Deserializer());
        hashMap.put(Request.class, new Request.Deserializer());
        hashMap.put(SdkInfo.class, new SdkInfo.Deserializer());
        hashMap.put(SdkVersion.class, new SdkVersion.Deserializer());
        hashMap.put(SentryEnvelopeHeader.class, new SentryEnvelopeHeader.Deserializer());
        hashMap.put(SentryEnvelopeItemHeader.class, new SentryEnvelopeItemHeader.Deserializer());
        hashMap.put(SentryEvent.class, new SentryEvent.Deserializer());
        hashMap.put(SentryException.class, new SentryException.Deserializer());
        hashMap.put(SentryItemType.class, new SentryItemType.Deserializer());
        hashMap.put(SentryLevel.class, new SentryLevel.Deserializer());
        hashMap.put(SentryLockReason.class, new SentryLockReason.Deserializer());
        hashMap.put(SentryPackage.class, new SentryPackage.Deserializer());
        hashMap.put(SentryRuntime.class, new SentryRuntime.Deserializer());
        hashMap.put(SentrySpan.class, new SentrySpan.Deserializer());
        hashMap.put(SentryStackFrame.class, new SentryStackFrame.Deserializer());
        hashMap.put(SentryStackTrace.class, new SentryStackTrace.Deserializer());
        hashMap.put(SentryAppStartProfilingOptions.class, new SentryAppStartProfilingOptions.Deserializer());
        hashMap.put(SentryThread.class, new SentryThread.Deserializer());
        hashMap.put(SentryTransaction.class, new SentryTransaction.Deserializer());
        hashMap.put(Session.class, new Session.Deserializer());
        hashMap.put(SpanContext.class, new SpanContext.Deserializer());
        hashMap.put(SpanId.class, new SpanId.Deserializer());
        hashMap.put(SpanStatus.class, new SpanStatus.Deserializer());
        hashMap.put(User.class, new User.Deserializer());
        hashMap.put(Geo.class, new Geo.Deserializer());
        hashMap.put(UserFeedback.class, new UserFeedback.Deserializer());
        hashMap.put(ClientReport.class, new ClientReport.Deserializer());
        hashMap.put(ViewHierarchyNode.class, new ViewHierarchyNode.Deserializer());
        hashMap.put(ViewHierarchy.class, new ViewHierarchy.Deserializer());
    }

    @Override // io.sentry.ISerializer
    public <T, R> T deserializeCollection(Reader reader, Class<T> cls, JsonDeserializer<R> jsonDeserializer) {
        try {
            JsonObjectReader jsonObjectReader = new JsonObjectReader(reader);
            try {
                if (!Collection.class.isAssignableFrom(cls)) {
                    T t = (T) jsonObjectReader.nextObjectOrNull();
                    jsonObjectReader.close();
                    return t;
                }
                if (jsonDeserializer == null) {
                    T t2 = (T) jsonObjectReader.nextObjectOrNull();
                    jsonObjectReader.close();
                    return t2;
                }
                T t3 = (T) jsonObjectReader.nextListOrNull(this.options.getLogger(), jsonDeserializer);
                jsonObjectReader.close();
                return t3;
            } finally {
            }
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error when deserializing", th);
            return null;
        }
    }

    @Override // io.sentry.ISerializer
    public <T> T deserialize(Reader reader, Class<T> cls) {
        try {
            JsonObjectReader jsonObjectReader = new JsonObjectReader(reader);
            try {
                JsonDeserializer<?> jsonDeserializer = this.deserializersByClass.get(cls);
                if (jsonDeserializer != null) {
                    T cast = cls.cast(jsonDeserializer.deserialize(jsonObjectReader, this.options.getLogger()));
                    jsonObjectReader.close();
                    return cast;
                }
                if (!isKnownPrimitive(cls)) {
                    jsonObjectReader.close();
                    return null;
                }
                T t = (T) jsonObjectReader.nextObjectOrNull();
                jsonObjectReader.close();
                return t;
            } finally {
            }
        } catch (Exception e) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error when deserializing", e);
            return null;
        }
    }

    @Override // io.sentry.ISerializer
    public SentryEnvelope deserializeEnvelope(InputStream inputStream) {
        Objects.requireNonNull(inputStream, "The InputStream object is required.");
        try {
            return this.options.getEnvelopeReader().read(inputStream);
        } catch (IOException e) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error deserializing envelope.", e);
            return null;
        }
    }

    @Override // io.sentry.ISerializer
    public <T> void serialize(T t, Writer writer) throws IOException {
        Objects.requireNonNull(t, "The entity is required.");
        Objects.requireNonNull(writer, "The Writer object is required.");
        if (this.options.getLogger().isEnabled(SentryLevel.DEBUG)) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Serializing object: %s", serializeToString(t, this.options.isEnablePrettySerializationOutput()));
        }
        new JsonObjectWriter(writer, this.options.getMaxDepth()).value(this.options.getLogger(), (Object) t);
        writer.flush();
    }

    @Override // io.sentry.ISerializer
    public void serialize(SentryEnvelope sentryEnvelope, OutputStream outputStream) throws Exception {
        Objects.requireNonNull(sentryEnvelope, "The SentryEnvelope object is required.");
        Objects.requireNonNull(outputStream, "The Stream object is required.");
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new BufferedOutputStream(outputStream), UTF_8));
        try {
            sentryEnvelope.getHeader().serialize(new JsonObjectWriter(bufferedWriter, this.options.getMaxDepth()), this.options.getLogger());
            bufferedWriter.write("\n");
            for (SentryEnvelopeItem sentryEnvelopeItem : sentryEnvelope.getItems()) {
                try {
                    byte[] data = sentryEnvelopeItem.getData();
                    sentryEnvelopeItem.getHeader().serialize(new JsonObjectWriter(bufferedWriter, this.options.getMaxDepth()), this.options.getLogger());
                    bufferedWriter.write("\n");
                    bufferedWriter.flush();
                    outputStream.write(data);
                    bufferedWriter.write("\n");
                } catch (Exception e) {
                    this.options.getLogger().log(SentryLevel.ERROR, "Failed to create envelope item. Dropping it.", e);
                }
            }
        } finally {
            bufferedWriter.flush();
        }
    }

    @Override // io.sentry.ISerializer
    public String serialize(Map<String, Object> map) throws Exception {
        return serializeToString(map, false);
    }

    private String serializeToString(Object obj, boolean z) throws IOException {
        StringWriter stringWriter = new StringWriter();
        JsonObjectWriter jsonObjectWriter = new JsonObjectWriter(stringWriter, this.options.getMaxDepth());
        if (z) {
            jsonObjectWriter.setIndent("\t");
        }
        jsonObjectWriter.value(this.options.getLogger(), obj);
        return stringWriter.toString();
    }

    private <T> boolean isKnownPrimitive(Class<T> cls) {
        return cls.isArray() || Collection.class.isAssignableFrom(cls) || String.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls);
    }
}
