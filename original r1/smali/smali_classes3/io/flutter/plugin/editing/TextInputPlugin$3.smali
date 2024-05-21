.class Lio/flutter/plugin/editing/TextInputPlugin$3;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"

# interfaces
.implements Lio/flutter/plugin/editing/TextInputPlugin$MinMax;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/TextInputPlugin;->saveEditableSizeAndTransform(DD[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/editing/TextInputPlugin;

.field final synthetic val$isAffine:Z

.field final synthetic val$matrix:[D

.field final synthetic val$minMax:[D


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/TextInputPlugin;Z[D[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    iput-boolean p2, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$isAffine:Z

    iput-object p3, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    iput-object p4, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inspect(DD)V
    .locals 10

    iget-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$isAffine:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    .line 516
    aget-wide v4, v0, v3

    mul-double/2addr v4, p1

    const/4 v6, 0x7

    aget-wide v6, v0, v6

    mul-double/2addr v6, p3

    add-double/2addr v4, v6

    const/16 v6, 0xf

    aget-wide v6, v0, v6

    add-double/2addr v4, v6

    div-double/2addr v1, v4

    :goto_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$matrix:[D

    const/4 v4, 0x0

    .line 517
    aget-wide v5, v0, v4

    mul-double/2addr v5, p1

    const/4 v7, 0x4

    aget-wide v7, v0, v7

    mul-double/2addr v7, p3

    add-double/2addr v5, v7

    const/16 v7, 0xc

    aget-wide v7, v0, v7

    add-double/2addr v5, v7

    mul-double/2addr v5, v1

    const/4 v7, 0x1

    .line 518
    aget-wide v8, v0, v7

    mul-double/2addr v8, p1

    const/4 p1, 0x5

    aget-wide p1, v0, p1

    mul-double/2addr p1, p3

    add-double/2addr v8, p1

    const/16 p1, 0xd

    aget-wide p1, v0, p1

    add-double/2addr v8, p1

    mul-double/2addr v8, v1

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$3;->val$minMax:[D

    .line 520
    aget-wide p1, p0, v4

    cmpg-double p1, v5, p1

    if-gez p1, :cond_1

    .line 521
    aput-wide v5, p0, v4

    goto :goto_1

    .line 522
    :cond_1
    aget-wide p1, p0, v7

    cmpl-double p1, v5, p1

    if-lez p1, :cond_2

    .line 523
    aput-wide v5, p0, v7

    :cond_2
    :goto_1
    const/4 p1, 0x2

    .line 526
    aget-wide p2, p0, p1

    cmpg-double p2, v8, p2

    if-gez p2, :cond_3

    .line 527
    aput-wide v8, p0, p1

    goto :goto_2

    .line 528
    :cond_3
    aget-wide p1, p0, v3

    cmpl-double p1, v8, p1

    if-lez p1, :cond_4

    .line 529
    aput-wide v8, p0, v3

    :cond_4
    :goto_2
    return-void
.end method
