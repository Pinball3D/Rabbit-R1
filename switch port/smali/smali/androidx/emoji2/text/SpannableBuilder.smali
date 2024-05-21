.class public final Landroidx/emoji2/text/SpannableBuilder;
.super Landroid/text/SpannableStringBuilder;
.source "SpannableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    }
.end annotation


# instance fields
.field private final mWatcherClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mWatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    const-string/jumbo v0, "watcherClass cannot be null"

    .line 64
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    const-string/jumbo p2, "watcherClass cannot be null"

    .line 73
    invoke-static {p1, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/CharSequence;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/CharSequence;",
            "II)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p2, p3, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    const-string/jumbo p2, "watcherClass cannot be null"

    .line 83
    invoke-static {p1, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    return-void
.end method

.method private blockWatchers()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 270
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 271
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->blockCalls()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/CharSequence;)Landroidx/emoji2/text/SpannableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/CharSequence;",
            ")",
            "Landroidx/emoji2/text/SpannableBuilder;"
        }
    .end annotation

    .line 92
    new-instance v0, Landroidx/emoji2/text/SpannableBuilder;

    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/SpannableBuilder;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private fireWatchers()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 289
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 290
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-virtual {p0}, Landroidx/emoji2/text/SpannableBuilder;->length()I

    move-result v3

    invoke-virtual {p0}, Landroidx/emoji2/text/SpannableBuilder;->length()I

    move-result v4

    invoke-virtual {v2, p0, v0, v3, v4}, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 242
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 243
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    .line 244
    iget-object v2, v1, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->mObject:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isWatcher(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWatcher(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private unblockwatchers()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 279
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 280
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->unblockCalls()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/SpannableBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 344
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 337
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 353
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 360
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/SpannableBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public beginBatchEdit()V
    .locals 0

    .line 255
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->blockWatchers()V

    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/SpannableBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 330
    invoke-super {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public endBatchEdit()V
    .locals 0

    .line 262
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->unblockwatchers()V

    .line 263
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->fireWatchers()V

    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    .line 200
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 206
    :cond_0
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    .line 214
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1

    .line 186
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p3}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-class v0, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-super {p0, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    .line 149
    array-length p1, p0

    invoke-static {p3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 150
    :goto_0
    array-length p3, p0

    if-ge p2, p3, :cond_0

    .line 151
    aget-object p3, p0, p2

    iget-object p3, p3, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;->mObject:Ljava/lang/Object;

    aput-object p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 155
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/SpannableBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/SpannableBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 316
    invoke-super {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    if-eqz p3, :cond_0

    .line 228
    invoke-direct {p0, p3}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    const-class p3, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    .line 231
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 1

    .line 165
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->getWatcherFor(Ljava/lang/Object;)Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 174
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 177
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/SpannableBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 48
    invoke-virtual/range {p0 .. p5}, Landroidx/emoji2/text/SpannableBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 297
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->blockWatchers()V

    .line 298
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 299
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->unblockwatchers()V

    return-object p0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 307
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->blockWatchers()V

    .line 308
    invoke-super/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 309
    invoke-direct {p0}, Landroidx/emoji2/text/SpannableBuilder;->unblockwatchers()V

    return-object p0
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 1

    .line 130
    invoke-direct {p0, p1}, Landroidx/emoji2/text/SpannableBuilder;->isWatcher(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/SpannableBuilder$WatcherWrapper;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatchers:Ljava/util/List;

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    .line 135
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 120
    new-instance v0, Landroidx/emoji2/text/SpannableBuilder;

    iget-object v1, p0, Landroidx/emoji2/text/SpannableBuilder;->mWatcherClass:Ljava/lang/Class;

    invoke-direct {v0, v1, p0, p1, p2}, Landroidx/emoji2/text/SpannableBuilder;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;II)V

    return-object v0
.end method
