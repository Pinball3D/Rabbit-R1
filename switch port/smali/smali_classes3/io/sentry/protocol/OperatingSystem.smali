.class public final Lio/sentry/protocol/OperatingSystem;
.super Ljava/lang/Object;
.source "OperatingSystem.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/OperatingSystem$JsonKeys;,
        Lio/sentry/protocol/OperatingSystem$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "os"


# instance fields
.field private build:Ljava/lang/String;

.field private kernelVersion:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rawDescription:Ljava/lang/String;

.field private rooted:Ljava/lang/Boolean;

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
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/OperatingSystem;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    .line 56
    iget-object p1, p1, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/OperatingSystem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/OperatingSystem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/OperatingSystem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/OperatingSystem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/OperatingSystem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/OperatingSystem;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 18
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    check-cast p1, Lio/sentry/protocol/OperatingSystem;

    iget-object v2, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    .line 112
    iget-object v3, p1, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    .line 113
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    .line 114
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    .line 115
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    .line 116
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    iget-object p1, p1, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    .line 117
    invoke-static {p0, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public getBuild()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    return-object p0
.end method

.method public getKernelVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRawDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    iget-object v5, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    .line 122
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isRooted()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "name"

    .line 141
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "version"

    .line 144
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "raw_description"

    .line 147
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "build"

    .line 150
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "kernel_version"

    .line 153
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    const-string v0, "rooted"

    .line 156
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 159
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    .line 160
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 162
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 165
    :cond_6
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setBuild(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    return-void
.end method

.method public setKernelVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    return-void
.end method

.method public setRawDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    return-void
.end method

.method public setRooted(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

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

    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    return-void
.end method
