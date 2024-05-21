.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal$layout$2;
.super Ljava/lang/Object;
.source "LazyLayoutBeyondBoundsModifierLocal.kt"

# interfaces
.implements Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;->layout-o7g1Pn8(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal$layout$2",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;",
        "hasMoreContent",
        "",
        "getHasMoreContent",
        "()Z",
        "foundation_release"
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
.field final synthetic $direction:I

.field final synthetic $interval:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;Lkotlin/jvm/internal/Ref$ObjectRef;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal$layout$2;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal$layout$2;->$interval:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal$layout$2;->$direction:I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHasMoreContent()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal$layout$2;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal$layout$2;->$interval:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 83
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal$layout$2;->$direction:I

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;->access$hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocal;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;I)Z

    move-result p0

    return p0
.end method
