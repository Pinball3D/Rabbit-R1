.class Landroidx/appcompat/widget/AppCompatEmojiTextHelper;
.super Ljava/lang/Object;
.source "AppCompatEmojiTextHelper.java"


# instance fields
.field private final mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mView:Landroid/widget/TextView;

    .line 43
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;-><init>(Landroid/widget/TextView;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    return-void
.end method


# virtual methods
.method getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    .line 99
    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    .line 84
    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->isEnabled()Z

    move-result p0

    return p0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mView:Landroid/widget/TextView;

    .line 52
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    :try_start_0
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 58
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setEnabled(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    throw p0
.end method

.method setAllCaps(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    .line 109
    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->setAllCaps(Z)V

    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    .line 77
    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->setEnabled(Z)V

    return-void
.end method

.method public wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    .line 122
    invoke-virtual {p0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p0

    return-object p0
.end method
