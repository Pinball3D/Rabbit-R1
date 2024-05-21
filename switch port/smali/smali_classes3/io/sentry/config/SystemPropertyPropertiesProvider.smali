.class final Lio/sentry/config/SystemPropertyPropertiesProvider;
.super Lio/sentry/config/AbstractPropertiesProvider;
.source "SystemPropertyPropertiesProvider.java"


# static fields
.field private static final PREFIX:Ljava/lang/String; = "sentry."


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "sentry."

    .line 10
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/config/AbstractPropertiesProvider;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method
