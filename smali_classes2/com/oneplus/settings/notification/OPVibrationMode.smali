.class public Lcom/oneplus/settings/notification/OPVibrationMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPVibrationMode.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/oneplus/settings/notification/OPVibrationMode$1;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPVibrationMode$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPVibrationMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Lcom/android/settings/R$xml;->op_vibration_mode:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method
