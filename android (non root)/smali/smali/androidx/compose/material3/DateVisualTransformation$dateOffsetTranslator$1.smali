.class public final Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;
.super Ljava/lang/Object;
.source "DateInput.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/OffsetMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DateVisualTransformation;-><init>(Landroidx/compose/material3/DateInputFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "originalToTransformed",
        "",
        "offset",
        "transformedToOriginal",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/material3/DateVisualTransformation;


# direct methods
.method constructor <init>(Landroidx/compose/material3/DateVisualTransformation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->this$0:Landroidx/compose/material3/DateVisualTransformation;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public originalToTransformed(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->this$0:Landroidx/compose/material3/DateVisualTransformation;

    .line 314
    invoke-static {v0}, Landroidx/compose/material3/DateVisualTransformation;->access$getFirstDelimiterOffset$p(Landroidx/compose/material3/DateVisualTransformation;)I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->this$0:Landroidx/compose/material3/DateVisualTransformation;

    .line 315
    invoke-static {v0}, Landroidx/compose/material3/DateVisualTransformation;->access$getSecondDelimiterOffset$p(Landroidx/compose/material3/DateVisualTransformation;)I

    move-result v0

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->this$0:Landroidx/compose/material3/DateVisualTransformation;

    .line 316
    invoke-static {v0}, Landroidx/compose/material3/DateVisualTransformation;->access$getDateFormatLength$p(Landroidx/compose/material3/DateVisualTransformation;)I

    move-result v0

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->this$0:Landroidx/compose/material3/DateVisualTransformation;

    .line 317
    invoke-static {p0}, Landroidx/compose/material3/DateVisualTransformation;->access$getDateFormatLength$p(Landroidx/compose/material3/DateVisualTransformation;)I

    move-result p0

    add-int/lit8 p1, p0, 0x2

    :goto_0
    return p1
.end method

.method public transformedToOriginal(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->this$0:Landroidx/compose/material3/DateVisualTransformation;

    .line 323
    invoke-static {v0}, Landroidx/compose/material3/DateVisualTransformation;->access$getFirstDelimiterOffset$p(Landroidx/compose/material3/DateVisualTransformation;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->this$0:Landroidx/compose/material3/DateVisualTransformation;

    .line 324
    invoke-static {v0}, Landroidx/compose/material3/DateVisualTransformation;->access$getSecondDelimiterOffset$p(Landroidx/compose/material3/DateVisualTransformation;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->this$0:Landroidx/compose/material3/DateVisualTransformation;

    .line 325
    invoke-static {v0}, Landroidx/compose/material3/DateVisualTransformation;->access$getDateFormatLength$p(Landroidx/compose/material3/DateVisualTransformation;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/compose/material3/DateVisualTransformation$dateOffsetTranslator$1;->this$0:Landroidx/compose/material3/DateVisualTransformation;

    .line 326
    invoke-static {p0}, Landroidx/compose/material3/DateVisualTransformation;->access$getDateFormatLength$p(Landroidx/compose/material3/DateVisualTransformation;)I

    move-result p1

    :goto_0
    return p1
.end method
