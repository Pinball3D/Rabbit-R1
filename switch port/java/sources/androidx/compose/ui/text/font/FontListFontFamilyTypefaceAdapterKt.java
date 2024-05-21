package androidx.compose.ui.text.font;

import androidx.compose.ui.text.font.AsyncTypefaceCache;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aR\u0010\u0000\u001a\u0016\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00040\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\fH\u0002¨\u0006\r"}, d2 = {"firstImmediatelyAvailable", "Lkotlin/Pair;", "", "Landroidx/compose/ui/text/font/Font;", "", "typefaceRequest", "Landroidx/compose/ui/text/font/TypefaceRequest;", "asyncTypefaceCache", "Landroidx/compose/ui/text/font/AsyncTypefaceCache;", "platformFontLoader", "Landroidx/compose/ui/text/font/PlatformFontLoader;", "createDefaultTypeface", "Lkotlin/Function1;", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FontListFontFamilyTypefaceAdapterKt {
    public static final /* synthetic */ Pair access$firstImmediatelyAvailable(List list, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, PlatformFontLoader platformFontLoader, Function1 function1) {
        return firstImmediatelyAvailable(list, typefaceRequest, asyncTypefaceCache, platformFontLoader, function1);
    }

    public static final Pair<List<Font>, Object> firstImmediatelyAvailable(List<? extends Font> list, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, PlatformFontLoader platformFontLoader, Function1<? super TypefaceRequest, ? extends Object> function1) {
        Object loadBlocking;
        Object m5698constructorimpl;
        int size = list.size();
        List list2 = null;
        for (int i = 0; i < size; i++) {
            Font font = list.get(i);
            int loadingStrategy = font.getLoadingStrategy();
            if (!FontLoadingStrategy.m4497equalsimpl0(loadingStrategy, FontLoadingStrategy.INSTANCE.m4502getBlockingPKNRLFQ())) {
                if (!FontLoadingStrategy.m4497equalsimpl0(loadingStrategy, FontLoadingStrategy.INSTANCE.m4503getOptionalLocalPKNRLFQ())) {
                    if (FontLoadingStrategy.m4497equalsimpl0(loadingStrategy, FontLoadingStrategy.INSTANCE.m4501getAsyncPKNRLFQ())) {
                        AsyncTypefaceCache.AsyncTypefaceResult m4466get1ASDuI8 = asyncTypefaceCache.m4466get1ASDuI8(font, platformFontLoader);
                        if (m4466get1ASDuI8 == null) {
                            if (list2 == null) {
                                list2 = CollectionsKt.mutableListOf(font);
                            } else {
                                list2.add(font);
                            }
                        } else if (!AsyncTypefaceCache.AsyncTypefaceResult.m4472isPermanentFailureimpl(m4466get1ASDuI8.m4474unboximpl()) && m4466get1ASDuI8.m4474unboximpl() != null) {
                            return TuplesKt.to(list2, FontSynthesis_androidKt.m4529synthesizeTypefaceFxwP2eA(typefaceRequest.m4554getFontSynthesisGVVA2EU(), m4466get1ASDuI8.m4474unboximpl(), font, typefaceRequest.getFontWeight(), typefaceRequest.m4553getFontStyle_LCdwA()));
                        }
                    } else {
                        throw new IllegalStateException("Unknown font type " + font);
                    }
                } else {
                    synchronized (asyncTypefaceCache.cacheLock) {
                        AsyncTypefaceCache.Key key = new AsyncTypefaceCache.Key(font, platformFontLoader.getCacheKey());
                        AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.get(key);
                        if (asyncTypefaceResult == null) {
                            asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.get(key);
                        }
                        if (asyncTypefaceResult != null) {
                            m5698constructorimpl = asyncTypefaceResult.m4474unboximpl();
                        } else {
                            Unit unit = Unit.INSTANCE;
                            try {
                                Result.Companion companion = Result.INSTANCE;
                                m5698constructorimpl = Result.m5698constructorimpl(platformFontLoader.loadBlocking(font));
                            } catch (Throwable th) {
                                Result.Companion companion2 = Result.INSTANCE;
                                m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
                            }
                            if (Result.m5704isFailureimpl(m5698constructorimpl)) {
                                m5698constructorimpl = null;
                            }
                            AsyncTypefaceCache.put$default(asyncTypefaceCache, font, platformFontLoader, m5698constructorimpl, false, 8, null);
                        }
                    }
                    if (m5698constructorimpl != null) {
                        return TuplesKt.to(list2, FontSynthesis_androidKt.m4529synthesizeTypefaceFxwP2eA(typefaceRequest.m4554getFontSynthesisGVVA2EU(), m5698constructorimpl, font, typefaceRequest.getFontWeight(), typefaceRequest.m4553getFontStyle_LCdwA()));
                    }
                }
            } else {
                synchronized (asyncTypefaceCache.cacheLock) {
                    AsyncTypefaceCache.Key key2 = new AsyncTypefaceCache.Key(font, platformFontLoader.getCacheKey());
                    AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.get(key2);
                    if (asyncTypefaceResult2 == null) {
                        asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.get(key2);
                    }
                    if (asyncTypefaceResult2 != null) {
                        loadBlocking = asyncTypefaceResult2.m4474unboximpl();
                    } else {
                        Unit unit2 = Unit.INSTANCE;
                        try {
                            loadBlocking = platformFontLoader.loadBlocking(font);
                            AsyncTypefaceCache.put$default(asyncTypefaceCache, font, platformFontLoader, loadBlocking, false, 8, null);
                        } catch (Exception e) {
                            throw new IllegalStateException("Unable to load font " + font, e);
                        }
                    }
                }
                if (loadBlocking == null) {
                    throw new IllegalStateException("Unable to load font " + font);
                }
                return TuplesKt.to(list2, FontSynthesis_androidKt.m4529synthesizeTypefaceFxwP2eA(typefaceRequest.m4554getFontSynthesisGVVA2EU(), loadBlocking, font, typefaceRequest.getFontWeight(), typefaceRequest.m4553getFontStyle_LCdwA()));
            }
        }
        return TuplesKt.to(list2, function1.invoke(typefaceRequest));
    }
}
