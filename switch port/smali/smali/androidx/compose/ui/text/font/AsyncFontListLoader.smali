.class public final Landroidx/compose/ui/text/font/AsyncFontListLoader;
.super Ljava/lang/Object;
.source "FontListFontFamilyTypefaceAdapter.kt"

# interfaces
.implements Landroidx/compose/runtime/State;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/State<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontListFontFamilyTypefaceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/AsyncFontListLoader\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,427:1\n81#2:428\n107#2,2:429\n33#3,6:431\n*S KotlinDebug\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/AsyncFontListLoader\n*L\n252#1:428\n252#1:429,2\n259#1:431,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BG\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0011\u0010 \u001a\u00020\u000eH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J\u0019\u0010\"\u001a\u0004\u0018\u00010\u0002*\u00020\u0005H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00028V@RX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/AsyncFontListLoader;",
        "Landroidx/compose/runtime/State;",
        "",
        "fontList",
        "",
        "Landroidx/compose/ui/text/font/Font;",
        "initialType",
        "typefaceRequest",
        "Landroidx/compose/ui/text/font/TypefaceRequest;",
        "asyncTypefaceCache",
        "Landroidx/compose/ui/text/font/AsyncTypefaceCache;",
        "onCompletion",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;",
        "",
        "platformFontLoader",
        "Landroidx/compose/ui/text/font/PlatformFontLoader;",
        "(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/PlatformFontLoader;)V",
        "cacheable",
        "",
        "getCacheable$ui_text_release",
        "()Z",
        "setCacheable$ui_text_release",
        "(Z)V",
        "<set-?>",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "(Ljava/lang/Object;)V",
        "value$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "load",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadWithTimeoutOrNull",
        "loadWithTimeoutOrNull$ui_text_release",
        "(Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ui-text_release"
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
.field private final asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

.field private cacheable:Z

.field private final fontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final onCompletion:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

.field private final typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

