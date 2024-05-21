.class public final Lio/sentry/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.java"

# interfaces
.implements Lio/sentry/ISerializer;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final deserializersByClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/sentry/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 58
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/JsonSerializer;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    .line 72
    const-class p0, Lio/sentry/protocol/App;

    new-instance v0, Lio/sentry/protocol/App$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/App$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-class p0, Lio/sentry/Breadcrumb;

    new-instance v0, Lio/sentry/Breadcrumb$Deserializer;

    invoke-direct {v0}, Lio/sentry/Breadcrumb$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-class p0, Lio/sentry/protocol/Browser;

    new-instance v0, Lio/sentry/protocol/Browser$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Browser$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-class p0, Lio/sentry/protocol/Contexts;

    new-instance v0, Lio/sentry/protocol/Contexts$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-class p0, Lio/sentry/protocol/DebugImage;

    new-instance v0, Lio/sentry/protocol/DebugImage$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/DebugImage$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-class p0, Lio/sentry/protocol/DebugMeta;

    new-instance v0, Lio/sentry/protocol/DebugMeta$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/DebugMeta$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-class p0, Lio/sentry/protocol/Device;

    new-instance v0, Lio/sentry/protocol/Device$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Device$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-class p0, Lio/sentry/protocol/Device$DeviceOrientation;

    new-instance v0, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-class p0, Lio/sentry/protocol/Gpu;

    new-instance v0, Lio/sentry/protocol/Gpu$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Gpu$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-class p0, Lio/sentry/protocol/MeasurementValue;

    new-instance v0, Lio/sentry/protocol/MeasurementValue$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/MeasurementValue$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-class p0, Lio/sentry/protocol/Mechanism;

    new-instance v0, Lio/sentry/protocol/Mechanism$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-class p0, Lio/sentry/protocol/Message;

    new-instance v0, Lio/sentry/protocol/Message$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Message$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-class p0, Lio/sentry/protocol/MetricSummary;

    new-instance v0, Lio/sentry/protocol/MetricSummary$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/MetricSummary$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-class p0, Lio/sentry/protocol/OperatingSystem;

    new-instance v0, Lio/sentry/protocol/OperatingSystem$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/OperatingSystem$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-class p0, Lio/sentry/ProfilingTraceData;

    new-instance v0, Lio/sentry/ProfilingTraceData$Deserializer;

    invoke-direct {v0}, Lio/sentry/ProfilingTraceData$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-class p0, Lio/sentry/ProfilingTransactionData;

    new-instance v0, Lio/sentry/ProfilingTransactionData$Deserializer;

    invoke-direct {v0}, Lio/sentry/ProfilingTransactionData$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-class p0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;

    invoke-direct {v0}, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-class p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;

    invoke-direct {v0}, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-class p0, Lio/sentry/protocol/Request;

    new-instance v0, Lio/sentry/protocol/Request$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Request$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-class p0, Lio/sentry/protocol/SdkInfo;

    new-instance v0, Lio/sentry/protocol/SdkInfo$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SdkInfo$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-class p0, Lio/sentry/protocol/SdkVersion;

    new-instance v0, Lio/sentry/protocol/SdkVersion$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SdkVersion$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-class p0, Lio/sentry/SentryEnvelopeHeader;

    new-instance v0, Lio/sentry/SentryEnvelopeHeader$Deserializer;

    invoke-direct {v0}, Lio/sentry/SentryEnvelopeHeader$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-class p0, Lio/sentry/SentryEnvelopeItemHeader;

    new-instance v0, Lio/sentry/SentryEnvelopeItemHeader$Deserializer;

    invoke-direct {v0}, Lio/sentry/SentryEnvelopeItemHeader$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-class p0, Lio/sentry/SentryEvent;

    new-instance v0, Lio/sentry/SentryEvent$Deserializer;

    invoke-direct {v0}, Lio/sentry/SentryEvent$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-class p0, Lio/sentry/protocol/SentryException;

    new-instance v0, Lio/sentry/protocol/SentryException$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryException$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-class p0, Lio/sentry/SentryItemType;

    new-instance v0, Lio/sentry/SentryItemType$Deserializer;

    invoke-direct {v0}, Lio/sentry/SentryItemType$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-class p0, Lio/sentry/SentryLevel;

    new-instance v0, Lio/sentry/SentryLevel$Deserializer;

    invoke-direct {v0}, Lio/sentry/SentryLevel$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-class p0, Lio/sentry/SentryLockReason;

    new-instance v0, Lio/sentry/SentryLockReason$Deserializer;

    invoke-direct {v0}, Lio/sentry/SentryLockReason$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-class p0, Lio/sentry/protocol/SentryPackage;

    new-instance v0, Lio/sentry/protocol/SentryPackage$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryPackage$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-class p0, Lio/sentry/protocol/SentryRuntime;

    new-instance v0, Lio/sentry/protocol/SentryRuntime$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryRuntime$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-class p0, Lio/sentry/protocol/SentrySpan;

    new-instance v0, Lio/sentry/protocol/SentrySpan$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentrySpan$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-class p0, Lio/sentry/protocol/SentryStackFrame;

    new-instance v0, Lio/sentry/protocol/SentryStackFrame$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryStackFrame$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-class p0, Lio/sentry/protocol/SentryStackTrace;

    new-instance v0, Lio/sentry/protocol/SentryStackTrace$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryStackTrace$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-class p0, Lio/sentry/SentryAppStartProfilingOptions;

    new-instance v0, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;

    invoke-direct {v0}, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-class p0, Lio/sentry/protocol/SentryThread;

    new-instance v0, Lio/sentry/protocol/SentryThread$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryThread$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-class p0, Lio/sentry/protocol/SentryTransaction;

    new-instance v0, Lio/sentry/protocol/SentryTransaction$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryTransaction$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-class p0, Lio/sentry/Session;

    new-instance v0, Lio/sentry/Session$Deserializer;

    invoke-direct {v0}, Lio/sentry/Session$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-class p0, Lio/sentry/SpanContext;

    new-instance v0, Lio/sentry/SpanContext$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanContext$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-class p0, Lio/sentry/SpanId;

    new-instance v0, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-class p0, Lio/sentry/SpanStatus;

    new-instance v0, Lio/sentry/SpanStatus$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanStatus$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-class p0, Lio/sentry/protocol/User;

    new-instance v0, Lio/sentry/protocol/User$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/User$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-class p0, Lio/sentry/protocol/Geo;

    new-instance v0, Lio/sentry/protocol/Geo$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Geo$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-class p0, Lio/sentry/UserFeedback;

    new-instance v0, Lio/sentry/UserFeedback$Deserializer;

    invoke-direct {v0}, Lio/sentry/UserFeedback$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-class p0, Lio/sentry/clientreport/ClientReport;

    new-instance v0, Lio/sentry/clientreport/ClientReport$Deserializer;

    invoke-direct {v0}, Lio/sentry/clientreport/ClientReport$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-class p0, Lio/sentry/protocol/ViewHierarchyNode;

    new-instance v0, Lio/sentry/protocol/ViewHierarchyNode$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/ViewHierarchyNode$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-class p0, Lio/sentry/protocol/ViewHierarchy;

    new-instance v0, Lio/sentry/protocol/ViewHierarchy$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/ViewHierarchy$Deserializer;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isKnownPrimitive(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 261
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-nez p0, :cond_1

    const-class p0, Ljava/util/Collection;

    .line 262
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    const-class p0, Ljava/lang/String;

    .line 263
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    const-class p0, Ljava/util/Map;

    .line 264
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private serializeToString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 252
    new-instance v1, Lio/sentry/JsonObjectWriter;

    iget-object v2, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    if-eqz p2, :cond_0

    const-string p2, "\t"

    .line 254
    invoke-virtual {v1, p2}, Lio/sentry/JsonObjectWriter;->setIndent(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 256
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 257
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    :try_start_0
    new-instance v1, Lio/sentry/JsonObjectReader;

    invoke-direct {v1, p1}, Lio/sentry/JsonObjectReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p0, Lio/sentry/JsonSerializer;->deserializersByClass:Ljava/util/Map;

    .line 154
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/JsonDeserializer;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 156
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lio/sentry/JsonDeserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object p1

    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 158
    :cond_0
    :try_start_3
    invoke-direct {p0, p2}, Lio/sentry/JsonSerializer;->isKnownPrimitive(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :try_start_4
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->close()V

    return-object p1

    :cond_1
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 153
    :try_start_5
    invoke-virtual {v1}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 164
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error when deserializing"

    invoke-interface {p0, p2, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public deserializeCollection(Ljava/io/Reader;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/JsonDeserializer<",
            "TR;>;)TT;"
        }
    .end annotation

    .line 133
    :try_start_0
    new-instance v0, Lio/sentry/JsonObjectReader;

    invoke-direct {v0, p1}, Lio/sentry/JsonObjectReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 134
    :try_start_1
    const-class p1, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    .line 137
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p1

    :cond_0
    :try_start_3
    iget-object p1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 140
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lio/sentry/JsonObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :try_start_4
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p1

    .line 142
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    :try_start_6
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object p1

    :catchall_0
    move-exception p1

    .line 133
    :try_start_7
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    iget-object p0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 145
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p3, "Error when deserializing"

    invoke-interface {p0, p2, p3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;
    .locals 2

    const-string v0, "The InputStream object is required."

    .line 171
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 173
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 175
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error deserializing envelope."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public serialize(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, p1, v0}, Lio/sentry/JsonSerializer;->serializeToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "The SentryEnvelope object is required."

    .line 206
    invoke-static {p1, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "The Stream object is required."

    .line 207
    invoke-static {p2, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 211
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lio/sentry/JsonSerializer;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v1

    new-instance v3, Lio/sentry/JsonObjectWriter;

    iget-object v4, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 216
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v4, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/sentry/SentryEnvelopeHeader;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 217
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryEnvelopeItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :try_start_1
    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v3

    .line 224
    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v1

    new-instance v4, Lio/sentry/JsonObjectWriter;

    iget-object v5, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 225
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v5

    invoke-direct {v4, v2, v5}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v5, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lio/sentry/SentryEnvelopeItemHeader;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 226
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 229
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 234
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to create envelope item. Dropping it."

    .line 235
    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 240
    throw p0
.end method

.method public serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "The entity is required."

    .line 184
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The Writer object is required."

    .line 185
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 187
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-interface {v0, v1}, Lio/sentry/ILogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 188
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnablePrettySerializationOutput()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/sentry/JsonSerializer;->serializeToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 189
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Serializing object: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_0
    new-instance v0, Lio/sentry/JsonObjectWriter;

    iget-object v1, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxDepth()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    iget-object p0, p0, Lio/sentry/JsonSerializer;->options:Lio/sentry/SentryOptions;

    .line 192
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 193
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    return-void
.end method
