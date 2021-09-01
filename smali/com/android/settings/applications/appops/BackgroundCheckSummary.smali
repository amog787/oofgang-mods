.class public Lcom/android/settings/applications/appops/BackgroundCheckSummary;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "BackgroundCheckSummary.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x102

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->background_check_pref:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 50
    iput-object p1, p0, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    sget p3, Lcom/android/settings/R$layout;->background_check_summary:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    instance-of p2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 62
    sget p2, Lcom/android/settings/R$id;->appops_content:I

    new-instance p3, Lcom/android/settings/applications/appops/AppOpsCategory;

    sget-object v0, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    invoke-direct {p3, v0}, Lcom/android/settings/applications/appops/AppOpsCategory;-><init>(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V

    const-string v0, "appops"

    invoke-virtual {p0, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object p1
.end method
