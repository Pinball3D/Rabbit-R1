.class public Lcom/google/android/exoplayer2/decoder/CryptoException;
.super Ljava/lang/Exception;
.source "CryptoException.java"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/exoplayer2/decoder/CryptoException;->errorCode:I

    return-void
.end method
