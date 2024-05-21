.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.super Ljava/lang/Object;
.source "DecodedObject.java"


# instance fields
.field private final newPosition:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    return-void
.end method


# virtual methods
.method final getNewPosition()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    return p0
.end method
