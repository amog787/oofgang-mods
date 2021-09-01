.class public Lcom/android/settings/survey/SurveyMixin;
.super Ljava/lang/Object;
.source "SurveyMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/settings/survey/SurveyMixin;->mName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/settings/survey/SurveyMixin;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settings/survey/SurveyMixin;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/settings/survey/SurveyMixin;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {v0, v1}, Lcom/android/settings/overlay/SurveyFeatureProvider;->unregisterReceiver(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/settings/survey/SurveyMixin;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/android/settings/survey/SurveyMixin;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v2, p0, Lcom/android/settings/survey/SurveyMixin;->mName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/android/settings/overlay/SurveyFeatureProvider;->getSurveyId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-interface {v1, v0, v2}, Lcom/android/settings/overlay/SurveyFeatureProvider;->getSurveyExpirationDate(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 66
    invoke-interface {v1, v0}, Lcom/android/settings/overlay/SurveyFeatureProvider;->createAndRegisterReceiver(Landroid/app/Activity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/survey/SurveyMixin;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 p0, 0x0

    .line 67
    invoke-interface {v1, v0, v2, p0}, Lcom/android/settings/overlay/SurveyFeatureProvider;->downloadSurvey(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {v1, v0, v2}, Lcom/android/settings/overlay/SurveyFeatureProvider;->showSurveyIfAvailable(Landroid/app/Activity;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method
