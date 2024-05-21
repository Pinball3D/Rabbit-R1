.class Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"

# interfaces
.implements Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiProcessAddSpanCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback<",
        "Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

.field public spannable:Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;Landroidx/emoji2/text/EmojiCompat$SpanFactory;)V
    .locals 0

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;->spannable:Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    iput-object p2, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    return-void
.end method


# virtual methods
.method public getResult()Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;->spannable:Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    return-object p0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 0

    .line 906
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;->getResult()Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    move-result-object p0

    return-object p0
.end method

.method public handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z
    .locals 3

    .line 921
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->isPreferredSystemRender()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;->spannable:Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    if-nez v0, :cond_2

    .line 925
    new-instance v0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    .line 926
    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 927
    check-cast p1, Landroid/text/Spannable;

    goto :goto_0

    .line 928
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v0, p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Landroid/text/Spannable;)V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;->spannable:Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    :cond_2
    iget-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    .line 930
    invoke-interface {p1, p4}, Landroidx/emoji2/text/EmojiCompat$SpanFactory;->createSpan(Landroidx/emoji2/text/TypefaceEmojiRasterizer;)Landroidx/emoji2/text/EmojiSpan;

    move-result-object p1

    iget-object p0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;->spannable:Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    const/16 p4, 0x21

    .line 931
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->setSpan(Ljava/lang/Object;III)V

    return v1
.end method
