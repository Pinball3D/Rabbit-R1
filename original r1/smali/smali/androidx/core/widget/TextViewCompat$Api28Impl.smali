.class Landroidx/core/widget/TextViewCompat$Api28Impl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static castToCharSequence(Landroid/text/PrecomputedText;)Ljava/lang/CharSequence;
    .locals 0

    return-object p0
.end method

.method static getDigitStrings(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;
    .locals 0

    .line 1252
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getTextMetricsParams(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;
    .locals 0

    .line 1247
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    return-object p0
.end method

.method static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .locals 0

    .line 1242
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void
.end method
