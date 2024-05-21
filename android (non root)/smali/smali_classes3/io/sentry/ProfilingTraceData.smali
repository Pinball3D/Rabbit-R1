.class public final Lio/sentry/ProfilingTraceData;
.super Ljava/lang/Object;
.source "ProfilingTraceData.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/ProfilingTraceData$JsonKeys;,
        Lio/sentry/ProfilingTraceData$Deserializer;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENVIRONMENT:Ljava/lang/String; = "production"

.field public static final TRUNCATION_REASON_BACKGROUNDED:Ljava/lang/String; = "backgrounded"

.field public static final TRUNCATION_REASON_NORMAL:Ljava/lang/String; = "normal"

.field public static final TRUNCATION_REASON_TIMEOUT:Ljava/lang/String; = "timeout"


# instance fields
.field private androidApiLevel:I

.field private buildId:Ljava/lang/String;

.field private cpuArchitecture:Ljava/lang/String;

.field private deviceCpuFrequencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceCpuFrequenciesReader:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private deviceIsEmulator:Z

.field private deviceLocale:Ljava/lang/String;

.field private deviceManufacturer:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceOsBuildNumber:Ljava/lang/String;

.field private deviceOsName:Ljava/lang/String;

.field private deviceOsVersion:Ljava/lang/String;

.field private devicePhysicalMemoryBytes:Ljava/lang/String;

.field private durationNs:Ljava/lang/String;

.field private environment:Ljava/lang/String;

.field private final measurementsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private release:Ljava/lang/String;

.field private sampledProfile:Ljava/lang/String;

.field private final traceFile:Ljava/io/File;

.field private traceId:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;

.field private transactionName:Ljava/lang/String;

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;"
        }
    .end annotation
.end field

.field private truncationReason:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private versionCode:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 74
    new-instance v0, Ljava/io/File;

    const-string v1, "dummy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Lio/sentry/ITransaction;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/ProfilingTraceData$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/sentry/ProfilingTraceData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lio/sentry/ITransaction;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    move-object v2, v3

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface/range {p2 .. p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-interface/range {p2 .. p2}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-interface/range {p2 .. p2}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    const/4 v7, 0x0

    const-string v8, ""

    new-instance v10, Lio/sentry/ProfilingTraceData$$ExternalSyntheticLambda0;

    move-object v9, v10

    invoke-direct {v10}, Lio/sentry/ProfilingTraceData$$ExternalSyntheticLambda0;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "normal"

    new-instance v20, Ljava/util/HashMap;

    move-object/from16 v19, v20

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-direct/range {v0 .. v19}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->traceFile:Ljava/io/File;

    move-object v1, p8

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequenciesReader:Ljava/util/concurrent/Callable;

    move v1, p7

    iput v1, v0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    const-string v1, ""

    if-eqz p10, :cond_0

    move-object v2, p10

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    if-eqz p11, :cond_1

    move-object v2, p11

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    if-eqz p12, :cond_2

    move-object v2, p12

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    if-eqz p13, :cond_3

    .line 132
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    if-eqz p14, :cond_4

    move-object/from16 v2, p14

    goto :goto_4

    :cond_4
    const-string v2, "0"

    :goto_4
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    const-string v2, "android"

    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    if-eqz p15, :cond_5

    move-object/from16 v2, p15

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    move-object v2, p2

    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    move-object v2, p3

    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    move-object v2, p6

    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->versionCode:Ljava/lang/String;

    if-eqz p16, :cond_6

    move-object/from16 v1, p16

    :cond_6
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    .line 152
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    if-eqz p17, :cond_7

    move-object/from16 v1, p17

    goto :goto_6

    :cond_7
    const-string v1, "production"

    :goto_6
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Lio/sentry/ProfilingTraceData;->isTruncationReasonValid()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "normal"

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    :cond_8
    move-object/from16 v1, p19

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1002(Lio/sentry/ProfilingTraceData;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/ProfilingTraceData;I)I
    .locals 0

    .line 20
    iput p1, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    return p1
.end method

.method static synthetic access$1102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->versionCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lio/sentry/ProfilingTraceData;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2002(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lio/sentry/ProfilingTraceData;)Ljava/util/Map;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/ProfilingTraceData;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    return p1
.end method

.method static synthetic access$902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    return-object p1
.end method

.method private isTruncationReasonValid()Z
    .locals 2

    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    const-string v1, "normal"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    const-string v1, "timeout"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    const-string v0, "backgrounded"

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static synthetic lambda$new$0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAndroidApiLevel()I
    .locals 0

    iget p0, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    return p0
.end method

.method public getBuildId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    return-object p0
.end method

.method public getCpuArchitecture()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceCpuFrequencies()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    return-object p0
.end method

.method public getDeviceLocale()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceOsBuildNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceOsName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getDevicePhysicalMemoryBytes()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    return-object p0
.end method

.method public getDurationNs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    return-object p0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    return-object p0
.end method

.method public getMeasurementsMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    return-object p0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    return-object p0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    return-object p0
.end method

.method public getSampledProfile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    return-object p0
.end method

.method public getTraceFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->traceFile:Ljava/io/File;

    return-object p0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    return-object p0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    return-object p0
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    return-object p0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    return-object p0
.end method

.method public getTruncationReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    return-object p0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public isDeviceIsEmulator()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    return p0
.end method

.method public readDeviceCpuFrequencies()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequenciesReader:Ljava/util/concurrent/Callable;

    .line 355
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "android_api_level"

    .line 395
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "device_locale"

    .line 396
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "device_manufacturer"

    .line 397
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "device_model"

    .line 398
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "device_os_build_number"

    .line 399
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "device_os_name"

    .line 400
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "device_os_version"

    .line 401
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "device_is_emulator"

    .line 402
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Z)Lio/sentry/ObjectWriter;

    const-string v0, "architecture"

    .line 403
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "device_cpu_frequencies"

    .line 405
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "device_physical_memory_bytes"

    .line 406
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "platform"

    .line 407
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "build_id"

    .line 408
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "transaction_name"

    .line 409
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "duration_ns"

    .line 410
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "version_name"

    .line 411
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "version_code"

    .line 412
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->versionCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    .line 413
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "transactions"

    .line 414
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_0
    const-string v0, "transaction_id"

    .line 416
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "trace_id"

    .line 417
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "profile_id"

    .line 418
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "environment"

    .line 419
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "truncation_reason"

    .line 420
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "sampled_profile"

    .line 422
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    const-string v0, "measurements"

    .line 424
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 426
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    .line 427
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 428
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 429
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 432
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setAndroidApiLevel(I)V
    .locals 0

    iput p1, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    return-void
.end method

.method public setBuildId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    return-void
.end method

.method public setCpuArchitecture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCpuFrequencies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    return-void
.end method

.method public setDeviceIsEmulator(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    return-void
.end method

.method public setDeviceLocale(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    return-void
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setDeviceOsBuildNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    return-void
.end method

.method public setDeviceOsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    return-void
.end method

.method public setDevicePhysicalMemoryBytes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    return-void
.end method

.method public setDurationNs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    return-void
.end method

.method public setSampledProfile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public setTransactionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    return-void
.end method

.method public setTransactions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    return-void
.end method

.method public setTruncationReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    return-void
.end method
