.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 9

    .line 36
    invoke-static {p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mailto:"

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string p1, "MAILTO:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 81
    :cond_1
    new-instance p1, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {p1, p0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x7

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3f

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 45
    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 51
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 53
    :goto_1
    invoke-static {p0}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_8

    if-nez p1, :cond_5

    const-string v1, "to"

    .line 60
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object p1, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 62
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    :cond_5
    const-string v1, "cc"

    .line 65
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 67
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    const-string v2, "bcc"

    .line 69
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v2, "subject"

    .line 73
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "body"

    .line 74
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v8, p0

    move-object v4, p1

    move-object v6, v0

    move-object v5, v1

    move-object v7, v2

    goto :goto_3

    :cond_8
    move-object v4, p1

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 76
    :goto_3
    new-instance p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    return-object v0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p0

    return-object p0
.end method
