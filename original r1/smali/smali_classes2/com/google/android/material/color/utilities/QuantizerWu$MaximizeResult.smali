.class final Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;
.super Ljava/lang/Object;
.source "QuantizerWu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/QuantizerWu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MaximizeResult"
.end annotation


# instance fields
.field cutLocation:I

.field maximum:D


# direct methods
.method constructor <init>(ID)V
    .locals 0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    iput-wide p2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    return-void
.end method
