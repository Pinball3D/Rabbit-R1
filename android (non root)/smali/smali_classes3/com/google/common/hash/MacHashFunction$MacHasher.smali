.class final Lcom/google/common/hash/MacHashFunction$MacHasher;
.super Lcom/google/common/hash/AbstractByteHasher;
.source "MacHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/MacHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MacHasher"
.end annotation


# instance fields
.field private done:Z

.field private final mac:Ljavax/crypto/Mac;


# direct methods
.method private constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    iput-object p1, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/crypto/Mac;Lcom/google/common/hash/MacHashFunction$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/common/hash/MacHashFunction$MacHasher;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method

.method private checkNotDone()V
    .locals 1

    iget-boolean p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->done:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Cannot re-use a Hasher after calling hash() on it"

    .line 132
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->done:Z

    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 139
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method protected update(B)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 109
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method protected update(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    .line 127
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 128
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected update([B)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 115
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method protected update([BII)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
