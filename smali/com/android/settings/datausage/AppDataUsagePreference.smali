.class public Lcom/android/settings/datausage/AppDataUsagePreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "AppDataUsagePreference.java"


# instance fields
.field private mDetail:Lcom/android/settingslib/net/UidDetail;

.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V
    .locals 4

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    .line 43
    iput p3, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    .line 45
    iget-boolean p3, p2, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz p3, :cond_0

    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-gtz p3, :cond_0

    .line 46
    sget p1, Lcom/android/settings/R$string;->data_usage_app_restricted:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 48
    :cond_0
    iget-wide v0, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    iget p1, p2, Lcom/android/settingslib/AppItem;->key:I

    const/4 p3, 0x0

    invoke-virtual {p4, p1, p3}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz p1, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setAppInfo()V

    goto :goto_1

    .line 54
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p2, Lcom/android/settingslib/AppItem;->key:I

    const/16 p2, 0x97

    if-ne p1, p2, :cond_2

    .line 55
    new-instance p1, Lcom/android/settingslib/net/UidDetail;

    invoke-direct {p1}, Lcom/android/settingslib/net/UidDetail;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    .line 56
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->data_usage_video_call_title:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 57
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$drawable;->ic_video_call_icon:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setAppInfo()V

    goto :goto_1

    .line 61
    :cond_2
    new-instance p1, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;

    invoke-direct {p1, p0, p4}, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/UidDetailProvider;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setAppInfo()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/settingslib/net/UidDetailProvider;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    .line 63
    new-instance p1, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$xD2zZCrk9HJ-DejIPEhSoFp3K8o;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$xD2zZCrk9HJ-DejIPEhSoFp3K8o;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAppInfo()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItem()Lcom/android/settingslib/AppItem;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    return-object p0
.end method

.method public synthetic lambda$new$0$AppDataUsagePreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$new$1$AppDataUsagePreference(Lcom/android/settingslib/net/UidDetailProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference;->lambda$new$1(Lcom/android/settingslib/net/UidDetailProvider;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102000d

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 75
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-boolean v1, v0, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/16 v0, 0x8

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    :goto_0
    iget v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    int-to-double v1, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
