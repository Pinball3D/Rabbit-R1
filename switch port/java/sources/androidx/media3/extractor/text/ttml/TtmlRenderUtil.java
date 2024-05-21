package androidx.media3.extractor.text.ttml;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.HorizontalTextInVerticalContextSpan;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.SpanUtil;
import androidx.media3.common.text.TextEmphasisSpan;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import java.util.ArrayDeque;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class TtmlRenderUtil {
    private static final String TAG = "TtmlRenderUtil";

    public static TtmlStyle resolveStyle(TtmlStyle ttmlStyle, String[] strArr, Map<String, TtmlStyle> map) {
        int i = 0;
        if (ttmlStyle == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                TtmlStyle ttmlStyle2 = new TtmlStyle();
                int length = strArr.length;
                while (i < length) {
                    ttmlStyle2.chain(map.get(strArr[i]));
                    i++;
                }
                return ttmlStyle2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return ttmlStyle.chain(map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    ttmlStyle.chain(map.get(strArr[i]));
                    i++;
                }
            }
        }
        return ttmlStyle;
    }

    public static void applyStylesToSpan(Spannable spannable, int i, int i2, TtmlStyle ttmlStyle, TtmlNode ttmlNode, Map<String, TtmlStyle> map, int i3) {
        TtmlNode findRubyTextNode;
        TtmlStyle resolveStyle;
        int i4;
        int i5;
        if (ttmlStyle.getStyle() != -1) {
            spannable.setSpan(new StyleSpan(ttmlStyle.getStyle()), i, i2, 33);
        }
        if (ttmlStyle.isLinethrough()) {
            spannable.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (ttmlStyle.isUnderline()) {
            spannable.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (ttmlStyle.hasFontColor()) {
            SpanUtil.addOrReplaceSpan(spannable, new ForegroundColorSpan(ttmlStyle.getFontColor()), i, i2, 33);
        }
        if (ttmlStyle.hasBackgroundColor()) {
            SpanUtil.addOrReplaceSpan(spannable, new BackgroundColorSpan(ttmlStyle.getBackgroundColor()), i, i2, 33);
        }
        if (ttmlStyle.getFontFamily() != null) {
            SpanUtil.addOrReplaceSpan(spannable, new TypefaceSpan(ttmlStyle.getFontFamily()), i, i2, 33);
        }
        if (ttmlStyle.getTextEmphasis() != null) {
            TextEmphasis textEmphasis = (TextEmphasis) Assertions.checkNotNull(ttmlStyle.getTextEmphasis());
            if (textEmphasis.markShape == -1) {
                i4 = (i3 == 2 || i3 == 1) ? 3 : 1;
                i5 = 1;
            } else {
                i4 = textEmphasis.markShape;
                i5 = textEmphasis.markFill;
            }
            SpanUtil.addOrReplaceSpan(spannable, new TextEmphasisSpan(i4, i5, textEmphasis.position == -2 ? 1 : textEmphasis.position), i, i2, 33);
        }
        int rubyType = ttmlStyle.getRubyType();
        if (rubyType == 2) {
            TtmlNode findRubyContainerNode = findRubyContainerNode(ttmlNode, map);
            if (findRubyContainerNode != null && (findRubyTextNode = findRubyTextNode(findRubyContainerNode, map)) != null) {
                if (findRubyTextNode.getChildCount() == 1 && findRubyTextNode.getChild(0).text != null) {
                    String str = (String) Util.castNonNull(findRubyTextNode.getChild(0).text);
                    TtmlStyle resolveStyle2 = resolveStyle(findRubyTextNode.style, findRubyTextNode.getStyleIds(), map);
                    int rubyPosition = resolveStyle2 != null ? resolveStyle2.getRubyPosition() : -1;
                    if (rubyPosition == -1 && (resolveStyle = resolveStyle(findRubyContainerNode.style, findRubyContainerNode.getStyleIds(), map)) != null) {
                        rubyPosition = resolveStyle.getRubyPosition();
                    }
                    spannable.setSpan(new RubySpan(str, rubyPosition), i, i2, 33);
                } else {
                    Log.i(TAG, "Skipping rubyText node without exactly one text child.");
                }
            }
        } else if (rubyType == 3 || rubyType == 4) {
            spannable.setSpan(new DeleteTextSpan(), i, i2, 33);
        }
        if (ttmlStyle.getTextCombine()) {
            SpanUtil.addOrReplaceSpan(spannable, new HorizontalTextInVerticalContextSpan(), i, i2, 33);
        }
        int fontSizeUnit = ttmlStyle.getFontSizeUnit();
        if (fontSizeUnit == 1) {
            SpanUtil.addOrReplaceSpan(spannable, new AbsoluteSizeSpan((int) ttmlStyle.getFontSize(), true), i, i2, 33);
        } else if (fontSizeUnit == 2) {
            SpanUtil.addOrReplaceSpan(spannable, new RelativeSizeSpan(ttmlStyle.getFontSize()), i, i2, 33);
        } else {
            if (fontSizeUnit != 3) {
                return;
            }
            SpanUtil.addOrReplaceSpan(spannable, new RelativeSizeSpan(ttmlStyle.getFontSize() / 100.0f), i, i2, 33);
        }
    }

    private static TtmlNode findRubyTextNode(TtmlNode ttmlNode, Map<String, TtmlStyle> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(ttmlNode);
        while (!arrayDeque.isEmpty()) {
            TtmlNode ttmlNode2 = (TtmlNode) arrayDeque.pop();
            TtmlStyle resolveStyle = resolveStyle(ttmlNode2.style, ttmlNode2.getStyleIds(), map);
            if (resolveStyle != null && resolveStyle.getRubyType() == 3) {
                return ttmlNode2;
            }
            for (int childCount = ttmlNode2.getChildCount() - 1; childCount >= 0; childCount--) {
                arrayDeque.push(ttmlNode2.getChild(childCount));
            }
        }
        return null;
    }

    private static TtmlNode findRubyContainerNode(TtmlNode ttmlNode, Map<String, TtmlStyle> map) {
        while (ttmlNode != null) {
            TtmlStyle resolveStyle = resolveStyle(ttmlNode.style, ttmlNode.getStyleIds(), map);
            if (resolveStyle != null && resolveStyle.getRubyType() == 1) {
                return ttmlNode;
            }
            ttmlNode = ttmlNode.parent;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void endParagraph(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String applyTextElementSpacePolicy(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    private TtmlRenderUtil() {
    }
}
