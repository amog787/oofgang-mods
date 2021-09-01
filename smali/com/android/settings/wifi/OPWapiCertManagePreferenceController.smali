.class public Lcom/android/settings/wifi/OPWapiCertManagePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPWapiCertManagePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wapi_cert_manage"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    const/4 p0, 0x1

    new-array v0, p0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 17
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    xor-int/2addr p0, v0

    return p0
.end method
