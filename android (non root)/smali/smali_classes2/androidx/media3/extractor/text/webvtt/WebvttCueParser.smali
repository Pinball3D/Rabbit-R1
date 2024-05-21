.class public final Landroidx/media3/extractor/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;,
        Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;,
        Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;,
        Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;
    }
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_POSITION:F = 0.5f

.field private static final DEFAULT_TEXT_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_RUBY:Ljava/lang/String; = "ruby"

.field private static final TAG_RUBY_TEXT:Ljava/lang/String; = "rt"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"

.field private static final TEXT_ALIGNMENT_CENTER:I = 0x2

.field private static final TEXT_ALIGNMENT_END:I = 0x3

.field private static final TEXT_ALIGNMENT_LEFT:I = 0x4

.field private static final TEXT_ALIGNMENT_RIGHT:I = 0x5

.field private static final TEXT_ALIGNMENT_START:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 120
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    .line 121
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xff

    .line 159
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "white"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 160
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "blue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "black"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_white"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bg_blue"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bg_black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 647
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    .line 648
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x21

    if-eqz v2, :cond_1

    .line 649
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 650
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    .line 651
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 653
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 2

    .line 495
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "nbsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ignoring unsupported entity: \'&"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ";\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x20

    .line 503
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :pswitch_1
    const/16 p0, 0x26

    .line 506
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :pswitch_2
    const/16 p0, 0x3c

    .line 497
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :pswitch_3
    const/16 p0, 0x3e

    .line 500
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_3
        0xd88 -> :sswitch_2
        0x179c4 -> :sswitch_1
        0x337f11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 575
    invoke-static {p4, p1, p2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v0

    .line 576
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 578
    invoke-static {}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$100()Ljava/util/Comparator;

    move-result-object p3

    invoke-static {v1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 580
    iget p2, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    const/4 p3, 0x0

    move v2, p3

    .line 581
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_1

    .line 582
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    invoke-static {v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$200(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const-string v4, "rt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 585
    :cond_0
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    .line 591
    invoke-static {v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$200(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v4

    invoke-static {p4, p1, v4}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v4

    const/4 v5, 0x1

    .line 590
    invoke-static {v4, v0, v5}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->firstKnownRubyPosition(III)I

    move-result v4

    .line 595
    invoke-static {v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$200(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v5

    iget v5, v5, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    sub-int/2addr v5, v2

    .line 596
    invoke-static {v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->access$300(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 597
    invoke-virtual {p0, v5, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 598
    invoke-virtual {p0, v5, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 599
    new-instance v3, Landroidx/media3/common/text/RubySpan;

    .line 600
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x21

    .line 599
    invoke-virtual {p0, v3, p2, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 604
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr v2, p2

    move p2, v5

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static applySpansForTag(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 536
    iget v0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 537
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 539
    iget-object v2, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "ruby"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_1
    const-string v3, "lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_2
    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_3
    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_4
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_5
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v7, v4

    goto :goto_0

    :sswitch_6
    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v7, v6

    goto :goto_0

    :sswitch_7
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v7, v5

    :goto_0
    const/16 v2, 0x21

    packed-switch v7, :pswitch_data_0

    return-void

    .line 547
    :pswitch_0
    invoke-static {p3, p0, p1, p2, p4}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applyRubySpans(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 550
    :pswitch_1
    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 544
    :pswitch_2
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 553
    :pswitch_3
    iget-object p2, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    invoke-static {p3, p2, v0, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applyDefaultColors(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V

    goto :goto_1

    .line 541
    :pswitch_4
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 563
    :goto_1
    :pswitch_5
    invoke-static {p4, p0, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object p0

    .line 564
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_8

    .line 565
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object p1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    invoke-static {p3, p1, v0, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applyStyleToText(Landroid/text/SpannableStringBuilder;Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x69 -> :sswitch_4
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private static applyStyleToText(Landroid/text/SpannableStringBuilder;Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;II)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 663
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_1

    .line 664
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 666
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 664
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 671
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 674
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 677
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 680
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 678
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 685
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 688
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 686
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 693
    :cond_5
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 694
    new-instance v0, Landroid/text/style/TypefaceSpan;

    .line 696
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 701
    :cond_6
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSizeUnit()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    goto :goto_0

    .line 719
    :cond_7
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 721
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 719
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_0

    .line 711
    :cond_8
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    .line 713
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 711
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_0

    .line 703
    :cond_9
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 705
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 703
    invoke-static {p0, v0, p2, p3, v2}, Landroidx/media3/common/text/SpanUtil;->addOrReplaceSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 730
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getCombineUpright()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 731
    new-instance p1, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-direct {p1}, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    return-void
.end method

.method private static findEndOfTag(Ljava/lang/String;I)I
    .locals 1

    const/16 v0, 0x3e

    .line 490
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, 0x1

    :goto_0
    return p0
.end method

.method private static firstKnownRubyPosition(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    if-eq p1, v0, :cond_1

    return p1

    :cond_1
    if-eq p2, v0, :cond_2

    return p2

    .line 635
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;"
        }
    .end annotation

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 751
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 752
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    .line 753
    iget-object v3, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v4, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    iget-object v5, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 755
    new-instance v4, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v4, v3, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILandroidx/media3/extractor/text/webvtt/WebvttCssStyle;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static getRubyPosition(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;",
            ")I"
        }
    .end annotation

    .line 612
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 613
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, -0x1

    if-ge p1, p2, :cond_1

    .line 614
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object p2, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    .line 615
    invoke-virtual {p2}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 616
    invoke-virtual {p2}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->getRubyPosition()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 743
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 744
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const-string v0, "[ \\.]"

    .line 745
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 4

    .line 515
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ruby"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "lang"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "rt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_0

    :sswitch_7
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_7
        0x63 -> :sswitch_6
        0x69 -> :sswitch_5
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
        0xe42 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static newCueForText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue;
    .locals 1

    .line 234
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 235
    iput-object p0, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 236
    invoke-virtual {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Landroidx/media3/common/text/Cue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method

.method public static parseCue(Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 202
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-static {v1, v3, p0, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object p0

    return-object p0

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 212
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p0, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Landroidx/media3/common/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;"
        }
    .end annotation

    .line 339
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    const/4 v1, 0x1

    .line 343
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    const/4 v1, 0x2

    .line 345
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    .line 351
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 356
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    .line 359
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    .line 364
    invoke-virtual {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->build()Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object p0

    return-object p0

    .line 347
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Skipping cue with bad header: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static parseCueSettingsList(Ljava/lang/String;)Landroidx/media3/common/text/Cue$Builder;
    .locals 1

    .line 227
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    .line 228
    invoke-static {p0, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    .line 229
    invoke-virtual {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Landroidx/media3/common/text/Cue$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static parseCueSettingsList(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .locals 5

    const-string v0, "WebvttCueParser"

    sget-object v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    .line 369
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 371
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 372
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    .line 373
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    const-string v3, "line"

    .line 375
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    invoke-static {v2, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_0

    :cond_0
    const-string v3, "align"

    .line 377
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    invoke-static {v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    goto :goto_0

    :cond_1
    const-string v3, "position"

    .line 379
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    invoke-static {v2, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_0

    :cond_2
    const-string v3, "size"

    .line 381
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 382
    invoke-static {v2}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    goto :goto_0

    :cond_3
    const-string v3, "vertical"

    .line 383
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 384
    invoke-static {v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseVerticalAttribute(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    goto :goto_0

    .line 386
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown cue setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 389
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping bad cue setting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method static parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;",
            ">;)",
            "Landroid/text/SpannedString;"
        }
    .end annotation

    .line 249
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 250
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 253
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_12

    .line 254
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x26

    if-eq v5, v6, :cond_d

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_0

    .line 313
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_1

    goto :goto_4

    .line 262
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v3

    .line 263
    :goto_1
    invoke-static {p1, v5}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v9, v5, -0x2

    .line 264
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_3

    move v7, v8

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    if-eqz v6, :cond_4

    const/4 v8, 0x2

    :cond_4
    add-int/2addr v4, v8

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v9, v5, -0x1

    .line 266
    :goto_3
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    .line 270
    :cond_6
    invoke-static {v4}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-static {v8}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    :goto_4
    move v4, v5

    goto :goto_0

    :cond_8
    if-eqz v6, :cond_c

    .line 277
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    .line 280
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 281
    invoke-static {p0, v4, v2, v0, p2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 282
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 283
    new-instance v6, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/4 v9, 0x0

    invoke-direct {v6, v4, v7, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;-><init>(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;ILandroidx/media3/extractor/text/webvtt/WebvttCueParser$1;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 285
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 287
    :goto_5
    iget-object v4, v4, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_c
    if-nez v7, :cond_7

    .line 289
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-static {v4, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->buildStartTag(Ljava/lang/String;I)Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x3b

    .line 293
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v7, 0x20

    .line 294
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v6, v8, :cond_e

    move v6, v7

    goto :goto_6

    :cond_e
    if-ne v7, v8, :cond_f

    goto :goto_6

    .line 300
    :cond_f
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_6
    if-eq v6, v8, :cond_11

    .line 302
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    if-ne v6, v7, :cond_10

    const-string v4, " "

    .line 304
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_10
    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto/16 :goto_0

    .line 308
    :cond_11
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 319
    :cond_12
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    .line 320
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {p0, p1, v2, v0, p2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_7

    .line 324
    :cond_13
    invoke-static {}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->buildWholeCueVirtualTag()Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    move-result-object p1

    .line 325
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 322
    invoke-static {p0, p1, v1, v0, p2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 328
    invoke-static {v0}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object p0

    return-object p0
.end method

.method private static parseLineAnchor(Ljava/lang/String;)I
    .locals 5

    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid anchor value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :pswitch_0
    return v3

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseLineAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .locals 3

    const/16 v0, 0x2c

    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 397
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseLineAnchor(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 398
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "%"

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-static {p0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    .line 402
    iput v2, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    const/4 p0, 0x1

    .line 405
    iput p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    :goto_0
    return-void
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .locals 5

    .line 434
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "line-right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_0

    :sswitch_5
    const-string v0, "line-left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid anchor value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6dd215c0 -> :sswitch_5
        -0x514d33ab -> :sswitch_4
        -0x4c1a40fd -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .locals 2

    const/16 v0, 0x2c

    .line 425
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 427
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/4 v1, 0x0

    .line 428
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 430
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    return-void
.end method

.method private static parseTextAlignment(Ljava/lang/String;)I
    .locals 7

    .line 463
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_0

    :sswitch_4
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v6, v4

    goto :goto_0

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid alignment value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_0
    return v4

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    :pswitch_4
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseVerticalAttribute(Ljava/lang/String;)I
    .locals 2

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid \'vertical\' value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method
