.class public final Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemanticsProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SemanticsProperties.kt\nandroidx/compose/ui/semantics/ProgressBarRangeInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1291:1\n1#2:1292\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0007H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/ui/semantics/ProgressBarRangeInfo;",
        "",
        "current",
        "",
        "range",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "steps",
        "",
        "(FLkotlin/ranges/ClosedFloatingPointRange;I)V",
        "getCurrent",
        "()F",
        "getRange",
        "()Lkotlin/ranges/ClosedFloatingPointRange;",
        "getSteps",
        "()I",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
        "ui_release"
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

.field public static final Companion:Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;

.field private static final Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;


# instance fields
.field private final current:F

.field private final range:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final steps:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Companion:Landroidx/compose/ui/semantics/ProgressBarRangeInfo$Companion;

    .line 526
    new-instance v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    return-void
.end method

.method public constructor <init>(FLkotlin/ranges/ClosedFloatingPointRange;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    iput-object p2, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p3, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->steps:I

    .line 519
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "current must not be NaN"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(FLkotlin/ranges/ClosedFloatingPointRange;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 512
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;I)V

    return-void
.end method

.method public static final synthetic access$getIndeterminate$cp()Landroidx/compose/ui/semantics/ProgressBarRangeInfo;
    .locals 1

    sget-object v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->Indeterminate:Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 531
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    .line 533
    check-cast p1, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    iget v3, p1, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 534
    iget-object v3, p1, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->steps:I

    .line 535
    iget p1, p1, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->steps:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public final getCurrent()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    return p0
.end method

.method public final getRange()Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatingPointRange;

    return-object p0
.end method

.method public final getSteps()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->steps:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    .line 541
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 542
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->steps:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProgressBarRangeInfo(current="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->current:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->range:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;->steps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
