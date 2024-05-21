.class public final Ltech/rabbit/r1launcher/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "tech.rabbit.r1launcher.r1"

.field public static final BRANCH:Ljava/lang/String; = ""

.field public static final BUILD_BY:Ljava/lang/String; = "jenkins"

.field public static final BUILD_TIME:Ljava/lang/String; = "2024-04-19 17:39:07/GMT-08:00"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final COMMIT_ID:Ljava/lang/String; = "4fd1bbff"

.field public static final DEBUG:Z = false

.field public static final FACTORY_MODE_ENABLE:Ljava/lang/Boolean;

.field public static final FLAVOR:Ljava/lang/String; = "productionEnv"

.field public static final HAS_UNCOMMITTED_CHANGE:Ljava/lang/Boolean;

.field public static final RABBIT_SERVICE_URL:Ljava/lang/String; = "wss://r1-api.rabbit.tech/session"

.field public static final SENTRY_SAMPLE_RATE:D = 0.0

.field public static final VERSION_CODE:I = 0x7bd85f24

.field public static final VERSION_NAME:Ljava/lang/String; = "20240418.0-5-g4fd1bbff-dirty"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/BuildConfig;->FACTORY_MODE_ENABLE:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/BuildConfig;->HAS_UNCOMMITTED_CHANGE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
