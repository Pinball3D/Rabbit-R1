.class final Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "FontFamilyResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->preload(Landroidx/compose/ui/text/font/FontFamily;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.ui.text.font.FontFamilyResolverImpl"
    f = "FontFamilyResolver.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x2d
    }
    m = "preload"
    n = {
        "this",
        "fontFamily"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/FontFamilyResolverImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->label:I

    iget-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->this$0:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    const/4 v0, 0x0

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->preload(Landroidx/compose/ui/text/font/FontFamily;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
