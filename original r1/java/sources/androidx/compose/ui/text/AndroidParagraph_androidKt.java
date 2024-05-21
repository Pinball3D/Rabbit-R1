package androidx.compose.ui.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.style.IndentationFixSpan;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;

/* compiled from: AndroidParagraph.android.kt */
@Metadata(d1 = {"\u0000L\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a\u001d\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b\t\u001a\u001d\u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b\r\u001a\u001d\u0010\u000e\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b\u0011\u001a\u001d\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b\u0015\u001a\u001d\u0010\u0016\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b\u0019\u001a\f\u0010\u001a\u001a\u00020\u001b*\u00020\u001bH\u0002\u001a\u0014\u0010\u001c\u001a\u00020\u0006*\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0006H\u0002\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"shouldAttachIndentationFixSpan", "", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "ellipsis", "toLayoutAlign", "", "align", "Landroidx/compose/ui/text/style/TextAlign;", "toLayoutAlign-AMY3VfE", "toLayoutBreakStrategy", "breakStrategy", "Landroidx/compose/ui/text/style/LineBreak$Strategy;", "toLayoutBreakStrategy-u6PBz3U", "toLayoutHyphenationFrequency", "hyphens", "Landroidx/compose/ui/text/style/Hyphens;", "toLayoutHyphenationFrequency-0_XeFpE", "toLayoutLineBreakStyle", "lineBreakStrictness", "Landroidx/compose/ui/text/style/LineBreak$Strictness;", "toLayoutLineBreakStyle-4a2g8L8", "toLayoutLineBreakWordStyle", "lineBreakWordStyle", "Landroidx/compose/ui/text/style/LineBreak$WordBreak;", "toLayoutLineBreakWordStyle-gvcdTPQ", "attachIndentationFixSpan", "", "numberOfLinesThatFitMaxHeight", "Landroidx/compose/ui/text/android/TextLayout;", "maxHeight", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidParagraph_androidKt {
    public static final /* synthetic */ CharSequence access$attachIndentationFixSpan(CharSequence charSequence) {
        return attachIndentationFixSpan(charSequence);
    }

    public static final /* synthetic */ int access$numberOfLinesThatFitMaxHeight(TextLayout textLayout, int i) {
        return numberOfLinesThatFitMaxHeight(textLayout, i);
    }

    public static final /* synthetic */ boolean access$shouldAttachIndentationFixSpan(TextStyle textStyle, boolean z) {
        return shouldAttachIndentationFixSpan(textStyle, z);
    }

    /* renamed from: access$toLayoutAlign-AMY3VfE, reason: not valid java name */
    public static final /* synthetic */ int m4279access$toLayoutAlignAMY3VfE(TextAlign textAlign) {
        return m4284toLayoutAlignAMY3VfE(textAlign);
    }

    /* renamed from: access$toLayoutBreakStrategy-u6PBz3U, reason: not valid java name */
    public static final /* synthetic */ int m4280access$toLayoutBreakStrategyu6PBz3U(LineBreak.Strategy strategy) {
        return m4285toLayoutBreakStrategyu6PBz3U(strategy);
    }

    /* renamed from: access$toLayoutHyphenationFrequency-0_XeFpE, reason: not valid java name */
    public static final /* synthetic */ int m4281access$toLayoutHyphenationFrequency0_XeFpE(Hyphens hyphens) {
        return m4286toLayoutHyphenationFrequency0_XeFpE(hyphens);
    }

    /* renamed from: access$toLayoutLineBreakStyle-4a2g8L8, reason: not valid java name */
    public static final /* synthetic */ int m4282access$toLayoutLineBreakStyle4a2g8L8(LineBreak.Strictness strictness) {
        return m4287toLayoutLineBreakStyle4a2g8L8(strictness);
    }

    /* renamed from: access$toLayoutLineBreakWordStyle-gvcdTPQ, reason: not valid java name */
    public static final /* synthetic */ int m4283access$toLayoutLineBreakWordStylegvcdTPQ(LineBreak.WordBreak wordBreak) {
        return m4288toLayoutLineBreakWordStylegvcdTPQ(wordBreak);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutAlign-AMY3VfE, reason: not valid java name */
    public static final int m4284toLayoutAlignAMY3VfE(TextAlign textAlign) {
        int m4780getLefte0LSkKk = TextAlign.INSTANCE.m4780getLefte0LSkKk();
        if (textAlign != null && TextAlign.m4773equalsimpl0(textAlign.getValue(), m4780getLefte0LSkKk)) {
            return 3;
        }
        int m4781getRighte0LSkKk = TextAlign.INSTANCE.m4781getRighte0LSkKk();
        if (textAlign != null && TextAlign.m4773equalsimpl0(textAlign.getValue(), m4781getRighte0LSkKk)) {
            return 4;
        }
        int m4777getCentere0LSkKk = TextAlign.INSTANCE.m4777getCentere0LSkKk();
        if (textAlign != null && TextAlign.m4773equalsimpl0(textAlign.getValue(), m4777getCentere0LSkKk)) {
            return 2;
        }
        int m4782getStarte0LSkKk = TextAlign.INSTANCE.m4782getStarte0LSkKk();
        if (textAlign == null || !TextAlign.m4773equalsimpl0(textAlign.getValue(), m4782getStarte0LSkKk)) {
            int m4778getEnde0LSkKk = TextAlign.INSTANCE.m4778getEnde0LSkKk();
            if (textAlign != null && TextAlign.m4773equalsimpl0(textAlign.getValue(), m4778getEnde0LSkKk)) {
                return 1;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutHyphenationFrequency-0_XeFpE, reason: not valid java name */
    public static final int m4286toLayoutHyphenationFrequency0_XeFpE(Hyphens hyphens) {
        int m4696getAutovmbZdU8 = Hyphens.INSTANCE.m4696getAutovmbZdU8();
        if (hyphens != null && Hyphens.m4692equalsimpl0(hyphens.getValue(), m4696getAutovmbZdU8)) {
            return Build.VERSION.SDK_INT <= 32 ? 2 : 4;
        }
        int m4697getNonevmbZdU8 = Hyphens.INSTANCE.m4697getNonevmbZdU8();
        if (hyphens != null) {
            Hyphens.m4692equalsimpl0(hyphens.getValue(), m4697getNonevmbZdU8);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutBreakStrategy-u6PBz3U, reason: not valid java name */
    public static final int m4285toLayoutBreakStrategyu6PBz3U(LineBreak.Strategy strategy) {
        int m4723getSimplefcGXIks = LineBreak.Strategy.INSTANCE.m4723getSimplefcGXIks();
        if (strategy != null && LineBreak.Strategy.m4717equalsimpl0(strategy.getValue(), m4723getSimplefcGXIks)) {
            return 0;
        }
        int m4722getHighQualityfcGXIks = LineBreak.Strategy.INSTANCE.m4722getHighQualityfcGXIks();
        if (strategy != null && LineBreak.Strategy.m4717equalsimpl0(strategy.getValue(), m4722getHighQualityfcGXIks)) {
            return 1;
        }
        return (strategy != null && LineBreak.Strategy.m4717equalsimpl0(strategy.getValue(), LineBreak.Strategy.INSTANCE.m4721getBalancedfcGXIks())) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutLineBreakStyle-4a2g8L8, reason: not valid java name */
    public static final int m4287toLayoutLineBreakStyle4a2g8L8(LineBreak.Strictness strictness) {
        int m4731getDefaultusljTpc = LineBreak.Strictness.INSTANCE.m4731getDefaultusljTpc();
        if (strictness != null && LineBreak.Strictness.m4727equalsimpl0(strictness.getValue(), m4731getDefaultusljTpc)) {
            return 0;
        }
        int m4732getLooseusljTpc = LineBreak.Strictness.INSTANCE.m4732getLooseusljTpc();
        if (strictness != null && LineBreak.Strictness.m4727equalsimpl0(strictness.getValue(), m4732getLooseusljTpc)) {
            return 1;
        }
        int m4733getNormalusljTpc = LineBreak.Strictness.INSTANCE.m4733getNormalusljTpc();
        if (strictness != null && LineBreak.Strictness.m4727equalsimpl0(strictness.getValue(), m4733getNormalusljTpc)) {
            return 2;
        }
        return (strictness != null && LineBreak.Strictness.m4727equalsimpl0(strictness.getValue(), LineBreak.Strictness.INSTANCE.m4734getStrictusljTpc())) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutLineBreakWordStyle-gvcdTPQ, reason: not valid java name */
    public static final int m4288toLayoutLineBreakWordStylegvcdTPQ(LineBreak.WordBreak wordBreak) {
        int m4742getDefaultjp8hJ3c = LineBreak.WordBreak.INSTANCE.m4742getDefaultjp8hJ3c();
        if (wordBreak != null && LineBreak.WordBreak.m4738equalsimpl0(wordBreak.getValue(), m4742getDefaultjp8hJ3c)) {
            return 0;
        }
        return (wordBreak != null && LineBreak.WordBreak.m4738equalsimpl0(wordBreak.getValue(), LineBreak.WordBreak.INSTANCE.m4743getPhrasejp8hJ3c())) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int numberOfLinesThatFitMaxHeight(TextLayout textLayout, int i) {
        int lineCount = textLayout.getLineCount();
        for (int i2 = 0; i2 < lineCount; i2++) {
            if (textLayout.getLineBottom(i2) > i) {
                return i2;
            }
        }
        return textLayout.getLineCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean shouldAttachIndentationFixSpan(TextStyle textStyle, boolean z) {
        if (!z || TextUnit.m5061equalsimpl0(textStyle.m4440getLetterSpacingXSAIIZE(), TextUnitKt.getSp(0)) || TextUnit.m5061equalsimpl0(textStyle.m4440getLetterSpacingXSAIIZE(), TextUnit.INSTANCE.m5075getUnspecifiedXSAIIZE()) || textStyle.m4443getTextAlignbuA522U() == null) {
            return false;
        }
        TextAlign m4443getTextAlignbuA522U = textStyle.m4443getTextAlignbuA522U();
        int m4782getStarte0LSkKk = TextAlign.INSTANCE.m4782getStarte0LSkKk();
        if (m4443getTextAlignbuA522U != null && TextAlign.m4773equalsimpl0(m4443getTextAlignbuA522U.getValue(), m4782getStarte0LSkKk)) {
            return false;
        }
        TextAlign m4443getTextAlignbuA522U2 = textStyle.m4443getTextAlignbuA522U();
        return m4443getTextAlignbuA522U2 == null || !TextAlign.m4773equalsimpl0(m4443getTextAlignbuA522U2.getValue(), TextAlign.INSTANCE.m4779getJustifye0LSkKk());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence attachIndentationFixSpan(CharSequence charSequence) {
        if (charSequence.length() == 0) {
            return charSequence;
        }
        SpannableString spannableString = charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence);
        SpannableExtensions_androidKt.setSpan(spannableString, new IndentationFixSpan(), spannableString.length() - 1, spannableString.length() - 1);
        return spannableString;
    }
}
