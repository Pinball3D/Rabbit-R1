.class public final Lcom/google/zxing/client/result/URIParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "URIParsedResult.java"


# instance fields
.field private final title:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 31
    invoke-static {p1}, Lcom/google/zxing/client/result/URIParsedResult;->massageURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    return-void
.end method

.method private static isColonFollowedByPortNumber(Ljava/lang/String;I)Z
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x2f

    .line 78
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    sub-int/2addr v0, p1

    .line 82
    invoke-static {p0, p1, v0}, Lcom/google/zxing/client/result/ResultParser;->isSubstringOfDigits(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private static massageURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 68
    invoke-static {p0, v0}, Lcom/google/zxing/client/result/URIParsedResult;->isColonFollowedByPortNumber(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "http://"

    .line 71
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    .line 56
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/URIParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    .line 57
    invoke-static {p0, v0}, Lcom/google/zxing/client/result/URIParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/URIParsedResult;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public isPossiblyMaliciousURI()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/client/result/URIParsedResult;->uri:Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/google/zxing/client/result/URIResultParser;->isPossiblyMaliciousURI(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
