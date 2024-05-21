.class public final Lio/sentry/protocol/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Response$JsonKeys;,
        Lio/sentry/protocol/Response$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "response"


# instance fields
.field private bodySize:Ljava/lang/Long;

.field private cookies:Ljava/lang/String;

.field private data:Ljava/lang/Object;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:Ljava/lang/Integer;

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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/Response;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, Lio/sentry/protocol/Response;->cookies:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Response;->cookies:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lio/sentry/protocol/Response;->headers:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Response;->headers:Ljava/util/Map;

    .line 56
    iget-object v0, p1, Lio/sentry/protocol/Response;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Response;->unknown:Ljava/util/Map;

    .line 57
    iget-object v0, p1, Lio/sentry/protocol/Response;->statusCode:Ljava/lang/Integer;

    iput-object v0, p0, Lio/sentry/protocol/Response;->statusCode:Ljava/lang/Integer;

    .line 58
    iget-object v0, p1, Lio/sentry/protocol/Response;->bodySize:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Response;->bodySize:Ljava/lang/Long;

    .line 59
    iget-object p1, p1, Lio/sentry/protocol/Response;->data:Ljava/lang/Object;

    iput-object p1, p0, Lio/sentry/protocol/Response;->data:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/Response;->cookies:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/Response;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/Response;->headers:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/Response;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/Response;->statusCode:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/Response;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/Response;->bodySize:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    iput-object p1, p0, Lio/sentry/protocol/Response;->data:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public getBodySize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Response;->bodySize:Ljava/lang/Long;

    return-object p0
.end method

.method public getCookies()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Response;->cookies:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Response;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/Response;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getStatusCode()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Response;->statusCode:Ljava/lang/Integer;

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

    iget-object p0, p0, Lio/sentry/protocol/Response;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/Response;->cookies:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "cookies"

    .line 129
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Response;->cookies:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Response;->headers:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v0, "headers"

    .line 132
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Response;->headers:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Response;->statusCode:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v0, "status_code"

    .line 135
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Response;->statusCode:Ljava/lang/Integer;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/Response;->bodySize:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const-string v0, "body_size"

    .line 138
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Response;->bodySize:Ljava/lang/Long;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/Response;->data:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const-string v0, "data"

    .line 141
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Response;->data:Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/Response;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 144
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/Response;->unknown:Ljava/util/Map;

    .line 145
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 147
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 150
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setBodySize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Response;->bodySize:Ljava/lang/Long;

    return-void
.end method

.method public setCookies(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Response;->cookies:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Response;->data:Ljava/lang/Object;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/Response;->headers:Ljava/util/Map;

    return-void
.end method

.method public setStatusCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Response;->statusCode:Ljava/lang/Integer;

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

    iput-object p1, p0, Lio/sentry/protocol/Response;->unknown:Ljava/util/Map;

    return-void
.end method
