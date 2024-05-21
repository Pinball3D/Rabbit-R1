package io.flutter.plugin.editing;

import io.flutter.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class TextEditingDelta {
    private static final String TAG = "TextEditingDelta";
    private int deltaEnd;
    private int deltaStart;
    private CharSequence deltaText;
    private int newComposingEnd;
    private int newComposingStart;
    private int newSelectionEnd;
    private int newSelectionStart;
    private CharSequence oldText;

    private void setDeltas(CharSequence charSequence, CharSequence charSequence2, int i, int i2) {
        this.oldText = charSequence;
        this.deltaText = charSequence2;
        this.deltaStart = i;
        this.deltaEnd = i2;
    }

    public int getDeltaEnd() {
        return this.deltaEnd;
    }

    public int getDeltaStart() {
        return this.deltaStart;
    }

    public CharSequence getDeltaText() {
        return this.deltaText;
    }

    public int getNewComposingEnd() {
        return this.newComposingEnd;
    }

    public int getNewComposingStart() {
        return this.newComposingStart;
    }

    public int getNewSelectionEnd() {
        return this.newSelectionEnd;
    }

    public int getNewSelectionStart() {
        return this.newSelectionStart;
    }

    public CharSequence getOldText() {
        return this.oldText;
    }

    public TextEditingDelta(CharSequence charSequence, int i, int i2, CharSequence charSequence2, int i3, int i4, int i5, int i6) {
        this.newSelectionStart = i3;
        this.newSelectionEnd = i4;
        this.newComposingStart = i5;
        this.newComposingEnd = i6;
        setDeltas(charSequence, charSequence2.toString(), i, i2);
    }

    public TextEditingDelta(CharSequence charSequence, int i, int i2, int i3, int i4) {
        this.newSelectionStart = i;
        this.newSelectionEnd = i2;
        this.newComposingStart = i3;
        this.newComposingEnd = i4;
        setDeltas(charSequence, "", -1, -1);
    }

    public JSONObject toJSON() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("oldText", this.oldText.toString());
            jSONObject.put("deltaText", this.deltaText.toString());
            jSONObject.put("deltaStart", this.deltaStart);
            jSONObject.put("deltaEnd", this.deltaEnd);
            jSONObject.put("selectionBase", this.newSelectionStart);
            jSONObject.put("selectionExtent", this.newSelectionEnd);
            jSONObject.put("composingBase", this.newComposingStart);
            jSONObject.put("composingExtent", this.newComposingEnd);
        } catch (JSONException e) {
            Log.e(TAG, "unable to create JSONObject: " + e);
        }
        return jSONObject;
    }
}
