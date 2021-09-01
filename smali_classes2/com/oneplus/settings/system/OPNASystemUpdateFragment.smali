.class public Lcom/oneplus/settings/system/OPNASystemUpdateFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPNASystemUpdateFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 32
    sget p0, Lcom/android/settings/R$string;->help_url_system_dashboard:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPNASystemUpdateFragmen"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x57

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 17
    sget p0, Lcom/android/settings/R$xml;->op_na_system_update_fragment:I

    return p0
.end method
