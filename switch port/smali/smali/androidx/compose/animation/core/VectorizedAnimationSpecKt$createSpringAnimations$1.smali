.class public final Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;
.super Ljava/lang/Object;
.source "VectorizedAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/Animations;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->createSpringAnimations(Landroidx/compose/animation/core/AnimationVector;FF)Landroidx/compose/animation/core/Animations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorizedAnimationSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorizedAnimationSpec.kt\nandroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,813:1\n1549#2:814\n1620#2,3:815\n*S KotlinDebug\n*F\n+ 1 VectorizedAnimationSpec.kt\nandroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1\n*L\n671#1:814\n671#1:815,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0096\u0002R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1",
        "Landroidx/compose/animation/core/Animations;",
        "anims",
        "",
        "Landroidx/compose/animation/core/FloatSpringSpec;",
        "get",
        "index",
        "",
        "animation-core_release"
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
.field private final anims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/animation/core/FloatSpringSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/AnimationVector;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;FF)V"
        }
    .end annotation

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 671
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector;->getSize$animation_core_release()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 814
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 815
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 672
    new-instance v3, Landroidx/compose/animation/core/FloatSpringSpec;

    invoke-virtual {p1, v2}, Landroidx/compose/animation/core/AnimationVector;->get$animation_core_release(I)F

    move-result v2

    invoke-direct {v3, p2, p3, v2}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFF)V

    .line 816
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 817
    :cond_0
    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;->anims:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Landroidx/compose/animation/core/FloatAnimationSpec;
    .locals 0

    .line 670
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;->get(I)Landroidx/compose/animation/core/FloatSpringSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/FloatAnimationSpec;

    return-object p0
.end method

.method public get(I)Landroidx/compose/animation/core/FloatSpringSpec;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$1;->anims:Ljava/util/List;

    .line 675
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/FloatSpringSpec;

    return-object p0
.end method
