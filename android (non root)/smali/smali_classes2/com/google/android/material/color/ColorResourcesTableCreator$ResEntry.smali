.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResEntry"
.end annotation


# static fields
.field private static final DATA_TYPE_AARRGGBB:B = 0x1ct

.field private static final ENTRY_SIZE:S = 0x8s

.field private static final FLAG_PUBLIC:S = 0x2s

.field private static final SIZE:I = 0x10

.field private static final VALUE_SIZE:S = 0x8s


# instance fields
.field private final data:I

.field private final keyStringIndex:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->keyStringIndex:I

    iput p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->data:I

    return-void
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 532
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x2

    .line 533
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->keyStringIndex:I

    .line 534
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 535
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$600(S)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 536
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;->data:I

    .line 537
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1ct
    .end array-data
.end method
