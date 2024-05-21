.class public final Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;
.super Ljava/lang/Object;
.source "NoOpDebugMetaLoader.java"

# interfaces
.implements Lio/sentry/internal/debugmeta/IDebugMetaLoader;


# static fields
.field private static final instance:Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    invoke-direct {v0}, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;-><init>()V

    sput-object v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->instance:Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;
    .locals 1

    sget-object v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->instance:Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    return-object v0
.end method


# virtual methods
.method public loadDebugMeta()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
