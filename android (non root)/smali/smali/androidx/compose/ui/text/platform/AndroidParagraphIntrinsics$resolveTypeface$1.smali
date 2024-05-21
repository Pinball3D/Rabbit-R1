.class final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidParagraphIntrinsics.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "Landroidx/compose/ui/text/font/FontSynthesis;",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0004\u0008\n\u0010\u000b"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Typeface;",
        "fontFamily",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "fontWeight",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "fontStyle",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "fontSynthesis",
        "Landroidx/compose/ui/text/font/FontSynthesis;",
        "invoke-DPcqOEQ",
        "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    check-cast p1, Landroidx/compose/ui/text/font/FontFamily;

    check-cast p2, Landroidx/compose/ui/text/font/FontWeight;

    check-cast p3, Landroidx/compose/ui/text/font/FontStyle;

    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    move-result p3

    check-cast p4, Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-virtual {p4}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->invoke-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "fontWeight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 92
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/runtime/State;

    move-result-object p1

    .line 98
    instance-of p2, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    if-nez p2, :cond_0

    .line 99
    new-instance p2, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    iget-object p3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-static {p3}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->access$getResolvedTypefaces$p(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;)V

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 100
    invoke-static {p0, p2}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->access$setResolvedTypefaces$p(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;)V

    .line 101
    invoke-virtual {p2}, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.graphics.Typeface"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method
