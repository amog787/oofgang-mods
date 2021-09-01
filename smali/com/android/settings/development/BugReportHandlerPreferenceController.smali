.class public Lcom/android/settings/development/BugReportHandlerPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BugReportHandlerPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/BugReportHandlerPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 47
    new-instance p1, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    invoke-direct {p1}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/BugReportHandlerPreferenceController;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    return-void
.end method


# virtual methods
.method getCurrentBugReportHandlerAppLabel()Ljava/lang/CharSequence;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/development/BugReportHandlerPreferenceController;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->getCurrentBugReportHandlerAppAndUser(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.android.shell"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x104010f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bug_report_handler"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/development/BugReportHandlerPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/BugReportHandlerPreferenceController;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v0, p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->isBugReportHandlerEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/development/BugReportHandlerPreferenceController;->getCurrentBugReportHandlerAppLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget p1, Lcom/android/settings/R$string;->app_list_preference_none:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
