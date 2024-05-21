package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.ObjectWriter;
import io.sentry.SpanContext;
import io.sentry.protocol.App;
import io.sentry.protocol.Browser;
import io.sentry.protocol.Device;
import io.sentry.protocol.Gpu;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.Response;
import io.sentry.protocol.SentryRuntime;
import io.sentry.util.HintUtils;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class Contexts extends ConcurrentHashMap<String, Object> implements JsonSerializable {
    private static final long serialVersionUID = 252445813254943011L;
    private final Object responseLock = new Object();

    public Contexts() {
    }

    public Contexts(Contexts contexts) {
        for (Map.Entry<String, Object> entry : contexts.entrySet()) {
            if (entry != null) {
                Object value = entry.getValue();
                if (App.TYPE.equals(entry.getKey()) && (value instanceof App)) {
                    setApp(new App((App) value));
                } else if (Browser.TYPE.equals(entry.getKey()) && (value instanceof Browser)) {
                    setBrowser(new Browser((Browser) value));
                } else if (Device.TYPE.equals(entry.getKey()) && (value instanceof Device)) {
                    setDevice(new Device((Device) value));
                } else if (OperatingSystem.TYPE.equals(entry.getKey()) && (value instanceof OperatingSystem)) {
                    setOperatingSystem(new OperatingSystem((OperatingSystem) value));
                } else if (SentryRuntime.TYPE.equals(entry.getKey()) && (value instanceof SentryRuntime)) {
                    setRuntime(new SentryRuntime((SentryRuntime) value));
                } else if (Gpu.TYPE.equals(entry.getKey()) && (value instanceof Gpu)) {
                    setGpu(new Gpu((Gpu) value));
                } else if ("trace".equals(entry.getKey()) && (value instanceof SpanContext)) {
                    setTrace(new SpanContext((SpanContext) value));
                } else if (Response.TYPE.equals(entry.getKey()) && (value instanceof Response)) {
                    setResponse(new Response((Response) value));
                } else {
                    put(entry.getKey(), value);
                }
            }
        }
    }

    private <T> T toContextType(String str, Class<T> cls) {
        Object obj = get(str);
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        return null;
    }

    public SpanContext getTrace() {
        return (SpanContext) toContextType("trace", SpanContext.class);
    }

    public void setTrace(SpanContext spanContext) {
        Objects.requireNonNull(spanContext, "traceContext is required");
        put("trace", spanContext);
    }

    public App getApp() {
        return (App) toContextType(App.TYPE, App.class);
    }

    public void setApp(App app) {
        put(App.TYPE, app);
    }

    public Browser getBrowser() {
        return (Browser) toContextType(Browser.TYPE, Browser.class);
    }

    public void setBrowser(Browser browser) {
        put(Browser.TYPE, browser);
    }

    public Device getDevice() {
        return (Device) toContextType(Device.TYPE, Device.class);
    }

    public void setDevice(Device device) {
        put(Device.TYPE, device);
    }

    public OperatingSystem getOperatingSystem() {
        return (OperatingSystem) toContextType(OperatingSystem.TYPE, OperatingSystem.class);
    }

    public void setOperatingSystem(OperatingSystem operatingSystem) {
        put(OperatingSystem.TYPE, operatingSystem);
    }

    public SentryRuntime getRuntime() {
        return (SentryRuntime) toContextType(SentryRuntime.TYPE, SentryRuntime.class);
    }

    public void setRuntime(SentryRuntime sentryRuntime) {
        put(SentryRuntime.TYPE, sentryRuntime);
    }

    public Gpu getGpu() {
        return (Gpu) toContextType(Gpu.TYPE, Gpu.class);
    }

    public void setGpu(Gpu gpu) {
        put(Gpu.TYPE, gpu);
    }

    public Response getResponse() {
        return (Response) toContextType(Response.TYPE, Response.class);
    }

    public void withResponse(HintUtils.SentryConsumer<Response> sentryConsumer) {
        synchronized (this.responseLock) {
            Response response = getResponse();
            if (response != null) {
                sentryConsumer.accept(response);
            } else {
                Response response2 = new Response();
                setResponse(response2);
                sentryConsumer.accept(response2);
            }
        }
    }

    public void setResponse(Response response) {
        synchronized (this.responseLock) {
            put(Response.TYPE, response);
        }
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        ArrayList<String> list = Collections.list(keys());
        Collections.sort(list);
        for (String str : list) {
            Object obj = get(str);
            if (obj != null) {
                objectWriter.name(str).value(iLogger, obj);
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<Contexts> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001c. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public Contexts deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            Contexts contexts = new Contexts();
            jsonObjectReader.beginObject();
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1335157162:
                        if (nextName.equals(Device.TYPE)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -340323263:
                        if (nextName.equals(Response.TYPE)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3556:
                        if (nextName.equals(OperatingSystem.TYPE)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 96801:
                        if (nextName.equals(App.TYPE)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 102572:
                        if (nextName.equals(Gpu.TYPE)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 110620997:
                        if (nextName.equals("trace")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 150940456:
                        if (nextName.equals(Browser.TYPE)) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1550962648:
                        if (nextName.equals(SentryRuntime.TYPE)) {
                            c = 7;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        contexts.setDevice(new Device.Deserializer().deserialize(jsonObjectReader, iLogger));
                        break;
                    case 1:
                        contexts.setResponse(new Response.Deserializer().deserialize(jsonObjectReader, iLogger));
                        break;
                    case 2:
                        contexts.setOperatingSystem(new OperatingSystem.Deserializer().deserialize(jsonObjectReader, iLogger));
                        break;
                    case 3:
                        contexts.setApp(new App.Deserializer().deserialize(jsonObjectReader, iLogger));
                        break;
                    case 4:
                        contexts.setGpu(new Gpu.Deserializer().deserialize(jsonObjectReader, iLogger));
                        break;
                    case 5:
                        contexts.setTrace(new SpanContext.Deserializer().deserialize(jsonObjectReader, iLogger));
                        break;
                    case 6:
                        contexts.setBrowser(new Browser.Deserializer().deserialize(jsonObjectReader, iLogger));
                        break;
                    case 7:
                        contexts.setRuntime(new SentryRuntime.Deserializer().deserialize(jsonObjectReader, iLogger));
                        break;
                    default:
                        Object nextObjectOrNull = jsonObjectReader.nextObjectOrNull();
                        if (nextObjectOrNull == null) {
                            break;
                        } else {
                            contexts.put(nextName, nextObjectOrNull);
                            break;
                        }
                }
            }
            jsonObjectReader.endObject();
            return contexts;
        }
    }
}
