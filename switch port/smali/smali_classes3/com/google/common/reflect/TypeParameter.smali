.class public abstract Lcom/google/common/reflect/TypeParameter;
.super Lcom/google/common/reflect/TypeCapture;
.source "TypeParameter.java"


# annotations
.annotation runtime Lcom/google/common/reflect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeCapture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final typeVariable:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/google/common/reflect/TypeCapture;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeParameter;->capture()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 53
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const-string v2, "%s should be a type variable."

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 54
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    iput-object v0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 64
    instance-of v0, p1, Lcom/google/common/reflect/TypeParameter;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/google/common/reflect/TypeParameter;

    iget-object p0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 66
    iget-object p1, p1, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/reflect/TypeParameter;->typeVariable:Ljava/lang/reflect/TypeVariable;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
