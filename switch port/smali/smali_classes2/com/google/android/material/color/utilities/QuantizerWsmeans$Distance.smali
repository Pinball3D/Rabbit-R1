.class final Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
.super Ljava/lang/Object;
.source "QuantizerWsmeans.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/QuantizerWsmeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Distance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;",
        ">;"
    }
.end annotation


# instance fields
.field distance:D

.field index:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-wide v0, p1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 45
    check-cast p1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->compareTo(Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;)I

    move-result p0

    return p0
.end method
