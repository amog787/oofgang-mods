.class public Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPRegulatoryInfoDisplayActivity.java"


# instance fields
.field private mBuildModel:Landroid/widget/TextView;

.field private mIndiaSarInfo:Landroid/view/View;

.field private mIndiaSarInfoBody:Landroid/widget/TextView;

.field private mIndiaSarInfoHead:Landroid/widget/TextView;

.field private mNorthAmericaAuthenticationInfo:Landroid/view/View;

.field private mNorthAmericaSaudiArabia:Landroid/view/View;

.field private mRegulatoryInfoCanada:Landroid/widget/TextView;

.field private mRegulatoryInfoCanadaCan:Landroid/widget/TextView;

.field private mRegulatoryInfoCanadaIC:Landroid/widget/TextView;

.field private mRegulatoryInfoSaudiArabiaId:Landroid/widget/TextView;

.field private mRegulatoryInfoUSFCCID:Landroid/widget/TextView;

.field private mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

.field private mRegulatoryInfoUSSummary:Landroid/widget/TextView;

.field private mSaudiArabiaAuthenticationInfo:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private getUSFccID()Ljava/lang/String;
    .locals 2

    .line 253
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_avicii_for_us:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget v0, Lcom/android/settings/R$string;->oneplus_avicii_us_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_kebab_for_01:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    sget v0, Lcom/android/settings/R$string;->oneplus_model_kebab_for_01_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 257
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_kebabt:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    sget v0, Lcom/android/settings/R$string;->oneplus_kebabt_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_19811_for_us:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    sget v0, Lcom/android/settings/R$string;->oneplus_19811_us_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 261
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_19821_for_us:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 262
    sget v0, Lcom/android/settings/R$string;->oneplus_19821_us_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_19867_for_vzw:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    sget v0, Lcom/android/settings/R$string;->oneplus_19867_vzw_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 265
    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1917"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 266
    sget v0, Lcom/android/settings/R$string;->oneplus_18821_us_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1915"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 268
    sget v0, Lcom/android/settings/R$string;->oneplus_18831_us_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 269
    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1905"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 270
    sget v0, Lcom/android/settings/R$string;->oneplus_18857_us_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 271
    :cond_8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1907"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 272
    sget v0, Lcom/android/settings/R$string;->oneplus_19863_tmo_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 273
    :cond_9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1905"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 274
    sget v0, Lcom/android/settings/R$string;->oneplus_18865_us_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 275
    :cond_a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1925"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 276
    sget v0, Lcom/android/settings/R$string;->oneplus_19861_tmo_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :cond_b
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 278
    sget v0, Lcom/android/settings/R$string;->oneplus_a6003_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 279
    :cond_c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6013"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 280
    sget v0, Lcom/android/settings/R$string;->oneplus_a6013_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :cond_d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 282
    sget v0, Lcom/android/settings/R$string;->oneplus_a5000_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 283
    :cond_e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 284
    sget v0, Lcom/android/settings/R$string;->oneplus_a5010_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_f
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "IN2017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 286
    sget v0, Lcom/android/settings/R$string;->oneplus_19855_tmo_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "none"

    return-object p0
.end method

