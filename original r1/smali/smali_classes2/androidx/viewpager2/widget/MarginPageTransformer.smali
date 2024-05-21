.class public final Landroidx/viewpager2/widget/MarginPageTransformer;
.super Ljava/lang/Object;
.source "MarginPageTransformer.java"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# instance fields
.field private final mMarginPx:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Margin must be non-negative"

    .line 48
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iput p1, p0, Landroidx/viewpager2/widget/MarginPageTransformer;->mMarginPx:I

    return-void
.end method

.method private requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 69
    instance-of p0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    instance-of p0, p1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    .line 70
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    return-object p1

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected the page view to be managed by a ViewPager2 instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/MarginPageTransformer;->requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget p0, p0, Landroidx/viewpager2/widget/MarginPageTransformer;->mMarginPx:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    .line 58
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result p2

    if-nez p2, :cond_1

    .line 59
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    neg-float p0, p0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method
