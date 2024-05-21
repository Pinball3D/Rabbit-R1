.class public final Lio/sentry/protocol/SentryId;
.super Ljava/lang/Object;
.source "SentryId.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryId$Deserializer;
    }
.end annotation


# static fields
.field public static final EMPTY_ID:Lio/sentry/protocol/SentryId;


# instance fields
.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lio/sentry/protocol/SentryId;

    new-instance v1, Ljava/util/UUID;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1}, Lio/sentry/protocol/SentryId;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 20
    move-object v1, v0

    check-cast v1, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lio/sentry/protocol/SentryId;-><init>(Ljava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lio/sentry/util/StringUtils;->normalizeUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/protocol/SentryId;->fromStringSentryId(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    return-void
.end method

.method private fromStringSentryId(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x8

    const-string v0, "-"

    .line 57
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xd

    .line 58
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x12

    .line 59
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x17

    .line 60
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x24

    if-ne p0, v0, :cond_1

    .line 70
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String representation of SentryId has either 32 (UUID no dashes) or 36 characters long (completed UUID). Received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    check-cast p1, Lio/sentry/protocol/SentryId;

    iget-object p0, p0, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    .line 44
    iget-object p1, p1, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    .line 49
    invoke-virtual {p0}, Ljava/util/UUID;->hashCode()I

    move-result p0

    return p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lio/sentry/protocol/SentryId;->uuid:Ljava/util/UUID;

    .line 36
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/StringUtils;->normalizeUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
