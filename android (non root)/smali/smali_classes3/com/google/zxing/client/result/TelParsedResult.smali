.class public final Lcom/google/zxing/client/result/TelParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "TelParsedResult.java"


# instance fields
.field private final number:Ljava/lang/String;

.field private final telURI:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/client/result/TelParsedResult;->telURI:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/result/TelParsedResult;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    .line 52
    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/google/zxing/client/result/TelParsedResult;->title:Ljava/lang/String;

    .line 53
    invoke-static {p0, v0}, Lcom/google/zxing/client/result/TelParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    return-object p0
.end method

.method public getTelURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/TelParsedResult;->telURI:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/TelParsedResult;->title:Ljava/lang/String;

    return-object p0
.end method
