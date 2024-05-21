.class public final enum Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
.super Ljava/lang/Enum;
.source "AppStartMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/performance/AppStartMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppStartType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

.field public static final enum COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

.field public static final enum UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

.field public static final enum WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;


# direct methods
.method private static synthetic $values()[Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .locals 3

    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    sget-object v1, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    sget-object v2, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    filled-new-array {v0, v1, v2}, [Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->UNKNOWN:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 30
    new-instance v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    const-string v1, "COLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 31
    new-instance v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    const-string v1, "WARM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->WARM:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 28
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->$values()[Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->$VALUES:[Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .locals 1

    const-class v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 28
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    return-object p0
.end method

.method public static values()[Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;
    .locals 1

    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->$VALUES:[Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    .line 28
    invoke-virtual {v0}, [Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    return-object v0
.end method
