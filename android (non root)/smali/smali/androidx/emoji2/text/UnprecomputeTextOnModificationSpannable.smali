.class Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
.super Ljava/lang/Object;
.source "UnprecomputeTextOnModificationSpannable.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;,
        Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24;,
        Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28;
    }
.end annotation


# instance fields
.field private mDelegate:Landroid/text/Spannable;

.field private mSafeToWrite:Z


# direct methods
.method constructor <init>(Landroid/text/Spannable;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    iput-object p1, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    return-void
.end method

.method constructor <init>(Landroid/text/Spanned;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    .line 53
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    .line 57
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    return-void
.end method

.method private ensureSafeWrites()V
    .locals 2

    iget-object v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    iget-boolean v1, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    if-nez v1, :cond_0

    .line 62
    invoke-static {}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->precomputedTextDetector()Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;->isPrecomputedText(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mSafeToWrite:Z

    return-void
.end method

.method static precomputedTextDetector()Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;
    .locals 1

    .line 162
    new-instance v0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28;

    invoke-direct {v0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28;-><init>()V

    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 116
    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result p0

    return p0
.end method

.method public chars()Ljava/util/stream/IntStream;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 135
    invoke-static {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24;->chars(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public codePoints()Ljava/util/stream/IntStream;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 142
    invoke-static {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24;->codePoints(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 96
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 101
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 91
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 86
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method getUnwrappedSpannable()Landroid/text/Spannable;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    return-object p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 111
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p0

    return p0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 106
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->ensureSafeWrites()V

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 81
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->ensureSafeWrites()V

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 75
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 122
    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->mDelegate:Landroid/text/Spannable;

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
