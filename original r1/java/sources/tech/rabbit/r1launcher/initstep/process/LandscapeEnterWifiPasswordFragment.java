package tech.rabbit.r1launcher.initstep.process;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.autofill.HintConstants;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.InitStepActivity;
import tech.rabbit.r1launcher.initstep.OnKeyUpListener;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.initstep.utils.Constants;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;

/* compiled from: LandscapeEnterWifiPasswordFragment.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J&\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00162\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010#\u001a\u00020\u000bH\u0016J\u001a\u0010$\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u00182\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u000e\u0010&\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;", "Landroidx/fragment/app/Fragment;", "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;", "()V", "etPassword", "Landroid/widget/EditText;", "needConnectWifi", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "tvState", "Landroid/widget/TextView;", "applyEnteredPasswordStyle", "", "applyNoEnterPasswordStyle", "connectWifi", HintConstants.AUTOFILL_HINT_PASSWORD, "", "isTargetValues", "", "letterSpacing", "", "textSize", "marginTop", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onKeyUp", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onPause", "onViewCreated", "view", "setNeedConnectWifi", "wifi", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class LandscapeEnterWifiPasswordFragment extends Fragment implements OnKeyUpListener {
    public static final int $stable = 8;
    private EditText etPassword;
    private Wifi needConnectWifi;
    private TextView tvState;

    public final void setNeedConnectWifi(Wifi wifi) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        this.needConnectWifi = wifi;
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyDown(int i, KeyEvent keyEvent) {
        OnKeyUpListener.DefaultImpls.onKeyDown(this, i, keyEvent);
    }

    public LandscapeEnterWifiPasswordFragment() {
        super(R.layout.fragment_landscape_enter_wifi_password);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        EditText editText = null;
        if (onCreateView == null) {
            return null;
        }
        View findViewById = onCreateView.findViewById(R.id.tv_state);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.tvState = (TextView) findViewById;
        View findViewById2 = onCreateView.findViewById(R.id.et_password);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        this.etPassword = (EditText) findViewById2;
        applyNoEnterPasswordStyle();
        EditText editText2 = this.etPassword;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText2 = null;
        }
        editText2.addTextChangedListener(new TextWatcher() { // from class: tech.rabbit.r1launcher.initstep.process.LandscapeEnterWifiPasswordFragment$onCreateView$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence text, int start, int before, int count) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                Editable editable = s;
                if (editable == null || editable.length() == 0) {
                    LandscapeEnterWifiPasswordFragment.this.applyNoEnterPasswordStyle();
                } else {
                    LandscapeEnterWifiPasswordFragment.this.applyEnteredPasswordStyle();
                }
            }
        });
        EditText editText3 = this.etPassword;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
        } else {
            editText = editText3;
        }
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: tech.rabbit.r1launcher.initstep.process.LandscapeEnterWifiPasswordFragment$$ExternalSyntheticLambda1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean onCreateView$lambda$1;
                onCreateView$lambda$1 = LandscapeEnterWifiPasswordFragment.onCreateView$lambda$1(LandscapeEnterWifiPasswordFragment.this, textView, i, keyEvent);
                return onCreateView$lambda$1;
            }
        });
        return onCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreateView$lambda$1(LandscapeEnterWifiPasswordFragment this$0, TextView textView, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String obj = textView.getEditableText().toString();
        if (i != 6) {
            return false;
        }
        this$0.connectWifi(obj);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyNoEnterPasswordStyle() {
        if (isTargetValues(0.03f, UiExtensionsKt.getSp(24.0f), UiExtensionsKt.getDp(20))) {
            return;
        }
        EditText editText = this.etPassword;
        EditText editText2 = null;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText = null;
        }
        editText.setLetterSpacing(0.03f);
        EditText editText3 = this.etPassword;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText3 = null;
        }
        editText3.setTextSize(2, 24.0f);
        EditText editText4 = this.etPassword;
        if (editText4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
        } else {
            editText2 = editText4;
        }
        EditText editText5 = editText2;
        ViewGroup.LayoutParams layoutParams = editText5.getLayoutParams();
        if (layoutParams != null) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            LinearLayout.LayoutParams layoutParams3 = layoutParams2;
            layoutParams3.setMargins(((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin, UiExtensionsKt.getDp(20), ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin);
            editText5.setLayoutParams(layoutParams2);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyEnteredPasswordStyle() {
        if (isTargetValues(0.08f, UiExtensionsKt.getSp(30.0f), UiExtensionsKt.getDp(17))) {
            return;
        }
        EditText editText = this.etPassword;
        EditText editText2 = null;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText = null;
        }
        editText.setLetterSpacing(0.08f);
        EditText editText3 = this.etPassword;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText3 = null;
        }
        editText3.setTextSize(2, 30.0f);
        EditText editText4 = this.etPassword;
        if (editText4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
        } else {
            editText2 = editText4;
        }
        EditText editText5 = editText2;
        ViewGroup.LayoutParams layoutParams = editText5.getLayoutParams();
        if (layoutParams != null) {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            LinearLayout.LayoutParams layoutParams3 = layoutParams2;
            layoutParams3.setMargins(((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin, UiExtensionsKt.getDp(17), ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin);
            editText5.setLayoutParams(layoutParams2);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
    }

    private final boolean isTargetValues(float letterSpacing, float textSize, int marginTop) {
        EditText editText = this.etPassword;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText = null;
        }
        if (editText.getLetterSpacing() == letterSpacing) {
            EditText editText2 = this.etPassword;
            if (editText2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("etPassword");
                editText2 = null;
            }
            if (editText2.getTextSize() == textSize) {
                EditText editText3 = this.etPassword;
                if (editText3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("etPassword");
                    editText3 = null;
                }
                ViewGroup.LayoutParams layoutParams = editText3.getLayoutParams();
                LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
                if (layoutParams2 != null && layoutParams2.topMargin == marginTop) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        TextView textView = this.tvState;
        EditText editText = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvState");
            textView = null;
        }
        Wifi wifi = this.needConnectWifi;
        textView.setText(wifi != null ? wifi.getSsid() : null);
        TextView textView2 = this.tvState;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tvState");
            textView2 = null;
        }
        textView2.setSelected(true);
        EditText editText2 = this.etPassword;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
        } else {
            editText = editText2;
        }
        editText.post(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.LandscapeEnterWifiPasswordFragment$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LandscapeEnterWifiPasswordFragment.onViewCreated$lambda$4(LandscapeEnterWifiPasswordFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(LandscapeEnterWifiPasswordFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditText editText = this$0.etPassword;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText = null;
        }
        editText.getEditableText().clear();
        EditText editText2 = this$0.etPassword;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText2 = null;
        }
        UiExtensionsKt.showKeyboard$default(editText2, 0L, 1, null);
    }

    @Override // tech.rabbit.r1launcher.initstep.OnKeyUpListener
    public void onKeyUp(int keyCode, KeyEvent event) {
        if (Constants.INSTANCE.isSideButtonKeyCode(keyCode)) {
            EditText editText = this.etPassword;
            if (editText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("etPassword");
                editText = null;
            }
            connectWifi(editText.getEditableText().toString());
        }
    }

    private final void connectWifi(String password) {
        Wifi wifi = this.needConnectWifi;
        if (wifi == null) {
            return;
        }
        FragmentActivity requireActivity = requireActivity();
        InitStepActivity initStepActivity = requireActivity instanceof InitStepActivity ? (InitStepActivity) requireActivity : null;
        if (initStepActivity != null) {
            initStepActivity.connectToWifi(wifi, password);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPause$lambda$5(LandscapeEnterWifiPasswordFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditText editText = this$0.etPassword;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText = null;
        }
        UiExtensionsKt.hideKeyboard(editText, 50L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        EditText editText = this.etPassword;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText = null;
        }
        editText.post(new Runnable() { // from class: tech.rabbit.r1launcher.initstep.process.LandscapeEnterWifiPasswordFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LandscapeEnterWifiPasswordFragment.onPause$lambda$5(LandscapeEnterWifiPasswordFragment.this);
            }
        });
        super.onPause();
    }
}
