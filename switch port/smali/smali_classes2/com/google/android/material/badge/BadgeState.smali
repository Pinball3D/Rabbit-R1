.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "BadgeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeState$State;
    }
.end annotation


# static fields
.field private static final BADGE_RESOURCE_TAG:Ljava/lang/String; = "badge"


# instance fields
.field final badgeHeight:F

.field final badgeRadius:F

.field final badgeWidth:F

.field final badgeWithTextHeight:F

.field final badgeWithTextRadius:F

.field final badgeWithTextWidth:F

.field private final currentState:Lcom/google/android/material/badge/BadgeState$State;

.field final horizontalInset:I

.field final horizontalInsetWithText:I

.field offsetAlignmentMode:I

.field private final overridingState:Lcom/google/android/material/badge/BadgeState$State;


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/google/android/material/badge/BadgeState$State;)V
    .locals 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    if-nez p5, :cond_0

    .line 89
    new-instance p5, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {p5}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    .line 92
    invoke-static {p5, p2}, Lcom/google/android/material/badge/BadgeState$State;->access$002(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 95
    :cond_1
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$000(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/badge/BadgeState;->generateTypedArray(Landroid/content/Context;III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 98
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeRadius:I

    const/4 v1, -0x1

    .line 99
    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_horizontal_edge_offset:I

    .line 104
    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_text_horizontal_edge_offset:I

    .line 109
    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    .line 111
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextRadius:I

    .line 112
    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 113
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeWidth:I

    sget v2, Lcom/google/android/material/R$dimen;->m3_badge_size:I

    .line 114
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    .line 115
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextWidth:I

    sget v2, Lcom/google/android/material/R$dimen;->m3_badge_with_text_size:I

    .line 118
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 116
    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    .line 119
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeHeight:I

    sget v2, Lcom/google/android/material/R$dimen;->m3_badge_size:I

    .line 120
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    .line 121
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextHeight:I

    sget v2, Lcom/google/android/material/R$dimen;->m3_badge_with_text_size:I

    .line 124
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 122
    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    .line 126
    sget p4, Lcom/google/android/material/R$styleable;->Badge_offsetAlignmentMode:I

    const/4 v2, 0x1

    .line 127
    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    .line 129
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$100(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    const/4 v3, -0x2

    if-ne p4, v3, :cond_2

    const/16 p4, 0xff

    goto :goto_0

    :cond_2
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$100(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    :goto_0
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$102(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 134
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$200(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    const/4 v4, 0x0

    if-eq p4, v3, :cond_3

    .line 135
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$200(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$202(Lcom/google/android/material/badge/BadgeState$State;I)I

    goto :goto_1

    .line 136
    :cond_3
    sget p4, Lcom/google/android/material/R$styleable;->Badge_number:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 137
    sget p4, Lcom/google/android/material/R$styleable;->Badge_number:I

    invoke-virtual {p2, p4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$202(Lcom/google/android/material/badge/BadgeState$State;I)I

    goto :goto_1

    .line 139
    :cond_4
    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$202(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 142
    :goto_1
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 143
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 144
    :cond_5
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeText:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 145
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeText:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    :cond_6
    :goto_2
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 151
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object p4

    if-nez p4, :cond_7

    .line 152
    sget p4, Lcom/google/android/material/R$string;->mtrl_badge_numberless_content_description:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    .line 153
    :cond_7
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object p4

    .line 150
    :goto_3
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 156
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$600(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    if-nez p4, :cond_8

    .line 157
    sget p4, Lcom/google/android/material/R$plurals;->mtrl_badge_content_description:I

    goto :goto_4

    .line 158
    :cond_8
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$600(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    .line 155
    :goto_4
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$602(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 161
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$700(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    if-nez p4, :cond_9

    .line 162
    sget p4, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_content_description:I

    goto :goto_5

    .line 163
    :cond_9
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$700(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    .line 160
    :goto_5
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$702(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 165
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object p4

    if-eqz p4, :cond_b

    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_a

    goto :goto_6

    :cond_a
    move v2, v4

    :cond_b
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 168
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$900(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    if-ne p4, v3, :cond_c

    .line 169
    sget p4, Lcom/google/android/material/R$styleable;->Badge_maxCharacterCount:I

    invoke-virtual {p2, p4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    goto :goto_7

    .line 170
    :cond_c
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$900(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    .line 167
    :goto_7
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$902(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 173
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1000(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    if-ne p4, v3, :cond_d

    .line 174
    sget p4, Lcom/google/android/material/R$styleable;->Badge_maxNumber:I

    invoke-virtual {p2, p4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    goto :goto_8

    .line 175
    :cond_d
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1000(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p4

    .line 172
    :goto_8
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$1002(Lcom/google/android/material/badge/BadgeState$State;I)I

    .line 178
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    if-nez p4, :cond_e

    .line 179
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeShapeAppearance:I

    sget v1, Lcom/google/android/material/R$style;->ShapeAppearance_M3_Sys_Shape_Corner_Full:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    goto :goto_9

    .line 182
    :cond_e
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 178
    :goto_9
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 177
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$1102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 185
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    if-nez p4, :cond_f

    .line 186
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeShapeAppearanceOverlay:I

    invoke-virtual {p2, p4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    goto :goto_a

    .line 187
    :cond_f
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 185
    :goto_a
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 184
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$1202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 190
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    if-nez p4, :cond_10

    .line 191
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextShapeAppearance:I

    sget v1, Lcom/google/android/material/R$style;->ShapeAppearance_M3_Sys_Shape_Corner_Full:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    goto :goto_b

    .line 194
    :cond_10
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 190
    :goto_b
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 189
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$1302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 197
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    if-nez p4, :cond_11

    .line 198
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextShapeAppearanceOverlay:I

    invoke-virtual {p2, p4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    goto :goto_c

    .line 199
    :cond_11
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 197
    :goto_c
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 196
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$1402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 202
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    if-nez p4, :cond_12

    .line 203
    sget p4, Lcom/google/android/material/R$styleable;->Badge_backgroundColor:I

    invoke-static {p1, p2, p4}, Lcom/google/android/material/badge/BadgeState;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p4

    goto :goto_d

    .line 204
    :cond_12
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 202
    :goto_d
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 201
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$1502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 207
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    if-nez p4, :cond_13

    .line 208
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeTextAppearance:I

    sget v1, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    goto :goto_e

    .line 211
    :cond_13
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 207
    :goto_e
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 206
    invoke-static {v0, p4}, Lcom/google/android/material/badge/BadgeState$State;->access$1602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 215
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_14

    .line 216
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_f

    .line 217
    :cond_14
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_15

    .line 218
    sget p4, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    .line 219
    invoke-static {p1, p2, p4}, Lcom/google/android/material/badge/BadgeState;->readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 218
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_f

    .line 221
    :cond_15
    new-instance p4, Lcom/google/android/material/resources/TextAppearance;

    .line 222
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$1600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p4, p1, v1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 223
    invoke-virtual {p4}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 227
    :goto_f
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_16

    .line 228
    sget p1, Lcom/google/android/material/R$styleable;->Badge_badgeGravity:I

    const p4, 0x800035

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    goto :goto_10

    .line 229
    :cond_16
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 227
    :goto_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 226
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 232
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_17

    .line 233
    sget p1, Lcom/google/android/material/R$styleable;->Badge_badgeWidePadding:I

    sget p4, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    .line 235
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 233
    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    goto :goto_11

    .line 236
    :cond_17
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$1900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 232
    :goto_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 231
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 238
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2000(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_18

    .line 239
    sget p1, Lcom/google/android/material/R$styleable;->Badge_badgeVerticalPadding:I

    sget p4, Lcom/google/android/material/R$dimen;->m3_badge_with_text_vertical_padding:I

    .line 241
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 239
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    goto :goto_12

    .line 242
    :cond_18
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2000(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 238
    :goto_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 237
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2002(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 245
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_19

    .line 246
    sget p1, Lcom/google/android/material/R$styleable;->Badge_horizontalOffset:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    goto :goto_13

    .line 247
    :cond_19
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 245
    :goto_13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 244
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 250
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 251
    sget p1, Lcom/google/android/material/R$styleable;->Badge_verticalOffset:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    goto :goto_14

    .line 252
    :cond_1a
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 250
    :goto_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 249
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 258
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 259
    sget p1, Lcom/google/android/material/R$styleable;->Badge_horizontalOffsetWithText:I

    .line 261
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$2100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 259
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    goto :goto_15

    .line 262
    :cond_1b
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 258
    :goto_15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 257
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 265
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1c

    .line 266
    sget p1, Lcom/google/android/material/R$styleable;->Badge_verticalOffsetWithText:I

    .line 267
    invoke-static {v0}, Lcom/google/android/material/badge/BadgeState$State;->access$2200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 266
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    goto :goto_16

    .line 268
    :cond_1c
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 265
    :goto_16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 264
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 271
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 272
    sget p1, Lcom/google/android/material/R$styleable;->Badge_largeFontVerticalOffsetAdjustment:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    goto :goto_17

    .line 274
    :cond_1d
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 271
    :goto_17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 270
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 277
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1e

    move p1, v4

    goto :goto_18

    :cond_1e
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 276
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 280
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1f

    move p1, v4

    goto :goto_19

    :cond_1f
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 279
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 283
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_20

    .line 284
    sget p1, Lcom/google/android/material/R$styleable;->Badge_autoAdjustToWithinGrandparentBounds:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    goto :goto_1a

    .line 285
    :cond_20
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 283
    :goto_1a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 282
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 287
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    move-result-object p1

    if-nez p1, :cond_21

    .line 292
    sget-object p1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {p1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object p1

    .line 290
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2902(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    goto :goto_1b

    .line 295
    :cond_21
    invoke-static {p5}, Lcom/google/android/material/badge/BadgeState$State;->access$2900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2902(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    :goto_1b
    iput-object p5, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    return-void
.end method

.method private generateTypedArray(Landroid/content/Context;III)Landroid/content/res/TypedArray;
    .locals 6

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    const-string v0, "badge"

    .line 309
    invoke-static {p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 310
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v0, p0

    :goto_0
    move-object v1, p2

    if-nez v0, :cond_1

    move v4, p4

    goto :goto_1

    :cond_1
    move v4, v0

    .line 316
    :goto_1
    sget-object v2, Lcom/google/android/material/R$styleable;->Badge:[I

    new-array v5, p0, [I

    move-object v0, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method private static readColorFromAttributes(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 0

    .line 618
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method


# virtual methods
.method clearNumber()V
    .locals 1

    const/4 v0, -0x1

    .line 347
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeState;->setNumber(I)V

    return-void
.end method

.method clearText()V
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, v0}, Lcom/google/android/material/badge/BadgeState;->setText(Ljava/lang/String;)V

    return-void
.end method

.method getAdditionalHorizontalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 542
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getAdditionalVerticalOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 552
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getAlpha()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 368
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$100(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p0

    return p0
.end method

.method getBackgroundColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 396
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getBadgeGravity()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 462
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getBadgeHorizontalPadding()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 472
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getBadgeShapeAppearanceOverlayResId()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 434
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getBadgeShapeAppearanceResId()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 425
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getBadgeTextColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 406
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getBadgeVerticalPadding()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 482
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2000(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getBadgeWithTextShapeAppearanceOverlayResId()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 452
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getBadgeWithTextShapeAppearanceResId()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 443
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getContentDescriptionExceedsMaxBadgeNumberStringResource()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 590
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$700(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p0

    return p0
.end method

.method getContentDescriptionForText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 561
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getContentDescriptionNumberless()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 570
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getContentDescriptionQuantityStrings()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 580
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$600(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p0

    return p0
.end method

.method getHorizontalOffsetWithText()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 512
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getHorizontalOffsetWithoutText()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 492
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getLargeFontVerticalOffsetAdjustment()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 532
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getMaxCharacterCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 377
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$900(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p0

    return p0
.end method

.method getMaxNumber()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 386
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1000(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p0

    return p0
.end method

.method getNumber()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 338
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$200(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p0

    return p0
.end method

.method getNumberLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 599
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method getOverridingState()Lcom/google/android/material/badge/BadgeState$State;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    return-object p0
.end method

.method getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 355
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getTextAppearanceResId()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 416
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$1600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getVerticalOffsetWithText()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 522
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getVerticalOffsetWithoutText()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 502
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method hasNumber()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 334
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$200(Lcom/google/android/material/badge/BadgeState$State;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasText()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 351
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isAutoAdjustedToGrandparentBounds()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 608
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$2800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 325
    invoke-static {p0}, Lcom/google/android/material/badge/BadgeState$State;->access$800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method setAdditionalHorizontalOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 546
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$2602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 547
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setAdditionalVerticalOffset(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$2702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 372
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$102(Lcom/google/android/material/badge/BadgeState$State;I)I

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 373
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$102(Lcom/google/android/material/badge/BadgeState$State;I)I

    return-void
.end method

.method setAutoAdjustToGrandparentBounds(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 612
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$2802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 613
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method setBackgroundColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 400
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setBadgeGravity(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 466
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 467
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setBadgeHorizontalPadding(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 477
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setBadgeShapeAppearanceOverlayResId(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 438
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setBadgeShapeAppearanceResId(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 430
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setBadgeTextColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setBadgeVerticalPadding(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 486
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$2002(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2002(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setBadgeWithTextShapeAppearanceOverlayResId(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 456
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 457
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setBadgeWithTextShapeAppearanceResId(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 447
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setContentDescriptionExceedsMaxBadgeNumberStringResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 594
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$702(Lcom/google/android/material/badge/BadgeState$State;I)I

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 595
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$702(Lcom/google/android/material/badge/BadgeState$State;I)I

    return-void
.end method

.method setContentDescriptionForText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 565
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 566
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method

.method setContentDescriptionNumberless(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 574
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 575
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method

.method setContentDescriptionQuantityStringsResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 584
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$602(Lcom/google/android/material/badge/BadgeState$State;I)I

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 585
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$602(Lcom/google/android/material/badge/BadgeState$State;I)I

    return-void
.end method

.method setHorizontalOffsetWithText(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$2302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setHorizontalOffsetWithoutText(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 496
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$2102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setLargeFontVerticalOffsetAdjustment(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$2502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 537
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setMaxCharacterCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 381
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$902(Lcom/google/android/material/badge/BadgeState$State;I)I

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 382
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$902(Lcom/google/android/material/badge/BadgeState$State;I)I

    return-void
.end method

.method setMaxNumber(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 390
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1002(Lcom/google/android/material/badge/BadgeState$State;I)I

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 391
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1002(Lcom/google/android/material/badge/BadgeState$State;I)I

    return-void
.end method

.method setNumber(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 342
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$202(Lcom/google/android/material/badge/BadgeState$State;I)I

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 343
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$202(Lcom/google/android/material/badge/BadgeState$State;I)I

    return-void
.end method

.method setNumberLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 603
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2902(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 604
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2902(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;

    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 359
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 360
    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method setTextAppearanceResId(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 420
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$1602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$1602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setVerticalOffsetWithText(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$2402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 527
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setVerticalOffsetWithoutText(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 506
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$2202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 507
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$2202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method

.method setVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 329
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/badge/BadgeState$State;->access$802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 330
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/badge/BadgeState$State;->access$802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
