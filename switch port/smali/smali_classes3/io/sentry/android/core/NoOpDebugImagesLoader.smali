.class final Lio/sentry/android/core/NoOpDebugImagesLoader;
.super Ljava/lang/Object;
.source "NoOpDebugImagesLoader.java"

# interfaces
.implements Lio/sentry/android/core/IDebugImagesLoader;


# static fields
.field private static final instance:Lio/sentry/android/core/NoOpDebugImagesLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lio/sentry/android/core/NoOpDebugImagesLoader;

    invoke-direct {v0}, Lio/sentry/android/core/NoOpDebugImagesLoader;-><init>()V

    sput-object v0, Lio/sentry/android/core/NoOpDebugImagesLoader;->instance:Lio/sentry/android/core/NoOpDebugImagesLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/NoOpDebugImagesLoader;
    .locals 1

    sget-object v0, Lio/sentry/android/core/NoOpDebugImagesLoader;->instance:Lio/sentry/android/core/NoOpDebugImagesLoader;

    return-object v0
.end method


# virtual methods
.method public clearDebugImages()V
    .locals 0

    return-void
.end method

.method public loadDebugImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
