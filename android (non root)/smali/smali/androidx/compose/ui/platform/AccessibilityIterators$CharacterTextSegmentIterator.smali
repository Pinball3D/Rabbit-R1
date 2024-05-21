.class public Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;
.super Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharacterTextSegmentIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0017\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;",
        "Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;",
        "locale",
        "Ljava/util/Locale;",
        "(Ljava/util/Locale;)V",
        "impl",
        "Ljava/text/BreakIterator;",
        "following",
        "",
        "current",
        "",
        "initialize",
        "",
        "text",
        "",
        "onLocaleChanged",
        "preceding",
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

.field public static final Companion:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;

.field private static instance:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;


# instance fields
.field private impl:Ljava/text/BreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->$stable:I

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    .line 83
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->onLocaleChanged(Ljava/util/Locale;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Locale;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;)V
    .locals 0

    sput-object p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->instance:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;

    return-void
.end method

.method private final onLocaleChanged(Ljava/util/Locale;)V
    .locals 1

    .line 159
    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    const-string v0, "getCharacterInstance(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    return-void
.end method


# virtual methods
.method public following(I)[I
    .locals 4

    .line 94
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    const-string v2, "impl"

    if-nez v0, :cond_3

    .line 105
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_4

    .line 106
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    if-ne p1, v3, :cond_2

    return-object v1

    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_6

    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    return-object v1

    .line 115
    :cond_7
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object p0

    return-object p0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez p0, :cond_0

    const-string p0, "impl"

    .line 90
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public preceding(I)[I
    .locals 4

    .line 119
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    const-string v2, "impl"

    if-nez v0, :cond_3

    .line 130
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_4

    .line 131
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    if-ne p1, v3, :cond_2

    return-object v1

    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_6

    .line 136
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    return-object v1

    .line 140
    :cond_7
    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->getRange(II)[I

    move-result-object p0

    return-object p0
.end method
