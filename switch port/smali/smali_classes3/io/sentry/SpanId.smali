.class public final Lio/sentry/SpanId;
.super Ljava/lang/Object;
.source "SpanId.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SpanId$Deserializer;
    }
.end annotation


# static fields
.field public static final EMPTY_ID:Lio/sentry/SpanId;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lio/sentry/SpanId;

    new-instance v1, Ljava/util/UUID;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1}, Lio/sentry/SpanId;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lio/sentry/SpanId;->EMPTY_ID:Lio/sentry/SpanId;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/SpanId;-><init>(Ljava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "value is required"

    .line 15
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/SpanId;->value:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .locals 2

    .line 23
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/sentry/util/StringUtils;->normalizeUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/SpanId;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    check-cast p1, Lio/sentry/SpanId;

    iget-object p0, p0, Lio/sentry/SpanId;->value:Ljava/lang/String;

    .line 31
    iget-object p1, p1, Lio/sentry/SpanId;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lio/sentry/SpanId;->value:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

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

    iget-object p0, p0, Lio/sentry/SpanId;->value:Ljava/lang/String;

    .line 49
    invoke-interface {p1, p0}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SpanId;->value:Ljava/lang/String;

    return-object p0
.end method
