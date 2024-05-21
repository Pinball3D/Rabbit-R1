.class public Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;
.super Ljava/lang/Object;
.source "FlutterMutatorsStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;,
        Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;
    }
.end annotation


# instance fields
.field private finalClippingPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private finalMatrix:Landroid/graphics/Matrix;

.field private mutators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->mutators:Ljava/util/List;

    .line 141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->finalMatrix:Landroid/graphics/Matrix;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->finalClippingPaths:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFinalClippingPaths()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->finalClippingPaths:Ljava/util/List;

    return-object p0
.end method

.method public getFinalMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->finalMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getMutators()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->mutators:Ljava/util/List;

    return-object p0
.end method

.method public pushClipRRect(IIII[F)V
    .locals 1

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    new-instance p1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;

    invoke-direct {p1, p0, v0, p5}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;-><init>(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;Landroid/graphics/Rect;[F)V

    iget-object p2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->mutators:Ljava/util/List;

    .line 183
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 185
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->finalMatrix:Landroid/graphics/Matrix;

    .line 186
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->finalClippingPaths:Ljava/util/List;

    .line 187
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public pushClipRect(IIII)V
    .locals 1

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 162
    new-instance p1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;

    invoke-direct {p1, p0, v0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;-><init>(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;Landroid/graphics/Rect;)V

    iget-object p2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->mutators:Ljava/util/List;

    .line 163
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 165
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->finalMatrix:Landroid/graphics/Matrix;

    .line 166
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->finalClippingPaths:Ljava/util/List;

    .line 167
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public pushTransform([F)V
    .locals 1

    .line 152
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 153
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 154
    new-instance p1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;

    invoke-direct {p1, p0, v0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;-><init>(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->mutators:Ljava/util/List;

    .line 155
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->finalMatrix:Landroid/graphics/Matrix;

    .line 156
    invoke-virtual {p1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutator;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method
