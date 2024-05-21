package tech.rabbit.r1launcher.settings.disclaimer;

import android.graphics.PointF;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.ScrollView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwnerKt;
import com.davemorrissey.labs.subscaleview.ImageSource;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;
import tech.rabbit.r1launcher.widget.scrollbar.ScrollBarExtView;
import tech.rabbit.r1launcher.widget.scrollbar.supporter.ScrollViewSupporter;

/* compiled from: DisclaimerFragment.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u0000 .2\u00020\u00012\u00020\u0002:\u0001.B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\rH\u0002J\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000bH\u0082@¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0082@¢\u0006\u0002\u0010\u0013J\n\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0002J\b\u0010\u0015\u001a\u00020\u000fH\u0002J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0017J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010 \u001a\u00020\u001f2\u000e\u0010!\u001a\n\u0018\u00010\"j\u0004\u0018\u0001`#H\u0016J\b\u0010$\u001a\u00020\u001fH\u0016J\u0018\u0010%\u001a\u00020\u001f2\u000e\u0010!\u001a\n\u0018\u00010\"j\u0004\u0018\u0001`#H\u0016J\b\u0010&\u001a\u00020\u001fH\u0016J\b\u0010'\u001a\u00020\u001fH\u0016J\u0018\u0010(\u001a\u00020\u001f2\u000e\u0010!\u001a\n\u0018\u00010\"j\u0004\u0018\u0001`#H\u0016J\u001a\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u00172\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0010\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020\u000fH\u0002J\b\u0010-\u001a\u00020\u001fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Ltech/rabbit/r1launcher/settings/disclaimer/DisclaimerFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$OnImageEventListener;", "()V", "sbevScrollBar", "Ltech/rabbit/r1launcher/widget/scrollbar/ScrollBarExtView;", "ssivPicture", "Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;", "checkPictureUpdate", "", "downloadDisclaimerPictureUrl", "", "checkUpdateAndShow", "Lkotlinx/coroutines/Job;", "downloadAndGetNewPictureFile", "Ljava/io/File;", "disclaimerPictureUrl", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDownloadDisclaimerPictureUrl", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPictureCacheFile", "getPictureCacheFolder", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "", "onImageLoadError", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onImageLoaded", "onPreviewLoadError", "onPreviewReleased", "onReady", "onTileLoadError", "onViewCreated", "view", "setImage", "pictureFile", "showCacheIfExist", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DisclaimerFragment extends Fragment implements SubsamplingScaleImageView.OnImageEventListener {
    private static final String DISCLAIMER_FOLDER_NAME = "disclaimer";
    private static final String DISCLAIMER_PICTURE_JSON_URL = "https://r1-assets.transactional.pub/disclaimer.json";
    private ScrollBarExtView sbevScrollBar;
    private SubsamplingScaleImageView ssivPicture;
    public static final int $stable = 8;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreateView$lambda$1$lambda$0(View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
    public void onImageLoadError(Exception e) {
    }

    @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
    public void onImageLoaded() {
    }

    @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
    public void onPreviewLoadError(Exception e) {
    }

    @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
    public void onPreviewReleased() {
    }

    @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
    public void onTileLoadError(Exception e) {
    }

    public DisclaimerFragment() {
        super(R.layout.fragment_disclaimer);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        ScrollBarExtView scrollBarExtView = null;
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.cblv_title);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(findViewById, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.disclaimer.DisclaimerFragment$onCreateView$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view, Integer num, KeyEvent keyEvent) {
                invoke(view, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view, int i, KeyEvent keyEvent) {
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                DisclaimerFragment.this.requireActivity().finish();
            }
        });
        View findViewById2 = onCreateView.findViewById(R.id.ssiv_picture);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) findViewById2;
        this.ssivPicture = subsamplingScaleImageView;
        if (subsamplingScaleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ssivPicture");
            subsamplingScaleImageView = null;
        }
        subsamplingScaleImageView.setOnTouchListener(new View.OnTouchListener() { // from class: tech.rabbit.r1launcher.settings.disclaimer.DisclaimerFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean onCreateView$lambda$1$lambda$0;
                onCreateView$lambda$1$lambda$0 = DisclaimerFragment.onCreateView$lambda$1$lambda$0(view, motionEvent);
                return onCreateView$lambda$1$lambda$0;
            }
        });
        SubsamplingScaleImageView subsamplingScaleImageView2 = this.ssivPicture;
        if (subsamplingScaleImageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ssivPicture");
            subsamplingScaleImageView2 = null;
        }
        subsamplingScaleImageView2.setOnImageEventListener(this);
        View findViewById3 = onCreateView.findViewById(R.id.sbev_scroll_bar);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(...)");
        ScrollBarExtView scrollBarExtView2 = (ScrollBarExtView) findViewById3;
        this.sbevScrollBar = scrollBarExtView2;
        if (scrollBarExtView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sbevScrollBar");
        } else {
            scrollBarExtView = scrollBarExtView2;
        }
        View findViewById4 = onCreateView.findViewById(R.id.sv_container);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(...)");
        scrollBarExtView.attachSupporter(new ScrollViewSupporter((ScrollView) findViewById4));
        return onCreateView;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        showCacheIfExist();
        checkUpdateAndShow();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        ScrollBarExtView scrollBarExtView = this.sbevScrollBar;
        if (scrollBarExtView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sbevScrollBar");
            scrollBarExtView = null;
        }
        scrollBarExtView.detachSupporter();
        super.onDestroyView();
    }

    private final void showCacheIfExist() {
        Unit unit;
        File pictureCacheFile = getPictureCacheFile();
        SubsamplingScaleImageView subsamplingScaleImageView = null;
        if (pictureCacheFile != null) {
            setImage(pictureCacheFile);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            SubsamplingScaleImageView subsamplingScaleImageView2 = this.ssivPicture;
            if (subsamplingScaleImageView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("ssivPicture");
            } else {
                subsamplingScaleImageView = subsamplingScaleImageView2;
            }
            subsamplingScaleImageView.setImage(ImageSource.resource(R.raw.settings_disclaimer_2024_04_12));
        }
    }

    private final Job checkUpdateAndShow() {
        Job launch$default;
        launch$default = BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new DisclaimerFragment$checkUpdateAndShow$1(this, null), 3, null);
        return launch$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setImage(File pictureFile) {
        SubsamplingScaleImageView subsamplingScaleImageView = this.ssivPicture;
        if (subsamplingScaleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ssivPicture");
            subsamplingScaleImageView = null;
        }
        subsamplingScaleImageView.setImage(ImageSource.uri(Uri.fromFile(pictureFile)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getDownloadDisclaimerPictureUrl(Continuation<? super String> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new DisclaimerFragment$getDownloadDisclaimerPictureUrl$2(null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkPictureUpdate(String downloadDisclaimerPictureUrl) {
        if (getPictureCacheFile() == null) {
            return true;
        }
        return !Intrinsics.areEqual(URLUtil.guessFileName(downloadDisclaimerPictureUrl, null, null), r2.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getPictureCacheFolder() {
        File file = new File(requireContext().getExternalCacheDir(), DISCLAIMER_FOLDER_NAME);
        if (file.exists() && file.isDirectory()) {
            return file;
        }
        file.delete();
        file.mkdirs();
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getPictureCacheFile() {
        File[] listFiles = getPictureCacheFolder().listFiles();
        if (listFiles != null) {
            return (File) ArraysKt.firstOrNull(listFiles);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object downloadAndGetNewPictureFile(String str, Continuation<? super File> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new DisclaimerFragment$downloadAndGetNewPictureFile$2(str, this, null), continuation);
    }

    @Override // com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.OnImageEventListener
    public void onReady() {
        SubsamplingScaleImageView subsamplingScaleImageView = this.ssivPicture;
        SubsamplingScaleImageView subsamplingScaleImageView2 = null;
        if (subsamplingScaleImageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ssivPicture");
            subsamplingScaleImageView = null;
        }
        SubsamplingScaleImageView subsamplingScaleImageView3 = this.ssivPicture;
        if (subsamplingScaleImageView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ssivPicture");
            subsamplingScaleImageView3 = null;
        }
        float sWidth = subsamplingScaleImageView3.getSWidth();
        SubsamplingScaleImageView subsamplingScaleImageView4 = this.ssivPicture;
        if (subsamplingScaleImageView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ssivPicture");
            subsamplingScaleImageView4 = null;
        }
        float sHeight = sWidth / subsamplingScaleImageView4.getSHeight();
        SubsamplingScaleImageView subsamplingScaleImageView5 = this.ssivPicture;
        if (subsamplingScaleImageView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ssivPicture");
        } else {
            subsamplingScaleImageView2 = subsamplingScaleImageView5;
        }
        subsamplingScaleImageView.setScaleAndCenter(sHeight, new PointF(subsamplingScaleImageView2.getSWidth() / 2.0f, 0.0f));
    }
}
