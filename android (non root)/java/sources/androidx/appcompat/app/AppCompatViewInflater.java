package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatRatingBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.AppCompatToggleButton;
import androidx.appcompat.widget.TintContextWrapper;
import androidx.collection.SimpleArrayMap;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class AppCompatViewInflater {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private final Object[] mConstructorArgs = new Object[2];
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {R.attr.onClick};
    private static final int[] sAccessibilityHeading = {R.attr.accessibilityHeading};
    private static final int[] sAccessibilityPaneTitle = {R.attr.accessibilityPaneTitle};
    private static final int[] sScreenReaderFocusable = {R.attr.screenReaderFocusable};
    private static final String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    private static final SimpleArrayMap<String, Constructor<? extends View>> sConstructorMap = new SimpleArrayMap<>();

    private void backportAccessibilityAttributes(Context context, View view, AttributeSet attributeSet) {
    }

    protected View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    public final View createView(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        View createRatingBar;
        Context context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = themifyContext(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = TintContextWrapper.wrap(context2);
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    c = 0;
                    break;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    c = 1;
                    break;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    c = 2;
                    break;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    c = 3;
                    break;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    c = 4;
                    break;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    c = 5;
                    break;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    c = 6;
                    break;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    c = 7;
                    break;
                }
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    c = '\b';
                    break;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    c = '\t';
                    break;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    c = '\n';
                    break;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    c = 11;
                    break;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    c = '\f';
                    break;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                createRatingBar = createRatingBar(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case 1:
                createRatingBar = createCheckedTextView(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case 2:
                createRatingBar = createMultiAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case 3:
                createRatingBar = createTextView(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case 4:
                createRatingBar = createImageButton(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case 5:
                createRatingBar = createSeekBar(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case 6:
                createRatingBar = createSpinner(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case 7:
                createRatingBar = createRadioButton(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case '\b':
                createRatingBar = createToggleButton(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case '\t':
                createRatingBar = createImageView(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case '\n':
                createRatingBar = createAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case 11:
                createRatingBar = createCheckBox(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case '\f':
                createRatingBar = createEditText(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            case '\r':
                createRatingBar = createButton(context2, attributeSet);
                verifyNotNull(createRatingBar, str);
                break;
            default:
                createRatingBar = createView(context2, str, attributeSet);
                break;
        }
        if (createRatingBar == null && context != context2) {
            createRatingBar = createViewFromTag(context2, str, attributeSet);
        }
        if (createRatingBar != null) {
            checkOnClickListener(createRatingBar, attributeSet);
            backportAccessibilityAttributes(context2, createRatingBar, attributeSet);
        }
        return createRatingBar;
    }

    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    protected AppCompatImageView createImageView(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    protected AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    protected AppCompatEditText createEditText(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    protected AppCompatSpinner createSpinner(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    protected AppCompatImageButton createImageButton(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    protected AppCompatCheckBox createCheckBox(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    protected AppCompatRadioButton createRadioButton(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    protected AppCompatCheckedTextView createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckedTextView(context, attributeSet);
    }

    protected AppCompatAutoCompleteTextView createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    protected AppCompatMultiAutoCompleteTextView createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatMultiAutoCompleteTextView(context, attributeSet);
    }

    protected AppCompatRatingBar createRatingBar(Context context, AttributeSet attributeSet) {
        return new AppCompatRatingBar(context, attributeSet);
    }

    protected AppCompatSeekBar createSeekBar(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    protected AppCompatToggleButton createToggleButton(Context context, AttributeSet attributeSet) {
        return new AppCompatToggleButton(context, attributeSet);
    }

    private void verifyNotNull(View view, String str) {
        if (view == null) {
            throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
        }
    }

    private View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.mConstructorArgs;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return createViewByPrefix(context, str, null);
            }
            int i = 0;
            while (true) {
                String[] strArr = sClassPrefixList;
                if (i >= strArr.length) {
                    return null;
                }
                View createViewByPrefix = createViewByPrefix(context, str, strArr[i]);
                if (createViewByPrefix != null) {
                    return createViewByPrefix;
                }
                i++;
            }
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr2 = this.mConstructorArgs;
            objArr2[0] = null;
            objArr2[1] = null;
        }
    }

    private void checkOnClickListener(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if ((context instanceof ContextWrapper) && ViewCompat.hasOnClickListeners(view)) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new DeclaredOnClickListener(view, string));
            }
            obtainStyledAttributes.recycle();
        }
    }

    private View createViewByPrefix(Context context, String str, String str2) throws ClassNotFoundException, InflateException {
        String str3;
        SimpleArrayMap<String, Constructor<? extends View>> simpleArrayMap = sConstructorMap;
        Constructor<? extends View> constructor = simpleArrayMap.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(sConstructorSignature);
            simpleArrayMap.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.mConstructorArgs);
    }

    private static Context themifyContext(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.View, 0, 0);
        int resourceId = z ? obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_theme, 0)) != 0) {
            Log.i(LOG_TAG, "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        obtainStyledAttributes.recycle();
        return resourceId != 0 ? ((context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).getThemeResId() == resourceId) ? context : new ContextThemeWrapper(context, resourceId) : context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DeclaredOnClickListener implements View.OnClickListener {
        private final View mHostView;
        private final String mMethodName;
        private Context mResolvedContext;
        private Method mResolvedMethod;

        public DeclaredOnClickListener(View view, String str) {
            this.mHostView = view;
            this.mMethodName = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.mResolvedMethod == null) {
                resolveMethod(this.mHostView.getContext());
            }
            try {
                this.mResolvedMethod.invoke(this.mResolvedContext, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }

        private void resolveMethod(Context context) {
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.mMethodName, View.class)) != null) {
                        this.mResolvedMethod = method;
                        this.mResolvedContext = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.mHostView.getId();
            throw new IllegalStateException("Could not find method " + this.mMethodName + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.mHostView.getClass() + (id == -1 ? "" : " with id '" + this.mHostView.getContext().getResources().getResourceEntryName(id) + "'"));
        }
    }
}
