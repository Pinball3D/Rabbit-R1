.class public Landroidx/media3/common/ParserException;
.super Ljava/io/IOException;
.source "ParserException.java"


# instance fields
.field public final contentIsMalformed:Z

.field public final dataType:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean p3, p0, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    iput p4, p0, Landroidx/media3/common/ParserException;->dataType:I

    return-void
.end method

.method public static createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;
    .locals 2

    .line 50
    new-instance v0, Landroidx/media3/common/ParserException;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, v1}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static createForMalformedDataOfUnknownType(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;
    .locals 3

    .line 37
    new-instance v0, Landroidx/media3/common/ParserException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;
    .locals 3

    .line 63
    new-instance v0, Landroidx/media3/common/ParserException;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static createForManifestWithUnsupportedFeature(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;
    .locals 3

    .line 77
    new-instance v0, Landroidx/media3/common/ParserException;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;
    .locals 4

    .line 89
    new-instance v0, Landroidx/media3/common/ParserException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{contentIsMalformed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/ParserException;->dataType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
