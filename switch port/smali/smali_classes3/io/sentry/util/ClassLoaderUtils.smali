.class public final Lio/sentry/util/ClassLoaderUtils;
.super Ljava/lang/Object;
.source "ClassLoaderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classLoaderOrDefault(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    if-nez p0, :cond_0

    .line 11
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_0
    return-object p0
.end method
