package androidx.compose.ui.text.font;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FontMatcher.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\rJ1\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\u000fJ7\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\u0011JF\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\tH\u0080\b¢\u0006\u0002\b\u0017\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/text/font/FontMatcher;", "", "()V", "matchFont", "", "Landroidx/compose/ui/text/font/Font;", "fontFamily", "Landroidx/compose/ui/text/font/FontFamily;", "fontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "fontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "matchFont-RetOiIg", "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;", "Landroidx/compose/ui/text/font/FontListFontFamily;", "(Landroidx/compose/ui/text/font/FontListFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;", "fontList", "(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;", "filterByClosestWeight", "preferBelow", "", "minSearchRange", "maxSearchRange", "filterByClosestWeight$ui_text_release", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FontMatcher {
    public static /* synthetic */ List filterByClosestWeight$ui_text_release$default(FontMatcher fontMatcher, List list, FontWeight fontWeight, boolean z, FontWeight fontWeight2, FontWeight fontWeight3, int i, Object obj) {
        FontWeight fontWeight4 = null;
        if ((i & 4) != 0) {
            fontWeight2 = null;
        }
        if ((i & 8) != 0) {
            fontWeight3 = null;
        }
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        int size = list.size();
        int i2 = 0;
        FontWeight fontWeight5 = null;
        while (true) {
            if (i2 >= size) {
                break;
            }
            FontWeight weight = ((Font) list.get(i2)).getWeight();
            if ((fontWeight2 == null || weight.compareTo(fontWeight2) >= 0) && (fontWeight3 == null || weight.compareTo(fontWeight3) <= 0)) {
                if (weight.compareTo(fontWeight) < 0) {
                    if (fontWeight4 == null || weight.compareTo(fontWeight4) > 0) {
                        fontWeight4 = weight;
                    }
                } else {
                    if (weight.compareTo(fontWeight) <= 0) {
                        fontWeight4 = weight;
                        fontWeight5 = fontWeight4;
                        break;
                    }
                    if (fontWeight5 == null || weight.compareTo(fontWeight5) < 0) {
                        fontWeight5 = weight;
                    }
                }
            }
            i2++;
        }
        if (!z ? fontWeight5 != null : fontWeight4 == null) {
            fontWeight4 = fontWeight5;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Object obj2 = list.get(i3);
            if (Intrinsics.areEqual(((Font) obj2).getWeight(), fontWeight4)) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }

    public final List<Font> filterByClosestWeight$ui_text_release(List<? extends Font> list, FontWeight fontWeight, boolean z, FontWeight fontWeight2, FontWeight fontWeight3) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        int size = list.size();
        FontWeight fontWeight4 = null;
        FontWeight fontWeight5 = null;
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            FontWeight weight = list.get(i).getWeight();
            if ((fontWeight2 == null || weight.compareTo(fontWeight2) >= 0) && (fontWeight3 == null || weight.compareTo(fontWeight3) <= 0)) {
                if (weight.compareTo(fontWeight) < 0) {
                    if (fontWeight4 == null || weight.compareTo(fontWeight4) > 0) {
                        fontWeight4 = weight;
                    }
                } else {
                    if (weight.compareTo(fontWeight) <= 0) {
                        fontWeight4 = weight;
                        fontWeight5 = fontWeight4;
                        break;
                    }
                    if (fontWeight5 == null || weight.compareTo(fontWeight5) < 0) {
                        fontWeight5 = weight;
                    }
                }
            }
            i++;
        }
        if (!z ? fontWeight5 != null : fontWeight4 == null) {
            fontWeight4 = fontWeight5;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Font font = list.get(i2);
            if (Intrinsics.areEqual(font.getWeight(), fontWeight4)) {
                arrayList.add(font);
            }
        }
        return arrayList;
    }

    /* renamed from: matchFont-RetOiIg, reason: not valid java name */
    public final List<Font> m4504matchFontRetOiIg(FontFamily fontFamily, FontWeight fontWeight, int fontStyle) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        if (!(fontFamily instanceof FontListFontFamily)) {
            throw new IllegalArgumentException("Only FontFamily instances that presents a list of Fonts can be used");
        }
        return m4505matchFontRetOiIg((FontListFontFamily) fontFamily, fontWeight, fontStyle);
    }

    /* renamed from: matchFont-RetOiIg, reason: not valid java name */
    public final List<Font> m4505matchFontRetOiIg(FontListFontFamily fontFamily, FontWeight fontWeight, int fontStyle) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        return m4506matchFontRetOiIg(fontFamily.getFonts(), fontWeight, fontStyle);
    }

    /* renamed from: matchFont-RetOiIg, reason: not valid java name */
    public final List<Font> m4506matchFontRetOiIg(List<? extends Font> fontList, FontWeight fontWeight, int fontStyle) {
        Intrinsics.checkNotNullParameter(fontList, "fontList");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        ArrayList arrayList = new ArrayList(fontList.size());
        int size = fontList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Font font = fontList.get(i2);
            Font font2 = font;
            if (Intrinsics.areEqual(font2.getWeight(), fontWeight) && FontStyle.m4510equalsimpl0(font2.getStyle(), fontStyle)) {
                arrayList.add(font);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (!arrayList2.isEmpty()) {
            return arrayList2;
        }
        ArrayList arrayList3 = new ArrayList(fontList.size());
        int size2 = fontList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Font font3 = fontList.get(i3);
            if (FontStyle.m4510equalsimpl0(font3.getStyle(), fontStyle)) {
                arrayList3.add(font3);
            }
        }
        ArrayList arrayList4 = arrayList3;
        if (!arrayList4.isEmpty()) {
            fontList = arrayList4;
        }
        List<? extends Font> list = fontList;
        FontWeight fontWeight2 = null;
        if (fontWeight.compareTo(FontWeight.INSTANCE.getW400()) >= 0) {
            if (fontWeight.compareTo(FontWeight.INSTANCE.getW500()) <= 0) {
                FontWeight w500 = FontWeight.INSTANCE.getW500();
                int size3 = list.size();
                FontWeight fontWeight3 = null;
                FontWeight fontWeight4 = null;
                int i4 = 0;
                while (true) {
                    if (i4 >= size3) {
                        break;
                    }
                    FontWeight weight = list.get(i4).getWeight();
                    if (w500 == null || weight.compareTo(w500) <= 0) {
                        if (weight.compareTo(fontWeight) < 0) {
                            if (fontWeight3 == null || weight.compareTo(fontWeight3) > 0) {
                                fontWeight3 = weight;
                            }
                        } else {
                            if (weight.compareTo(fontWeight) <= 0) {
                                fontWeight3 = weight;
                                fontWeight4 = fontWeight3;
                                break;
                            }
                            if (fontWeight4 == null || weight.compareTo(fontWeight4) < 0) {
                                fontWeight4 = weight;
                            }
                        }
                    }
                    i4++;
                }
                if (fontWeight4 != null) {
                    fontWeight3 = fontWeight4;
                }
                ArrayList arrayList5 = new ArrayList(list.size());
                int size4 = list.size();
                for (int i5 = 0; i5 < size4; i5++) {
                    Font font4 = list.get(i5);
                    if (Intrinsics.areEqual(font4.getWeight(), fontWeight3)) {
                        arrayList5.add(font4);
                    }
                }
                ArrayList arrayList6 = arrayList5;
                if (arrayList6.isEmpty()) {
                    FontWeight w5002 = FontWeight.INSTANCE.getW500();
                    int size5 = list.size();
                    FontWeight fontWeight5 = null;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= size5) {
                            break;
                        }
                        FontWeight weight2 = list.get(i6).getWeight();
                        if (w5002 == null || weight2.compareTo(w5002) >= 0) {
                            if (weight2.compareTo(fontWeight) < 0) {
                                if (fontWeight2 == null || weight2.compareTo(fontWeight2) > 0) {
                                    fontWeight2 = weight2;
                                }
                            } else {
                                if (weight2.compareTo(fontWeight) <= 0) {
                                    fontWeight2 = weight2;
                                    fontWeight5 = fontWeight2;
                                    break;
                                }
                                if (fontWeight5 == null || weight2.compareTo(fontWeight5) < 0) {
                                    fontWeight5 = weight2;
                                }
                            }
                        }
                        i6++;
                    }
                    if (fontWeight5 != null) {
                        fontWeight2 = fontWeight5;
                    }
                    ArrayList arrayList7 = new ArrayList(list.size());
                    int size6 = list.size();
                    while (i < size6) {
                        Font font5 = list.get(i);
                        if (Intrinsics.areEqual(font5.getWeight(), fontWeight2)) {
                            arrayList7.add(font5);
                        }
                        i++;
                    }
                    arrayList6 = arrayList7;
                }
                return arrayList6;
            }
            int size7 = list.size();
            FontWeight fontWeight6 = null;
            int i7 = 0;
            while (true) {
                if (i7 >= size7) {
                    break;
                }
                FontWeight weight3 = list.get(i7).getWeight();
                if (weight3.compareTo(fontWeight) < 0) {
                    if (fontWeight2 == null || weight3.compareTo(fontWeight2) > 0) {
                        fontWeight2 = weight3;
                    }
                } else {
                    if (weight3.compareTo(fontWeight) <= 0) {
                        fontWeight2 = weight3;
                        fontWeight6 = fontWeight2;
                        break;
                    }
                    if (fontWeight6 == null || weight3.compareTo(fontWeight6) < 0) {
                        fontWeight6 = weight3;
                    }
                }
                i7++;
            }
            if (fontWeight6 != null) {
                fontWeight2 = fontWeight6;
            }
            ArrayList arrayList8 = new ArrayList(list.size());
            int size8 = list.size();
            while (i < size8) {
                Font font6 = list.get(i);
                if (Intrinsics.areEqual(font6.getWeight(), fontWeight2)) {
                    arrayList8.add(font6);
                }
                i++;
            }
            return arrayList8;
        }
        int size9 = list.size();
        FontWeight fontWeight7 = null;
        int i8 = 0;
        while (true) {
            if (i8 >= size9) {
                break;
            }
            FontWeight weight4 = list.get(i8).getWeight();
            if (weight4.compareTo(fontWeight) < 0) {
                if (fontWeight2 == null || weight4.compareTo(fontWeight2) > 0) {
                    fontWeight2 = weight4;
                }
            } else {
                if (weight4.compareTo(fontWeight) <= 0) {
                    fontWeight2 = weight4;
                    fontWeight7 = fontWeight2;
                    break;
                }
                if (fontWeight7 == null || weight4.compareTo(fontWeight7) < 0) {
                    fontWeight7 = weight4;
                }
            }
            i8++;
        }
        if (fontWeight2 == null) {
            fontWeight2 = fontWeight7;
        }
        ArrayList arrayList9 = new ArrayList(list.size());
        int size10 = list.size();
        while (i < size10) {
            Font font7 = list.get(i);
            if (Intrinsics.areEqual(font7.getWeight(), fontWeight2)) {
                arrayList9.add(font7);
            }
            i++;
        }
        return arrayList9;
    }
}
