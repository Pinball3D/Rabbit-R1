.class public abstract Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
.super Ljava/lang/Object;
.source "AccessibilityIterators.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractTextSegmentIterator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0084.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;",
        "Landroidx/compose/ui/platform/AccessibilityIterators$TextSegmentIterator;",
        "()V",
        "segment",
        "",
        "text",
        "",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "getRange",
        "start",
        "",
        "end",
        "initialize",
        "",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final segment:[I

.field protected text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->segment:[I

    return-void
.end method


# virtual methods
.method protected final getRange(II)[I
    .locals 1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->segment:[I

    const/4 v0, 0x0

    .line 62
    aput p1, p0, v0

    const/4 p1, 0x1

    .line 63
    aput p2, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->text:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "text"

    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method protected final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->text:Ljava/lang/String;

    return-void
.end method
