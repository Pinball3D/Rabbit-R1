.class Lcom/google/common/io/ByteSource$AsCharSource;
.super Lcom/google/common/io/CharSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsCharSource"
.end annotation


# instance fields
.field final charset:Ljava/nio/charset/Charset;

.field final synthetic this$0:Lcom/google/common/io/ByteSource;


# direct methods
.method constructor <init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    .line 460
    invoke-direct {p0}, Lcom/google/common/io/CharSource;-><init>()V

    .line 461
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public asByteSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/ByteSource;
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    .line 466
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    return-object p0

    .line 469
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/io/CharSource;->asByteSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/ByteSource;

    move-result-object p0

    return-object p0
.end method

.method public openStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public read()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->read()[B

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/common/io/ByteSource$AsCharSource;->this$0:Lcom/google/common/io/ByteSource;

    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/io/ByteSource$AsCharSource;->charset:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".asCharSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
