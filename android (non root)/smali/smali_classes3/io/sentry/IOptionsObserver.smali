.class public interface abstract Lio/sentry/IOptionsObserver;
.super Ljava/lang/Object;
.source "IOptionsObserver.java"


# virtual methods
.method public abstract setDist(Ljava/lang/String;)V
.end method

.method public abstract setEnvironment(Ljava/lang/String;)V
.end method

.method public abstract setProguardUuid(Ljava/lang/String;)V
.end method

.method public abstract setRelease(Ljava/lang/String;)V
.end method

.method public abstract setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
.end method

.method public abstract setTags(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
