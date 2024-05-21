.class public final Lio/sentry/protocol/SdkInfo;
.super Ljava/lang/Object;
.source "SdkInfo.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SdkInfo$JsonKeys;,
        Lio/sentry/protocol/SdkInfo$Deserializer;
    }
.end annotation


# instance fields
.field private sdkName:Ljava/lang/String;

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

.field private versionMajor:Ljava/lang/Integer;

.field private versionMinor:Ljava/lang/Integer;

.field private versionPatchlevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SdkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->sdkName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SdkInfo;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->versionMajor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/SdkInfo;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->versionMinor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/SdkInfo;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 22
    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->versionPatchlevel:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public getSdkName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SdkInfo;->sdkName:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/protocol/SdkInfo;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getVersionMajor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SdkInfo;->versionMajor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVersionMinor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SdkInfo;->versionMinor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getVersionPatchlevel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SdkInfo;->versionPatchlevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/SdkInfo;->sdkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "sdk_name"

    .line 95
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SdkInfo;->sdkName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/SdkInfo;->versionMajor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v0, "version_major"

    .line 98
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SdkInfo;->versionMajor:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SdkInfo;->versionMinor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v0, "version_minor"

    .line 101
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SdkInfo;->versionMinor:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/SdkInfo;->versionPatchlevel:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v0, "version_patchlevel"

    .line 104
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SdkInfo;->versionPatchlevel:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/SdkInfo;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 107
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/SdkInfo;->unknown:Ljava/util/Map;

    .line 108
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 112
    :cond_4
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setSdkName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->sdkName:Ljava/lang/String;

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

    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setVersionMajor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->versionMajor:Ljava/lang/Integer;

    return-void
.end method

.method public setVersionMinor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->versionMinor:Ljava/lang/Integer;

    return-void
.end method

.method public setVersionPatchlevel(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->versionPatchlevel:Ljava/lang/Integer;

    return-void
.end method
