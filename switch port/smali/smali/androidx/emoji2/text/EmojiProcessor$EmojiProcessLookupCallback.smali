.class Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;
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
    name = "EmojiProcessLookupCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback<",
        "Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public end:I

.field private final mOffset:I

.field public start:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->start:I

    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->end:I

    iput p1, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->mOffset:I

    return-void
.end method


# virtual methods
.method public getResult()Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 0

    .line 941
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->getResult()Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    move-result-object p0

    return-object p0
.end method

.method public handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z
    .locals 0

    iget p1, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->mOffset:I

    const/4 p4, 0x0

    if-gt p2, p1, :cond_0

    if-ge p1, p3, :cond_0

    iput p2, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->start:I

    iput p3, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->end:I

    return p4

    :cond_0
    if-gt p3, p1, :cond_1

    const/4 p4, 0x1

    :cond_1
    return p4
.end method
