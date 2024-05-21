.class public final Lio/sentry/protocol/SdkVersion;
.super Ljava/lang/Object;
.source "SdkVersion.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SdkVersion$JsonKeys;,
        Lio/sentry/protocol/SdkVersion$Deserializer;
    }
.end annotation


# instance fields
.field private deserializedIntegrations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deserializedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/sentry/protocol/SentryPackage;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

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

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name is required."

    .line 73
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    const-string p1, "version is required."

    .line 74
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SdkVersion;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 28
    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->deserializedPackages:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SdkVersion;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 28
    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->deserializedIntegrations:Ljava/util/Set;

    return-object p1
.end method

.method public static updateSdkVersion(Lio/sentry/protocol/SdkVersion;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/protocol/SdkVersion;
    .locals 1

    const-string v0, "name is required."

    .line 151
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "version is required."

    .line 152
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p0, :cond_0

    .line 155
    new-instance p0, Lio/sentry/protocol/SdkVersion;

    invoke-direct {p0, p1, p2}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lio/sentry/protocol/SdkVersion;->setName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p2}, Lio/sentry/protocol/SdkVersion;->setVersion(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addIntegration(Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    return-void
.end method

.method public addPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    check-cast p1, Lio/sentry/protocol/SdkVersion;

    iget-object v2, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    .line 168
    iget-object v3, p1, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    iget-object p1, p1, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getIntegrationSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->deserializedIntegrations:Ljava/util/Set;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryIntegrationPackageStorage;->getIntegrations()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getIntegrations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->deserializedIntegrations:Ljava/util/Set;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryIntegrationPackageStorage;->getIntegrations()Ljava/util/Set;

    move-result-object p0

    .line 132
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/sentry/protocol/SentryPackage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->deserializedPackages:Ljava/util/Set;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryIntegrationPackageStorage;->getPackages()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryPackage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->deserializedPackages:Ljava/util/Set;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryIntegrationPackageStorage;->getPackages()Ljava/util/Set;

    move-result-object p0

    .line 112
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
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

    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    .line 173
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "name"

    .line 203
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    const-string v0, "version"

    .line 204
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 205
    invoke-virtual {p0}, Lio/sentry/protocol/SdkVersion;->getPackageSet()Ljava/util/Set;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lio/sentry/protocol/SdkVersion;->getIntegrationSet()Ljava/util/Set;

    move-result-object v1

    .line 207
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "packages"

    .line 208
    invoke-interface {p1, v2}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 210
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "integrations"

    .line 211
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SdkVersion;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 214
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

    iget-object v2, p0, Lio/sentry/protocol/SdkVersion;->unknown:Ljava/util/Map;

    .line 215
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 216
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 219
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name is required."

    .line 90
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->name:Ljava/lang/String;

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

    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "version is required."

    .line 82
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/protocol/SdkVersion;->version:Ljava/lang/String;

    return-void
.end method
