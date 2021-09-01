.class public Lcom/android/settings/backup/BackupSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BackupSettingsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/backup/BackupSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settings/backup/BackupSettingsPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/backup/BackupSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BackupSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x332

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 58
    sget p0, Lcom/android/settings/R$xml;->backup_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
