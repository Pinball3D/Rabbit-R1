.class public final Lcom/google/zxing/qrcode/decoder/Version$ECB;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECB"
.end annotation


# instance fields
.field private final count:I

.field private final dataCodewords:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    iput p2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    return p0
.end method

.method public getDataCodewords()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    return p0
.end method