.method private isShowCanadaInfo()Z
    .locals 2

    .line 137
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_avicii_for_us:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_kebab_for_01:I

    .line 138
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_19811_for_us:I

    .line 139
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_19821_for_us:I

    .line 140
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "GM1917"

    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "GM1905"

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "HD1905"

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A6003"

    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A6013"

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A5000"

    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A5010"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isShowIndiaSar()Z
    .locals 2

    .line 166
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_avicii_for_in:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_kebab_for_03:I

    .line 167
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_19811_for_in:I

    .line 168
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_19821_for_in:I

    .line 169
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "GM1911"

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "GM1901"

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "HD1901"

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "HD1911"

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A6000"

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A6010"

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isShowSaudiArabiaInfo()Z
    .locals 1

    .line 293
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "GM1913"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "GM1903"

    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "HD1913"

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "HD1903"

    .line 299
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private noDisplayRegulatory()V
    .locals 2

    .line 99
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isnoDisplaySarValueProject()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1913"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1903"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1903"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1913"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEUVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method private setCanadaIC()V
    .locals 3

    .line 225
    sget v0, Lcom/android/settings/R$string;->oneplus_regulatory_info_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_avicii_for_us:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_avicii_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 228
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_kebab_for_01:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_kebab_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 230
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19811_for_us:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_19811_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_19821_for_us:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_19821_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 234
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "GM1917"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_18821_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 236
    :cond_4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "GM1905"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_18857_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 238
    :cond_5
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HD1905"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_18865_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 240
    :cond_6
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_a6003_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6013"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_a6013_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_8
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A5000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_a5000_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_9
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A5010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->oneplus_a5010_canada_ic:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_a
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaIC:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private show7BeforeProjectRegulatoryInfo()V
    .locals 7

    .line 112
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->oneplus_a6003_hac_rating:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A5000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A5010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    sget v0, Lcom/android/settings/R$string;->oneplus_a5010_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    sget v2, Lcom/android/settings/R$string;->oneplus_a5010_in_body:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    iget-object v3, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoHead:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->oneplus_india_sar_info_head:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-virtual {p0, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoBody:Landroid/widget/TextView;

    sget v3, Lcom/android/settings/R$string;->oneplus_india_sar_info_body:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_2
    :goto_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6013"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->showSaudiArabiaInfo()V

    :cond_3
    return-void
.end method

.method private showCanadaInfo()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanada:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSFCCID:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaIC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaCan:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Lcom/android/settings/R$string;->oneplus_model_19811_for_us:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaCan:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->oneplus_regulatory_info_canada_can_cnr:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->setCanadaIC()V

    return-void
.end method

.method private showIndiaSar()V
    .locals 7

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mNorthAmericaSaudiArabia:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v2, Lcom/android/settings/R$string;->oneplus_model_avicii_for_in:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "XXX"

    if-eqz v0, :cond_0

    .line 188
    sget v0, Lcom/android/settings/R$string;->oneplus_avicii_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    sget v0, Lcom/android/settings/R$string;->oneplus_avicii_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v3, Lcom/android/settings/R$string;->oneplus_model_kebab_for_03:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget v0, Lcom/android/settings/R$string;->oneplus_kebab_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 192
    sget v0, Lcom/android/settings/R$string;->oneplus_kebab_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v3, Lcom/android/settings/R$string;->oneplus_model_19811_for_in:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    sget v0, Lcom/android/settings/R$string;->oneplus_19811_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    sget v0, Lcom/android/settings/R$string;->oneplus_19811_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 196
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v3, Lcom/android/settings/R$string;->oneplus_model_19821_for_in:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    sget v0, Lcom/android/settings/R$string;->oneplus_19821_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    sget v0, Lcom/android/settings/R$string;->oneplus_19821_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 199
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GM1911"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    sget v0, Lcom/android/settings/R$string;->oneplus_18821_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    sget v0, Lcom/android/settings/R$string;->oneplus_18821_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 202
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GM1901"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    sget v0, Lcom/android/settings/R$string;->oneplus_18857_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    sget v0, Lcom/android/settings/R$string;->oneplus_18857_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "HD1901"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    sget v0, Lcom/android/settings/R$string;->oneplus_18865_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    sget v0, Lcom/android/settings/R$string;->oneplus_18865_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "HD1911"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    sget v0, Lcom/android/settings/R$string;->oneplus_19801_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    sget v0, Lcom/android/settings/R$string;->oneplus_19801_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "ONEPLUS A6000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    sget v0, Lcom/android/settings/R$string;->oneplus_a6000_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    sget v0, Lcom/android/settings/R$string;->oneplus_a6000_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "ONEPLUS A6010"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 215
    sget v0, Lcom/android/settings/R$string;->oneplus_a6010_in_head:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    sget v0, Lcom/android/settings/R$string;->oneplus_a6010_in_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    move-object v0, v2

    .line 218
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoHead:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->oneplus_india_sar_info_head:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-virtual {p0, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoBody:Landroid/widget/TextView;

    sget v3, Lcom/android/settings/R$string;->oneplus_india_sar_info_body:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showSaudiArabiaInfo()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mNorthAmericaAuthenticationInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mSaudiArabiaAuthenticationInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1913"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    sget v0, Lcom/android/settings/R$string;->oneplus_19801_eu_saudi_arabia_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HD1903"

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    sget v0, Lcom/android/settings/R$string;->oneplus_18865_eu_saudi_arabia_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1913"

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    sget v0, Lcom/android/settings/R$string;->oneplus_18821_eu_saudi_arabia_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GM1903"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    sget v0, Lcom/android/settings/R$string;->oneplus_18857_eu_saudi_arabia_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6013"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    sget v0, Lcom/android/settings/R$string;->oneplus_a6013_eu_saudi_arabia_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "none"

    .line 324
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoSaudiArabiaId:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->noDisplayRegulatory()V

    .line 62
    sget p1, Lcom/android/settings/R$layout;->op_regulatory_info:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/BaseActivity;->setContentView(I)V

    .line 63
    sget p1, Lcom/android/settings/R$id;->oneplus_model:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mBuildModel:Landroid/widget/TextView;

    .line 64
    sget p1, Lcom/android/settings/R$id;->regulatory_info_us_fcc_id:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSFCCID:Landroid/widget/TextView;

    .line 65
    sget p1, Lcom/android/settings/R$id;->regulatory_info_canada:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanada:Landroid/widget/TextView;

    .line 66
    sget p1, Lcom/android/settings/R$id;->regulatory_info_canada_ic:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaIC:Landroid/widget/TextView;

    .line 67
    sget p1, Lcom/android/settings/R$id;->regulatory_info_canada_can:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoCanadaCan:Landroid/widget/TextView;

    .line 68
    sget p1, Lcom/android/settings/R$id;->north_america_authentication_info:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mNorthAmericaAuthenticationInfo:Landroid/view/View;

    .line 69
    sget p1, Lcom/android/settings/R$id;->north_america_saudi_arabia_authentication_info:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mNorthAmericaSaudiArabia:Landroid/view/View;

    .line 70
    sget p1, Lcom/android/settings/R$id;->india_sar_info:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfo:Landroid/view/View;

    .line 71
    sget p1, Lcom/android/settings/R$id;->india_sar_info_head:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoHead:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/android/settings/R$id;->india_sar_info_body:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mIndiaSarInfoBody:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/android/settings/R$id;->saudi_arabia_authentication_info:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mSaudiArabiaAuthenticationInfo:Landroid/view/View;

    .line 74
    sget p1, Lcom/android/settings/R$id;->regulatory_info_saudi_arabia_id:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoSaudiArabiaId:Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/android/settings/R$id;->regulatory_info_us_hac_rating:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSHacRating:Landroid/widget/TextView;

    .line 76
    sget p1, Lcom/android/settings/R$id;->regulatory_info_us_summary:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSSummary:Landroid/widget/TextView;

    .line 77
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->isShowIndiaSar()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->showIndiaSar()V

    goto :goto_0

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->isShowSaudiArabiaInfo()Z

    move-result p1

    const-string v0, " "

    if-eqz p1, :cond_2

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/settings/R$string;->oneplus_model:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mBuildModel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->showSaudiArabiaInfo()V

    goto :goto_0

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->isShowCanadaInfo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->showCanadaInfo()V

    .line 88
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/settings/R$string;->oneplus_model:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mBuildModel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/android/settings/R$string;->oneplus_regulatory_info_us_fcc_id:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->getUSFccID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->mRegulatoryInfoUSFCCID:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPRegulatoryInfoDisplayActivity;->show7BeforeProjectRegulatoryInfo()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 330
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 331
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 334
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
