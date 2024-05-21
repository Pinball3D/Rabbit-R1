.class public final Lcom/google/zxing/client/result/SMSParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "SMSParsedResult.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final numbers:[Ljava/lang/String;

.field private final subject:Ljava/lang/String;

.field private final vias:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 37
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 38
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 108
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 109
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 110
    invoke-static {p0, v0}, Lcom/google/zxing/client/result/SMSParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    return-object p0
.end method

.method public getSMSURI()Ljava/lang/String;
    .locals 6

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sms:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 58
    array-length v5, v5

    if-ge v3, v5, :cond_2

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    const/16 v5, 0x2c

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->numbers:[Ljava/lang/String;

    .line 64
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 65
    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    const-string v5, ";via="

    .line 66
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    .line 67
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-nez v3, :cond_5

    if-eqz v1, :cond_8

    :cond_5
    const/16 v2, 0x3f

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    const-string v2, "body="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/zxing/client/result/SMSParsedResult;->body:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v1, :cond_8

    if-eqz v3, :cond_7

    const/16 v1, 0x26

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "subject="

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->subject:Ljava/lang/String;

    return-object p0
.end method

.method public getVias()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/SMSParsedResult;->vias:[Ljava/lang/String;

    return-object p0
.end method
