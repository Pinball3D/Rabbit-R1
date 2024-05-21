.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResChunkHeader"
.end annotation


# instance fields
.field private final chunkSize:I

.field private final headerSize:S

.field private final type:S


# direct methods
.method constructor <init>(SSI)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    iput-short p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    iput p3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    return-void
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->type:S

    .line 186
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-short v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->headerSize:S

    .line 187
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->chunkSize:I

    .line 188
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method
