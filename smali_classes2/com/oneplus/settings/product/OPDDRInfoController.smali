.class public Lcom/oneplus/settings/product/OPDDRInfoController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPDDRInfoController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/oneplus/settings/product/OPDDRInfoController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "oneplus_ddr_memory_capacity"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/product/OPDDRInfoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->showROMStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    iget-object p0, p0, Lcom/oneplus/settings/product/OPDDRInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
