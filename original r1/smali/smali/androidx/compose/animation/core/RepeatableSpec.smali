.class public final Landroidx/compose/animation/core/RepeatableSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/FiniteAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\'\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB2\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0016J,\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u001c\"\u0008\u0008\u0001\u0010\u001d*\u00020\u001e2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u001d0 H\u0016R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\n\u001a\u00020\u000b\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/animation/core/RepeatableSpec;",
        "T",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "iterations",
        "",
        "animation",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec;",
        "repeatMode",
        "Landroidx/compose/animation/core/RepeatMode;",
        "(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V",
        "initialStartOffset",
        "Landroidx/compose/animation/core/StartOffset;",
        "(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAnimation",
        "()Landroidx/compose/animation/core/DurationBasedAnimationSpec;",
        "getInitialStartOffset-Rmkjzm4",
        "()J",
        "J",
        "getIterations",
        "()I",
        "getRepeatMode",
        "()Landroidx/compose/animation/core/RepeatMode;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "vectorize",
        "Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "converter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final initialStartOffset:J

.field private final iterations:I

.field private final repeatMode:Landroidx/compose/animation/core/RepeatMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This constructor has been deprecated"
    .end annotation

    const-string v0, "animation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 269
    invoke-static {v2, v2, v0, v1}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Landroidx/compose/animation/core/RepeatableSpec;-><init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 268
    sget-object p3, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 265
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/RepeatableSpec;-><init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V

    return-void
.end method

.method private constructor <init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/RepeatMode;",
            "J)V"
        }
    .end annotation

    const-string v0, "animation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repeatMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/RepeatableSpec;->iterations:I

    iput-object p2, p0, Landroidx/compose/animation/core/RepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    iput-object p3, p0, Landroidx/compose/animation/core/RepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    iput-wide p4, p0, Landroidx/compose/animation/core/RepeatableSpec;->initialStartOffset:J

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 257
    sget-object p3, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 258
    invoke-static {p5, p5, p3, p4}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILkotlin/jvm/internal/DefaultConstructorMarker;)J

    move-result-wide p4

    :cond_1
    move-wide v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 254
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/RepeatableSpec;-><init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/animation/core/RepeatableSpec;-><init>(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 280
    instance-of v0, p1, Landroidx/compose/animation/core/RepeatableSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    check-cast p1, Landroidx/compose/animation/core/RepeatableSpec;

    iget v0, p1, Landroidx/compose/animation/core/RepeatableSpec;->iterations:I

    iget v2, p0, Landroidx/compose/animation/core/RepeatableSpec;->iterations:I

    if-ne v0, v2, :cond_0

    .line 282
    iget-object v0, p1, Landroidx/compose/animation/core/RepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    iget-object v2, p0, Landroidx/compose/animation/core/RepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p1, Landroidx/compose/animation/core/RepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    iget-object v2, p0, Landroidx/compose/animation/core/RepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    if-ne v0, v2, :cond_0

    .line 284
    iget-wide v2, p1, Landroidx/compose/animation/core/RepeatableSpec;->initialStartOffset:J

    iget-wide p0, p0, Landroidx/compose/animation/core/RepeatableSpec;->initialStartOffset:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/animation/core/StartOffset;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getAnimation()Landroidx/compose/animation/core/DurationBasedAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/RepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    return-object p0
.end method

.method public final getInitialStartOffset-Rmkjzm4()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/RepeatableSpec;->initialStartOffset:J

    return-wide v0
.end method

.method public final getIterations()I
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/RepeatableSpec;->iterations:I

    return p0
.end method

.method public final getRepeatMode()Landroidx/compose/animation/core/RepeatMode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/RepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/animation/core/RepeatableSpec;->iterations:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/animation/core/RepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 290
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/animation/core/RepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    invoke-virtual {v1}, Landroidx/compose/animation/core/RepeatMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/animation/core/RepeatableSpec;->initialStartOffset:J

    .line 291
    invoke-static {v1, v2}, Landroidx/compose/animation/core/StartOffset;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/RepeatableSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/VectorizedAnimationSpec;

    return-object p0
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)",
            "Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    new-instance v0, Landroidx/compose/animation/core/VectorizedRepeatableSpec;

    iget v2, p0, Landroidx/compose/animation/core/RepeatableSpec;->iterations:I

    iget-object v1, p0, Landroidx/compose/animation/core/RepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 275
    invoke-interface {v1, p1}, Landroidx/compose/animation/core/DurationBasedAnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/animation/core/RepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    iget-wide v5, p0, Landroidx/compose/animation/core/RepeatableSpec;->initialStartOffset:J

    const/4 v7, 0x0

    move-object v1, v0

    .line 274
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/core/VectorizedRepeatableSpec;-><init>(ILandroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    return-object v0
.end method
