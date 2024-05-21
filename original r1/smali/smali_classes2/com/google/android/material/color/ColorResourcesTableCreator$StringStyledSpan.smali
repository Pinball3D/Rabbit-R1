.class Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringStyledSpan"
.end annotation


# instance fields
.field private firstCharacterIndex:I

.field private lastCharacterIndex:I

.field private nameReference:I

.field private styleString:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;)[B
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->styleString:[B

    return-object p0
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->nameReference:I

    .line 313
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->firstCharacterIndex:I

    .line 314
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget p0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->lastCharacterIndex:I

    .line 315
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method
