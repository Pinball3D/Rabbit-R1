package tech.rabbit.r1launcher.settings.network2.password;

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
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;

/* compiled from: EnterWifiPasswordFragment.kt */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010\"\u001a\u00020\u000eH\u0016J\u001a\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u001b2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006%"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;", "Landroidx/fragment/app/Fragment;", "()V", "etPassword", "Landroid/widget/EditText;", "tvState", "Landroid/widget/TextView;", "wifi", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "getWifi", "()Ltech/rabbit/r1launcher/initstep/model/Wifi;", "setWifi", "(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V", "applyEnteredPasswordStyle", "", "applyNoEnterPasswordStyle", "connectWifi", HintConstants.AUTOFILL_HINT_PASSWORD, "", "isTargetValues", "", "letterSpacing", "", "textSize", "marginTop", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onPause", "onViewCreated", "view", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class EnterWifiPasswordFragment extends Fragment {
    public static final int $stable = 8;
    private EditText etPassword;
    private TextView tvState;
    public Wifi wifi;

    public final void setWifi(Wifi wifi) {
        Intrinsics.checkNotNullParameter(wifi, "<set-?>");
        this.wifi = wifi;
    }

    public EnterWifiPasswordFragment() {
        super(R.layout.fragment_enter_wifi_password);
    }

    public final Wifi getWifi() {
        Wifi wifi = this.wifi;
        if (wifi != null) {
            return wifi;
        }
        Intrinsics.throwUninitializedPropertyAccessException("wifi");
        return null;
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
        editText2.addTextChangedListener(new TextWatcher() { // from class: tech.rabbit.r1launcher.settings.network2.password.EnterWifiPasswordFragment$onCreateView$$inlined$doAfterTextChanged$1
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
                    EnterWifiPasswordFragment.this.applyNoEnterPasswordStyle();
                } else {
                    EnterWifiPasswordFragment.this.applyEnteredPasswordStyle();
                }
            }
        });
        EditText editText3 = this.etPassword;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText3 = null;
        }
        editText3.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: tech.rabbit.r1launcher.settings.network2.password.EnterWifiPasswordFragment$$ExternalSyntheticLambda0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean onCreateView$lambda$1;
                onCreateView$lambda$1 = EnterWifiPasswordFragment.onCreateView$lambda$1(EnterWifiPasswordFragment.this, textView, i, keyEvent);
                return onCreateView$lambda$1;
            }
        });
        EditText editText4 = this.etPassword;
        if (editText4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
        } else {
            editText = editText4;
        }
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(editText, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.network2.password.EnterWifiPasswordFragment$onCreateView$3
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
                EditText editText5;
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                editText5 = EnterWifiPasswordFragment.this.etPassword;
                if (editText5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("etPassword");
                    editText5 = null;
                }
                EnterWifiPasswordFragment.this.connectWifi(editText5.getEditableText().toString());
            }
        });
        return onCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onCreateView$lambda$1(EnterWifiPasswordFragment this$0, TextView textView, int i, KeyEvent keyEvent) {
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
        textView.setText(getWifi().getSsid());
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
        editText.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.password.EnterWifiPasswordFragment$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                EnterWifiPasswordFragment.onViewCreated$lambda$4(EnterWifiPasswordFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4(EnterWifiPasswordFragment this$0) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ void onPause$hideKeyboard(EditText editText) {
        UiExtensionsKt.hideKeyboard$default(editText, 0L, 1, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        EditText editText = this.etPassword;
        final EditText editText2 = null;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
            editText = null;
        }
        EditText editText3 = this.etPassword;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("etPassword");
        } else {
            editText2 = editText3;
        }
        editText.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.password.EnterWifiPasswordFragment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                EnterWifiPasswordFragment.onPause$hideKeyboard(editText2);
            }
        });
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void connectWifi(String password) {
        FragmentActivity requireActivity = requireActivity();
        SettingsNetwork2Activity settingsNetwork2Activity = requireActivity instanceof SettingsNetwork2Activity ? (SettingsNetwork2Activity) requireActivity : null;
        if (settingsNetwork2Activity != null) {
            settingsNetwork2Activity.gotoWifiDetail(getWifi(), password);
        }
    }
}
