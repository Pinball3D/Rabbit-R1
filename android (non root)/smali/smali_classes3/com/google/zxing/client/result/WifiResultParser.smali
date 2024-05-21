.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p0

    return-object p0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 12

    .line 42
    invoke-static {p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WIFI:"

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x5

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "S:"

    const/16 v1, 0x3b

    const/4 v2, 0x0

    .line 47
    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 48
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    const-string p1, "P:"

    .line 51
    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    const-string p1, "T:"

    .line 52
    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "nopass"

    :cond_2
    move-object v4, p1

    const-string p1, "PH2:"

    .line 61
    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p1

    const-string v0, "H:"

    .line 62
    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    const-string v3, "true"

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v11, v0

    goto :goto_1

    .line 66
    :cond_4
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move-object v11, p1

    move v7, v0

    goto :goto_2

    :cond_5
    move-object v11, p1

    :goto_1
    move v7, v2

    :goto_2
    const-string p1, "I:"

    .line 72
    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    const-string p1, "A:"

    .line 73
    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    const-string p1, "E:"

    .line 74
    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    .line 76
    new-instance p0, Lcom/google/zxing/client/result/WifiParsedResult;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_6
    :goto_3
    return-object v0
.end method