.field private final value$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/PlatformFontLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/compose/ui/text/font/TypefaceRequest;",
            "Landroidx/compose/ui/text/font/AsyncTypefaceCache;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/font/PlatformFontLoader;",
            ")V"
        }
    .end annotation

    const-string v0, "fontList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typefaceRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncTypefaceCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompletion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformFontLoader"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->fontList:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    iput-object p4, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    iput-object p5, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->onCompletion:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    const/4 p1, 0x0

    const/4 p3, 0x2

    .line 252
    invoke-static {p2, p1, p3, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->value$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->cacheable:Z

    return-void
.end method

.method public static final synthetic access$getPlatformFontLoader$p(Landroidx/compose/ui/text/font/AsyncFontListLoader;)Landroidx/compose/ui/text/font/PlatformFontLoader;
    .locals 0

    .line 244
    iget-object p0, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    return-object p0
.end method

.method private setValue(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 429
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCacheable$ui_text_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->cacheable:Z

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->value$delegate:Landroidx/compose/runtime/MutableState;

    .line 252
    check-cast p0, Landroidx/compose/runtime/State;

    .line 428
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final load(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;

    iget v3, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 257
    iget v4, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget v1, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->I$1:I

    iget v4, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->I$0:I

    iget-object v9, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/text/font/AsyncFontListLoader;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v10

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->I$1:I

    iget v4, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->I$0:I

    iget-object v9, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$2:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/text/font/Font;

    iget-object v10, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/text/font/AsyncFontListLoader;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v15, v4

    move v4, v1

    move-object v1, v11

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v11

    goto/16 :goto_4

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2
    iget-object v0, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->fontList:Ljava/util/List;

    .line 432
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v15, v8

    :goto_1
    if-ge v15, v4, :cond_8

    .line 433
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 434
    move-object v14, v9

    check-cast v14, Landroidx/compose/ui/text/font/Font;

    .line 267
    invoke-interface {v14}, Landroidx/compose/ui/text/font/Font;->getLoadingStrategy-PKNRLFQ()I

    move-result v9

    sget-object v10, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->getAsync-PKNRLFQ()I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 268
    iget-object v9, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->asyncTypefaceCache:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    iget-object v11, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    const/4 v12, 0x0

    new-instance v10, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$2$typeface$1;

    invoke-direct {v10, v1, v14, v5}, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$2$typeface$1;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)V

    move-object v13, v10

    check-cast v13, Lkotlin/jvm/functions/Function1;

    iput-object v1, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$1:Ljava/lang/Object;

    iput-object v14, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$2:Ljava/lang/Object;

    iput v15, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->I$0:I

    iput v4, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->I$1:I

    iput v7, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->label:I

    move-object v10, v14

    move-object/from16 v16, v14

    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->runCached(Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_4

    return-object v3

    :cond_4
    move-object/from16 v10, v16

    move-object/from16 v17, v9

    move-object v9, v0

    move-object/from16 v0, v17

    :goto_2
    if-eqz v0, :cond_5

    .line 272
    iget-object v3, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/TypefaceRequest;->getFontSynthesis-GVVA2EU()I

    move-result v3

    .line 275
    iget-object v4, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/TypefaceRequest;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    .line 276
    iget-object v5, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    invoke-virtual {v5}, Landroidx/compose/ui/text/font/TypefaceRequest;->getFontStyle-_-LCdwA()I

    move-result v5

    .line 272
    invoke-static {v3, v0, v10, v4, v5}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->synthesizeTypeface-FxwP2eA(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/compose/ui/text/font/AsyncFontListLoader;->setValue(Ljava/lang/Object;)V

    .line 278
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 287
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    .line 288
    iput-boolean v8, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->cacheable:Z

    .line 289
    iget-object v3, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->onCompletion:Lkotlin/jvm/functions/Function1;

    new-instance v4, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/AsyncFontListLoader;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 281
    :cond_5
    :try_start_3
    iput-object v1, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->L$2:Ljava/lang/Object;

    iput v15, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->I$0:I

    iput v4, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->I$1:I

    iput v6, v2, Landroidx/compose/ui/text/font/AsyncFontListLoader$load$1;->label:I

    invoke-static {v2}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v3, :cond_6

    return-object v3

    :cond_6
    move-object v10, v1

    move v1, v4

    move v4, v15

    :goto_3
    move v15, v4

    move-object v0, v9

    move v4, v1

    move-object v1, v10

    :cond_7
    add-int/2addr v15, v7

    goto/16 :goto_1

    .line 287
    :cond_8
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    .line 288
    iput-boolean v8, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->cacheable:Z

    .line 289
    iget-object v2, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->onCompletion:Lkotlin/jvm/functions/Function1;

    new-instance v3, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/AsyncFontListLoader;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_2
    move-exception v0

    .line 287
    :goto_4
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    .line 288
    iput-boolean v8, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->cacheable:Z

    .line 289
    iget-object v3, v1, Landroidx/compose/ui/text/font/AsyncFontListLoader;->onCompletion:Lkotlin/jvm/functions/Function1;

    new-instance v4, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/AsyncFontListLoader;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public final loadWithTimeoutOrNull$ui_text_release(Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/Font;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;

    iget v1, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 296
    iget v2, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/text/font/Font;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 300
    :try_start_1
    new-instance p2, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$2;

    invoke-direct {p2, p0, p1, v4}, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$2;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/ui/text/font/AsyncFontListLoader$loadWithTimeoutOrNull$1;->label:I

    const-wide/16 v2, 0x3a98

    invoke-static {v2, v3, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v4, p2

    goto :goto_2

    :catch_0
    move-exception p0

    .line 316
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    sget-object v1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p2, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/CoroutineExceptionHandler;

    if-eqz p2, :cond_4

    .line 317
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to load font "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    check-cast p0, Ljava/lang/Throwable;

    .line 318
    invoke-direct {v1, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 316
    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/CoroutineExceptionHandler;->handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 305
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    throw p0
.end method

.method public final setCacheable$ui_text_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->cacheable:Z

    return-void
.end method
