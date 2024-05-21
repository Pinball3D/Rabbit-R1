.class public final Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;
.super Ljava/lang/Object;
.source "AccessibilityIterators.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;",
        "",
        "()V",
        "DirectionEnd",
        "Landroidx/compose/ui/text/style/ResolvedTextDirection;",
        "DirectionStart",
        "pageInstance",
        "Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;",
        "getInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;
    .locals 1

    .line 432
    invoke-static {}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->access$getPageInstance$cp()Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object p0

    if-nez p0, :cond_0

    .line 433
    new-instance p0, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->access$setPageInstance$cp(Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;)V

    .line 435
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;->access$getPageInstance$cp()Landroidx/compose/ui/platform/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.PageTextSegmentIterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
