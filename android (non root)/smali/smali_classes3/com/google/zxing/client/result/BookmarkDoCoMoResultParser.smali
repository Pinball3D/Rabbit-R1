.class public final Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "BookmarkDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object p0

    return-object p0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 2

    .line 28
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MEBKM:"

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "TITLE:"

    const/4 v1, 0x1

    .line 32
    invoke-static {p1, p0, v1}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "URL:"

    .line 33
    invoke-static {v1, p0}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 37
    aget-object p0, p0, v1

    .line 38
    invoke-static {p0}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v0, p0, p1}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method
