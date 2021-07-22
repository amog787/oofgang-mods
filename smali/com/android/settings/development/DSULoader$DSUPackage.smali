.class Lcom/android/settings/development/DSULoader$DSUPackage;
.super Ljava/lang/Object;
.source "DSULoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DSULoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DSUPackage"
.end annotation


# instance fields
.field mCpuAbi:Ljava/lang/String;

.field mDetails:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mOsVersion:I

.field mPubKey:Ljava/lang/String;

.field mSPL:Ljava/util/Date;

.field mTosUrl:Ljava/net/URL;

.field mUri:Ljava/net/URL;

.field mVndk:[I


# direct methods
.method constructor <init>(Lcom/android/settings/development/DSULoader;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mName:Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mDetails:Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mCpuAbi:Ljava/lang/String;

    const/4 v0, -0x1

    .line 212
    iput v0, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mOsVersion:I

    .line 213
    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mVndk:[I

    const-string v0, ""

    .line 214
    iput-object v0, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mPubKey:Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    .line 216
    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mTosUrl:Ljava/net/URL;

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DSUPackage: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DSULOADER"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "name"

    .line 221
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mName:Ljava/lang/String;

    const-string p1, "details"

    .line 222
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mDetails:Ljava/lang/String;

    const-string p1, "cpu_abi"

    .line 223
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mCpuAbi:Ljava/lang/String;

    .line 224
    new-instance p1, Ljava/net/URL;

    const-string/jumbo v0, "uri"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mUri:Ljava/net/URL;

    const-string p1, "os_version"

    .line 225
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/development/DSULoader$DSUPackage;->dessertNumber(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mOsVersion:I

    :cond_0
    const-string/jumbo p1, "vndk"

    .line 228
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mVndk:[I

    const/4 v0, 0x0

    .line 231
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mVndk:[I

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "pubkey"

    .line 235
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mPubKey:Ljava/lang/String;

    :cond_2
    const-string p1, "tos"

    .line 238
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mTosUrl:Ljava/net/URL;

    :cond_3
    const-string p1, "spl"

    .line 241
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    :cond_4
    return-void
.end method


# virtual methods
.method dessertNumber(Ljava/lang/String;I)I
    .locals 1

    if-eqz p1, :cond_2

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 250
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 253
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 p0, p0, -0x51

    add-int/2addr p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method getDeviceCpu()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.product.cpu.abi"

    .line 273
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "aarch64"

    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "arm64-v8a"

    :cond_0
    return-object p0
.end method

.method getDeviceOs()I
    .locals 2

    const-string v0, "ro.system.build.version.release"

    .line 269
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DSULoader$DSUPackage;->dessertNumber(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getDeviceSPL()Ljava/util/Date;
    .locals 3

    const-string p0, "ro.build.version.security_patch"

    .line 282
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 287
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method getDeviceVndk()I
    .locals 2

    const-string v0, "ro.vndk.version"

    .line 262
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/DSULoader$DSUPackage;->dessertNumber(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method isSupported()Z
    .locals 9

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/development/DSULoader$DSUPackage;->getDeviceCpu()Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "DSULOADER"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " != "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    .line 300
    :goto_0
    iget v1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mOsVersion:I

    if-lez v1, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/development/DSULoader$DSUPackage;->getDeviceOs()I

    move-result v1

    if-gez v1, :cond_1

    const-string v0, "Failed to getDeviceOs"

    .line 303
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v4

    goto :goto_2

    .line 305
    :cond_1
    iget v5, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mOsVersion:I

    if-ge v5, v1, :cond_2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mOsVersion:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " < "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mVndk:[I

    if-eqz v1, :cond_6

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/development/DSULoader$DSUPackage;->getDeviceVndk()I

    move-result v1

    if-gez v1, :cond_3

    const-string v0, "Failed to getDeviceVndk"

    .line 313
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v4

    goto :goto_6

    :cond_3
    move v5, v4

    .line 317
    :goto_4
    iget-object v6, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mVndk:[I

    array-length v7, v6

    if-ge v5, v7, :cond_5

    .line 318
    aget v6, v6, v5

    if-ne v6, v1, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_5
    if-nez v2, :cond_6

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vndk:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 329
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    if-eqz v1, :cond_8

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/development/DSULoader$DSUPackage;->getDeviceSPL()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v0, "Failed to getDeviceSPL"

    .line 332
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 334
    :cond_7
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_8

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device SPL:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mSPL:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    move v4, v0

    .line 339
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/development/DSULoader$DSUPackage;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isSupported "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
