.class public final Landroidx/core/view/inputmethod/EditorInfoCompat;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;
    }
.end annotation


# static fields
.field private static final CONTENT_MIME_TYPES_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

.field private static final CONTENT_MIME_TYPES_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"

.field private static final CONTENT_SELECTION_END_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

.field private static final CONTENT_SELECTION_HEAD_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

.field private static final CONTENT_SURROUNDING_TEXT_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000

.field static final MAX_INITIAL_SELECTION_LENGTH:I = 0x400

.field static final MEMORY_EFFICIENT_TEXT_LENGTH:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/core/view/inputmethod/EditorInfoCompat;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;
    .locals 0

    .line 393
    invoke-static {p0, p1}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->getInitialSelectedText(Landroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 0

    .line 439
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->getInitialTextAfterCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 0

    .line 358
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->getInitialTextBeforeCursor(Landroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getProtocol(Landroid/view/inputmethod/EditorInfo;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static isCutOnSurrogate(Ljava/lang/CharSequence;II)Z
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 465
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p0

    return p0

    .line 463
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p0

    return p0
.end method

.method private static isPasswordInputType(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xfff

    const/16 v0, 0x81

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    return-void
.end method

.method public static setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 237
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {p0, p1, p2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-static {p0, p1, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api30Impl;->setInitialSurroundingSubText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 2

    .line 485
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_0
    if-eqz p1, :cond_1

    .line 490
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 491
    :goto_0
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 492
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v0, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string p1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private static trimLongSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 9

    sub-int v0, p3, p2

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 297
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    rsub-int v4, v1, 0x800

    const-wide v5, 0x3fe999999999999aL    # 0.8

    int-to-double v7, v4

    mul-double/2addr v7, v5

    double-to-int v5, v7

    .line 300
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v4, v5

    .line 301
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v4, v3

    .line 303
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 310
    invoke-static {p1, p2, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    add-int v5, p3, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 315
    invoke-static {p1, v5, v6}, Landroidx/core/view/inputmethod/EditorInfoCompat;->isCutOnSurrogate(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    add-int v5, v4, v1

    add-int/2addr v5, v3

    if-eq v1, v0, :cond_3

    add-int v0, p2, v4

    .line 324
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    add-int/2addr v3, p3

    .line 326
    invoke-interface {p1, p3, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/CharSequence;

    aput-object p2, p3, v2

    aput-object p1, p3, v6

    .line 329
    invoke-static {p3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_3
    add-int/2addr v5, p2

    .line 332
    invoke-interface {p1, p2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    add-int/2addr v1, v4

    .line 339
    invoke-static {p0, p1, v4, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    return-void
.end method
