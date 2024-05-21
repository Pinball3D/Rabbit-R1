package tech.rabbit.r1systemupdater.model;

import android.os.Parcel;
import android.os.Parcelable;
import io.sentry.protocol.Request;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class UpdateConfig implements Parcelable {
    public static final Parcelable.Creator<UpdateConfig> CREATOR = new Parcelable.Creator<UpdateConfig>() { // from class: tech.rabbit.r1systemupdater.model.UpdateConfig.1
        @Override // android.os.Parcelable.Creator
        public UpdateConfig createFromParcel(Parcel parcel) {
            return new UpdateConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public UpdateConfig[] newArray(int i) {
            return new UpdateConfig[i];
        }
    };
    private String mAuthorization;
    private String mInfo;
    private String mName;
    private PackageFile[] mPropertyFiles;
    private String mRawJson;
    private String mUrl;
    private String mVersion;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAuthorization() {
        return this.mAuthorization;
    }

    public String getInfo() {
        return this.mInfo;
    }

    public String getName() {
        return this.mName;
    }

    public PackageFile[] getPropertyFiles() {
        return this.mPropertyFiles;
    }

    public String getRawJson() {
        return this.mRawJson;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public String getVersion() {
        return this.mVersion;
    }

    public static UpdateConfig fromJson(String str) throws JSONException {
        UpdateConfig updateConfig = new UpdateConfig();
        JSONObject jSONObject = new JSONObject(str);
        updateConfig.mName = jSONObject.has("name") ? jSONObject.getString("name") : "";
        updateConfig.mVersion = jSONObject.has("version") ? jSONObject.getString("version") : "";
        updateConfig.mInfo = jSONObject.has("info") ? jSONObject.getString("info") : "";
        updateConfig.mUrl = jSONObject.getString(Request.JsonKeys.URL);
        updateConfig.mAuthorization = jSONObject.has("auth") ? jSONObject.getString("auth") : "";
        ArrayList arrayList = new ArrayList();
        if (jSONObject.has("property_files")) {
            JSONArray jSONArray = jSONObject.getJSONArray("property_files");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                arrayList.add(new PackageFile(jSONObject2.getString("filename"), jSONObject2.getLong("offset"), jSONObject2.getLong("size")));
            }
        }
        updateConfig.mPropertyFiles = (PackageFile[]) arrayList.toArray(new PackageFile[0]);
        updateConfig.mRawJson = str;
        return updateConfig;
    }

    protected UpdateConfig() {
    }

    protected UpdateConfig(Parcel parcel) {
        this.mName = parcel.readString();
        this.mVersion = parcel.readString();
        this.mInfo = parcel.readString();
        this.mUrl = parcel.readString();
        this.mAuthorization = parcel.readString();
        this.mPropertyFiles = (PackageFile[]) parcel.readSerializable();
        this.mRawJson = parcel.readString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [tech.rabbit.r1systemupdater.model.UpdateConfig$PackageFile[], java.io.Serializable] */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mName);
        parcel.writeString(this.mVersion);
        parcel.writeString(this.mInfo);
        parcel.writeString(this.mUrl);
        parcel.writeString(this.mAuthorization);
        parcel.writeSerializable(this.mPropertyFiles);
        parcel.writeString(this.mRawJson);
    }

    /* loaded from: classes3.dex */
    public static class PackageFile implements Serializable {
        private static final long serialVersionUID = 31043;
        private String mFilename;
        private long mOffset;
        private long mSize;

        public String getFilename() {
            return this.mFilename;
        }

        public long getOffset() {
            return this.mOffset;
        }

        public long getSize() {
            return this.mSize;
        }

        public PackageFile(String str, long j, long j2) {
            this.mFilename = str;
            this.mOffset = j;
            this.mSize = j2;
        }
    }
}
