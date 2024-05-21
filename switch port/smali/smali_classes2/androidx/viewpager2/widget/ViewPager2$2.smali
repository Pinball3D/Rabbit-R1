.class Landroidx/viewpager2/widget/ViewPager2$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 219
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 231
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->updateCurrentItem()V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 222
    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 223
    iput p1, v0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2$2;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    .line 224
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetNewCurrentItem()V

    :cond_0
    return-void
.end method
