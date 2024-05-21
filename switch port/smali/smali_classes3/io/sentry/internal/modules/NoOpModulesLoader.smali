.class public final Lio/sentry/internal/modules/NoOpModulesLoader;
.super Ljava/lang/Object;
.source "NoOpModulesLoader.java"

# interfaces
.implements Lio/sentry/internal/modules/IModulesLoader;


# static fields
.field private static final instance:Lio/sentry/internal/modules/NoOpModulesLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lio/sentry/internal/modules/NoOpModulesLoader;

    invoke-direct {v0}, Lio/sentry/internal/modules/NoOpModulesLoader;-><init>()V

    sput-object v0, Lio/sentry/internal/modules/NoOpModulesLoader;->instance:Lio/sentry/internal/modules/NoOpModulesLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;
    .locals 1

    sget-object v0, Lio/sentry/internal/modules/NoOpModulesLoader;->instance:Lio/sentry/internal/modules/NoOpModulesLoader;

    return-object v0
.end method


# virtual methods
.method public getOrLoadModules()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
