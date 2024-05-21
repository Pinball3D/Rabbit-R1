.class public final Lcom/google/common/base/Equivalence$Wrapper;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final equivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final reference:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/base/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/base/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Equivalence;

    iput-object p1, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    iput-object p2, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;Lcom/google/common/base/Equivalence$1;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Equivalence$Wrapper;-><init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 240
    :cond_0
    instance-of v0, p1, Lcom/google/common/base/Equivalence$Wrapper;

    if-eqz v0, :cond_1

    .line 241
    check-cast p1, Lcom/google/common/base/Equivalence$Wrapper;

    iget-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    .line 243
    iget-object v1, p1, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    iget-object p0, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    .line 250
    iget-object p1, p1, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0
    .annotation runtime Lcom/google/common/base/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    iget-object p0, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    .line 259
    invoke-virtual {v0, p0}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/common/base/Equivalence$Wrapper;->equivalence:Lcom/google/common/base/Equivalence;

    .line 268
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wrap("

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
