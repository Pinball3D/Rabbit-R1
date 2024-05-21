package androidx.compose.ui.text.font;

import androidx.compose.ui.text.font.TypefaceResult;
import io.sentry.protocol.Device;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* compiled from: FontListFontFamilyTypefaceAdapter.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J!\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJB\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000e2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\n0\u00162\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00190\u0016H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;", "Landroidx/compose/ui/text/font/FontFamilyTypefaceAdapter;", "asyncTypefaceCache", "Landroidx/compose/ui/text/font/AsyncTypefaceCache;", "injectedContext", "Lkotlin/coroutines/CoroutineContext;", "(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/coroutines/CoroutineContext;)V", "asyncLoadScope", "Lkotlinx/coroutines/CoroutineScope;", "preload", "", Device.JsonKeys.FAMILY, "Landroidx/compose/ui/text/font/FontFamily;", "resourceLoader", "Landroidx/compose/ui/text/font/PlatformFontLoader;", "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resolve", "Landroidx/compose/ui/text/font/TypefaceResult;", "typefaceRequest", "Landroidx/compose/ui/text/font/TypefaceRequest;", "platformFontLoader", "onAsyncCompletion", "Lkotlin/Function1;", "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;", "createDefaultTypeface", "", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FontListFontFamilyTypefaceAdapter implements FontFamilyTypefaceAdapter {
    private CoroutineScope asyncLoadScope;
    private final AsyncTypefaceCache asyncTypefaceCache;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final FontMatcher fontMatcher = new FontMatcher();
    private static final CoroutineExceptionHandler DropExceptionHandler = new FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.INSTANCE);

    /* JADX WARN: Multi-variable type inference failed */
    public FontListFontFamilyTypefaceAdapter() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public FontListFontFamilyTypefaceAdapter(AsyncTypefaceCache asyncTypefaceCache, CoroutineContext injectedContext) {
        Intrinsics.checkNotNullParameter(asyncTypefaceCache, "asyncTypefaceCache");
        Intrinsics.checkNotNullParameter(injectedContext, "injectedContext");
        this.asyncTypefaceCache = asyncTypefaceCache;
        this.asyncLoadScope = CoroutineScopeKt.CoroutineScope(DropExceptionHandler.plus(injectedContext).plus(SupervisorKt.SupervisorJob((Job) injectedContext.get(Job.INSTANCE))));
    }

    public /* synthetic */ FontListFontFamilyTypefaceAdapter(AsyncTypefaceCache asyncTypefaceCache, EmptyCoroutineContext emptyCoroutineContext, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new AsyncTypefaceCache() : asyncTypefaceCache, (i & 2) != 0 ? EmptyCoroutineContext.INSTANCE : emptyCoroutineContext);
    }

    public final Object preload(FontFamily fontFamily, PlatformFontLoader platformFontLoader, Continuation<? super Unit> continuation) {
        if (!(fontFamily instanceof FontListFontFamily)) {
            return Unit.INSTANCE;
        }
        FontListFontFamily fontListFontFamily = (FontListFontFamily) fontFamily;
        List<Font> fonts = fontListFontFamily.getFonts();
        List<Font> fonts2 = fontListFontFamily.getFonts();
        ArrayList arrayList = new ArrayList(fonts2.size());
        int size = fonts2.size();
        for (int i = 0; i < size; i++) {
            Font font = fonts2.get(i);
            if (FontLoadingStrategy.m4497equalsimpl0(font.getLoadingStrategy(), FontLoadingStrategy.INSTANCE.m4501getAsyncPKNRLFQ())) {
                arrayList.add(font);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Font font2 = (Font) arrayList2.get(i2);
            arrayList3.add(TuplesKt.to(font2.getWeight(), FontStyle.m4507boximpl(font2.getStyle())));
        }
        ArrayList arrayList4 = arrayList3;
        HashSet hashSet = new HashSet(arrayList4.size());
        ArrayList arrayList5 = new ArrayList(arrayList4.size());
        int size3 = arrayList4.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Object obj = arrayList4.get(i3);
            if (hashSet.add((Pair) obj)) {
                arrayList5.add(obj);
            }
        }
        ArrayList arrayList6 = arrayList5;
        ArrayList arrayList7 = new ArrayList();
        int size4 = arrayList6.size();
        for (int i4 = 0; i4 < size4; i4++) {
            Pair pair = (Pair) arrayList6.get(i4);
            FontWeight fontWeight = (FontWeight) pair.component1();
            int m4513unboximpl = ((FontStyle) pair.component2()).m4513unboximpl();
            List list = (List) FontListFontFamilyTypefaceAdapterKt.access$firstImmediatelyAvailable(fontMatcher.m4506matchFontRetOiIg(fonts, fontWeight, m4513unboximpl), new TypefaceRequest(fontFamily, fontWeight, m4513unboximpl, FontSynthesis.INSTANCE.m4525getAllGVVA2EU(), platformFontLoader.getCacheKey(), null), this.asyncTypefaceCache, platformFontLoader, new Function1<TypefaceRequest, Unit>() { // from class: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$2$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TypefaceRequest it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TypefaceRequest typefaceRequest) {
                    invoke2(typefaceRequest);
                    return Unit.INSTANCE;
                }
            }).component1();
            if (list != null) {
                arrayList7.add(CollectionsKt.first(list));
            }
        }
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new FontListFontFamilyTypefaceAdapter$preload$3(arrayList7, this, platformFontLoader, null), continuation);
        return coroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutineScope : Unit.INSTANCE;
    }

    @Override // androidx.compose.ui.text.font.FontFamilyTypefaceAdapter
    public TypefaceResult resolve(TypefaceRequest typefaceRequest, PlatformFontLoader platformFontLoader, Function1<? super TypefaceResult.Immutable, Unit> onAsyncCompletion, Function1<? super TypefaceRequest, ? extends Object> createDefaultTypeface) {
        Intrinsics.checkNotNullParameter(typefaceRequest, "typefaceRequest");
        Intrinsics.checkNotNullParameter(platformFontLoader, "platformFontLoader");
        Intrinsics.checkNotNullParameter(onAsyncCompletion, "onAsyncCompletion");
        Intrinsics.checkNotNullParameter(createDefaultTypeface, "createDefaultTypeface");
        if (!(typefaceRequest.getFontFamily() instanceof FontListFontFamily)) {
            return null;
        }
        Pair access$firstImmediatelyAvailable = FontListFontFamilyTypefaceAdapterKt.access$firstImmediatelyAvailable(fontMatcher.m4506matchFontRetOiIg(((FontListFontFamily) typefaceRequest.getFontFamily()).getFonts(), typefaceRequest.getFontWeight(), typefaceRequest.m4553getFontStyle_LCdwA()), typefaceRequest, this.asyncTypefaceCache, platformFontLoader, createDefaultTypeface);
        List list = (List) access$firstImmediatelyAvailable.component1();
        Object component2 = access$firstImmediatelyAvailable.component2();
        if (list == null) {
            return new TypefaceResult.Immutable(component2, false, 2, null);
        }
        AsyncFontListLoader asyncFontListLoader = new AsyncFontListLoader(list, component2, typefaceRequest, this.asyncTypefaceCache, onAsyncCompletion, platformFontLoader);
        BuildersKt__Builders_commonKt.launch$default(this.asyncLoadScope, null, CoroutineStart.UNDISPATCHED, new FontListFontFamilyTypefaceAdapter$resolve$1(asyncFontListLoader, null), 1, null);
        return new TypefaceResult.Async(asyncFontListLoader);
    }

    /* compiled from: FontListFontFamilyTypefaceAdapter.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$Companion;", "", "()V", "DropExceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "getDropExceptionHandler", "()Lkotlinx/coroutines/CoroutineExceptionHandler;", "fontMatcher", "Landroidx/compose/ui/text/font/FontMatcher;", "getFontMatcher", "()Landroidx/compose/ui/text/font/FontMatcher;", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FontMatcher getFontMatcher() {
            return FontListFontFamilyTypefaceAdapter.fontMatcher;
        }

        public final CoroutineExceptionHandler getDropExceptionHandler() {
            return FontListFontFamilyTypefaceAdapter.DropExceptionHandler;
        }
    }
}
