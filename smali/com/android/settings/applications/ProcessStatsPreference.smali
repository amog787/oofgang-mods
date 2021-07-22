.class public Lcom/android/settings/applications/ProcessStatsPreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "ProcessStatsPreference.java"


# instance fields
.field private mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getEntry()Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;

    return-object p0
.end method

.method public init(Lcom/android/settings/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V
    .locals 4

    .line 38
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsPreference;->mEntry:Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 39
    iget-object v0, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    .line 40
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ProcessStatsPreference"

    const-string v1, "PackageEntry contained no package name or uiLabel"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    iget-object v0, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :goto_1
    iget-wide v0, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    cmpl-double p2, v0, v2

    if-lez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    if-eqz p9, :cond_5

    if-eqz p2, :cond_4

    .line 50
    iget-wide p1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    goto :goto_4

    :cond_4
    iget-wide p1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    .line 51
    iget-wide p1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    goto :goto_3

    :cond_6
    iget-wide p1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    :goto_3
    long-to-double p1, p1

    mul-double/2addr p1, p7

    const-wide/high16 p5, 0x4090000000000000L    # 1024.0

    :goto_4
    mul-double/2addr p1, p5

    .line 52
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p5

    double-to-long p6, p1

    invoke-static {p5, p6, p7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/high16 p5, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, p5

    div-double/2addr p1, p3

    double-to-int p1, p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setProgress(I)V

    return-void
.end method
