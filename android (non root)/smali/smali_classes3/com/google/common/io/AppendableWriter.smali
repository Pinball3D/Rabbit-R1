.class Lcom/google/common/io/AppendableWriter;
.super Ljava/io/Writer;
.source "AppendableWriter.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private closed:Z

.field private final target:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Appendable;

    iput-object p1, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    return-void
.end method

.method private checkNotClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p0, p0, Lcom/google/common/io/AppendableWriter;->closed:Z

    if-nez p0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot write to a closed writer."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    .line 105
    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    .line 112
    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    iget-object v0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    .line 119
    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/io/AppendableWriter;->append(C)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/io/AppendableWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/AppendableWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/io/AppendableWriter;->closed:Z

    iget-object p0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    .line 97
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 98
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    iget-object p0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    .line 89
    instance-of v0, p0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Ljava/io/Flushable;

    invoke-interface {p0}, Ljava/io/Flushable;->flush()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    iget-object p0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    int-to-char p1, p1

    .line 68
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    iget-object p0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    .line 75
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    iget-object p0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    add-int/2addr p3, p2

    .line 83
    invoke-interface {p0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/google/common/io/AppendableWriter;->checkNotClosed()V

    iget-object p0, p0, Lcom/google/common/io/AppendableWriter;->target:Ljava/lang/Appendable;

    .line 58
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
