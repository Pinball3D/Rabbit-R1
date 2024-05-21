.class public final Lio/sentry/SentryLockReason;
.super Ljava/lang/Object;
.source "SentryLockReason.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryLockReason$JsonKeys;,
        Lio/sentry/SentryLockReason$Deserializer;
    }
.end annotation


# static fields
.field public static final ANY:I = 0xf

.field public static final BLOCKED:I = 0x8

.field public static final LOCKED:I = 0x1

.field public static final SLEEPING:I = 0x4

.field public static final WAITING:I = 0x2


# instance fields
.field private address:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private threadId:Ljava/lang/Long;

.field private type:I

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryLockReason;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget v0, p1, Lio/sentry/SentryLockReason;->type:I

    iput v0, p0, Lio/sentry/SentryLockReason;->type:I

    .line 33
    iget-object v0, p1, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lio/sentry/SentryLockReason;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SentryLockReason;->packageName:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lio/sentry/SentryLockReason;->className:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/SentryLockReason;->className:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lio/sentry/SentryLockReason;->threadId:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/SentryLockReason;->threadId:Ljava/lang/Long;

    .line 37
    iget-object p1, p1, Lio/sentry/SentryLockReason;->unknown:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryLockReason;->unknown:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/SentryLockReason;I)I
    .locals 0

    .line 13
    iput p1, p0, Lio/sentry/SentryLockReason;->type:I

    return p1
.end method

.method static synthetic access$102(Lio/sentry/SentryLockReason;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/SentryLockReason;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/SentryLockReason;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/SentryLockReason;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/SentryLockReason;->className:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/SentryLockReason;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/sentry/SentryLockReason;->threadId:Ljava/lang/Long;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    check-cast p1, Lio/sentry/SentryLockReason;

    iget-object p0, p0, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    .line 90
    iget-object p1, p1, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    invoke-static {p0, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryLockReason;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryLockReason;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getThreadId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryLockReason;->threadId:Ljava/lang/Long;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lio/sentry/SentryLockReason;->type:I

    return p0
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

    iget-object p0, p0, Lio/sentry/SentryLockReason;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    .line 95
    filled-new-array {p0}, [Ljava/lang/Object;

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

    .line 122
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "type"

    .line 123
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/SentryLockReason;->type:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "address"

    .line 125
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/SentryLockReason;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "package_name"

    .line 128
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLockReason;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryLockReason;->className:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "class_name"

    .line 131
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLockReason;->className:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/SentryLockReason;->threadId:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const-string v0, "thread_id"

    .line 134
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryLockReason;->threadId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/SentryLockReason;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 137
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

    iget-object v2, p0, Lio/sentry/SentryLockReason;->unknown:Ljava/util/Map;

    .line 138
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 139
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 140
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 143
    :cond_4
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryLockReason;->address:Ljava/lang/String;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryLockReason;->className:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryLockReason;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setThreadId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryLockReason;->threadId:Ljava/lang/Long;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lio/sentry/SentryLockReason;->type:I

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

    iput-object p1, p0, Lio/sentry/SentryLockReason;->unknown:Ljava/util/Map;

    return-void
.end method
