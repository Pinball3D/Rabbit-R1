.class Lcom/google/common/hash/Funnels$StringCharsetFunnel;
.super Ljava/lang/Object;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/Funnel;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringCharsetFunnel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/hash/Funnel<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 109
    instance-of v0, p1, Lcom/google/common/hash/Funnels$StringCharsetFunnel;

    if-eqz v0, :cond_0

    .line 110
    check-cast p1, Lcom/google/common/hash/Funnels$StringCharsetFunnel;

    iget-object p0, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    .line 111
    iget-object p1, p1, Lcom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public funnel(Ljava/lang/CharSequence;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    .line 99
    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/PrimitiveSink;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;

    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 90
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$StringCharsetFunnel;->funnel(Ljava/lang/CharSequence;Lcom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    const-class v0, Lcom/google/common/hash/Funnels$StringCharsetFunnel;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    .line 104
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Funnels.stringFunnel("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 122
    new-instance v0, Lcom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;

    iget-object p0, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method
