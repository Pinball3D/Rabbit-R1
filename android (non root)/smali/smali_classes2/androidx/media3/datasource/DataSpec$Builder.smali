.class public final Landroidx/media3/datasource/DataSpec$Builder;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DataSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private customData:Ljava/lang/Object;

.field private flags:I

.field private httpBody:[B

.field private httpMethod:I

.field private httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field private length:J

.field private position:J

.field private uri:Landroid/net/Uri;

.field private uriPositionOffset:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->httpMethod:I

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->length:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/datasource/DataSpec;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    .line 76
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    iput-wide v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->uriPositionOffset:J

    .line 77
    iget v0, p1, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iput v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->httpMethod:I

    .line 78
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    iput-object v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->httpBody:[B

    .line 79
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iput-object v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    .line 80
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->position:J

    .line 81
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->length:J

    .line 82
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->key:Ljava/lang/String;

    .line 83
    iget v0, p1, Landroidx/media3/datasource/DataSpec;->flags:I

    iput v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->flags:I

    .line 84
    iget-object p1, p1, Landroidx/media3/datasource/DataSpec;->customData:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->customData:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSpec$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSpec$Builder;-><init>(Landroidx/media3/datasource/DataSpec;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/datasource/DataSpec;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    .line 230
    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v1, Landroidx/media3/datasource/DataSpec;

    iget-object v4, v0, Landroidx/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    iget-wide v5, v0, Landroidx/media3/datasource/DataSpec$Builder;->uriPositionOffset:J

    iget v7, v0, Landroidx/media3/datasource/DataSpec$Builder;->httpMethod:I

    iget-object v8, v0, Landroidx/media3/datasource/DataSpec$Builder;->httpBody:[B

    iget-object v9, v0, Landroidx/media3/datasource/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v10, v0, Landroidx/media3/datasource/DataSpec$Builder;->position:J

    iget-wide v12, v0, Landroidx/media3/datasource/DataSpec$Builder;->length:J

    iget-object v14, v0, Landroidx/media3/datasource/DataSpec$Builder;->key:Ljava/lang/String;

    iget v15, v0, Landroidx/media3/datasource/DataSpec$Builder;->flags:I

    iget-object v0, v0, Landroidx/media3/datasource/DataSpec$Builder;->customData:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v17}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Landroidx/media3/datasource/DataSpec$1;)V

    return-object v1
.end method

.method public setCustomData(Ljava/lang/Object;)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->customData:Ljava/lang/Object;

    return-object p0
.end method

.method public setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->flags:I

    return-object p0
.end method

.method public setHttpBody([B)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->httpBody:[B

    return-object p0
.end method

.method public setHttpMethod(I)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->httpMethod:I

    return-object p0
.end method

.method public setHttpRequestHeaders(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/DataSpec$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->httpRequestHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public setLength(J)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->length:J

    return-object p0
.end method

.method public setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->position:J

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    .line 95
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUriPositionOffset(J)Landroidx/media3/datasource/DataSpec$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/datasource/DataSpec$Builder;->uriPositionOffset:J

    return-object p0
.end method
