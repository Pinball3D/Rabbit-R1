.class public final Lio/sentry/protocol/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Request$JsonKeys;,
        Lio/sentry/protocol/Request$Deserializer;
    }
.end annotation


# instance fields
.field private apiTarget:Ljava/lang/String;

.field private bodySize:Ljava/lang/Long;

.field private cookies:Ljava/lang/String;

.field private data:Ljava/lang/Object;

.field private env:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Ljava/lang/String;

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

.field private method:Ljava/lang/String;

.field private other:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queryString:Ljava/lang/String;

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

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/Request;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iget-object v0, p1, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    .line 130
    iget-object v0, p1, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    .line 133
    iget-object v0, p1, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    .line 134
    iget-object v0, p1, Lio/sentry/protocol/Request;->other:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Request;->other:Ljava/util/Map;

    .line 135
    iget-object v0, p1, Lio/sentry/protocol/Request;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/Request;->unknown:Ljava/util/Map;

    .line 136
    iget-object v0, p1, Lio/sentry/protocol/Request;->data:Ljava/lang/Object;

    iput-object v0, p0, Lio/sentry/protocol/Request;->data:Ljava/lang/Object;

    .line 137
    iget-object v0, p1, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

    .line 139
    iget-object p1, p1, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->data:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/Request;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/Request;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/Request;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->other:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lio/sentry/protocol/Request;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 54
    iput-object p1, p0, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

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

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    check-cast p1, Lio/sentry/protocol/Request;

    iget-object v2, p0, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    .line 227
    iget-object v3, p1, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    .line 228
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

    .line 229
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    .line 230
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    iget-object v3, p1, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    .line 231
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    iget-object v3, p1, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    .line 232
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

    iget-object v3, p1, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

    .line 233
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

    .line 234
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    iget-object p1, p1, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    .line 235
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

.method public getApiTarget()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    return-object p0
.end method

.method public getBodySize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

    return-object p0
.end method

.method public getCookies()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Request;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getEnvs()Ljava/util/Map;
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

    iget-object p0, p0, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    return-object p0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    return-object p0
.end method

.method public getOthers()Ljava/util/Map;
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

    iget-object p0, p0, Lio/sentry/protocol/Request;->other:Ljava/util/Map;

    return-object p0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

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

    iget-object p0, p0, Lio/sentry/protocol/Request;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 9

    iget-object v0, p0, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    iget-object v5, p0, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    iget-object v6, p0, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

    iget-object v7, p0, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

    iget-object v8, p0, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    .line 240
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

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

    .line 282
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "url"

    .line 284
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "method"

    .line 287
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "query_string"

    .line 290
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/Request;->data:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v0, "data"

    .line 293
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->data:Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "cookies"

    .line 296
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    if-eqz v0, :cond_5

    const-string v0, "headers"

    .line 299
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    if-eqz v0, :cond_6

    const-string v0, "env"

    .line 302
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/Request;->other:Ljava/util/Map;

    if-eqz v0, :cond_7

    const-string v0, "other"

    .line 305
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->other:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "fragment"

    .line 308
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

    if-eqz v0, :cond_9

    const-string v0, "body_size"

    .line 311
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "api_target"

    .line 314
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_a
    iget-object v0, p0, Lio/sentry/protocol/Request;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 317
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/Request;->unknown:Ljava/util/Map;

    .line 318
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 319
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 320
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 323
    :cond_b
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setApiTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Request;->apiTarget:Ljava/lang/String;

    return-void
.end method

.method public setBodySize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Request;->bodySize:Ljava/lang/Long;

    return-void
.end method

.method public setCookies(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Request;->cookies:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Request;->data:Ljava/lang/Object;

    return-void
.end method

.method public setEnvs(Ljava/util/Map;)V
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

    .line 195
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/Request;->env:Ljava/util/Map;

    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Request;->fragment:Ljava/lang/String;

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

    .line 187
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/Request;->headers:Ljava/util/Map;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Request;->method:Ljava/lang/String;

    return-void
.end method

.method public setOthers(Ljava/util/Map;)V
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

    .line 203
    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/Request;->other:Ljava/util/Map;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Request;->queryString:Ljava/lang/String;

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

    iput-object p1, p0, Lio/sentry/protocol/Request;->unknown:Ljava/util/Map;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/protocol/Request;->url:Ljava/lang/String;

    return-void
.end method
