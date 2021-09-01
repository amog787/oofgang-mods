.class public Lcom/android/settings/dashboard/ControllerTask;
.super Ljava/lang/Object;
.source "ControllerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mController:Lcom/android/settingslib/core/AbstractPreferenceController;

.field private final mMetricsCategory:I

.field private final mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/core/AbstractPreferenceController;Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settings/dashboard/ControllerTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 47
    iput-object p2, p0, Lcom/android/settings/dashboard/ControllerTask;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 48
    iput-object p3, p0, Lcom/android/settings/dashboard/ControllerTask;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 49
    iput p4, p0, Lcom/android/settings/dashboard/ControllerTask;->mMetricsCategory:I

    return-void
.end method

.method private synthetic lambda$run$0(Landroidx/preference/Preference;)V
    .locals 10

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lcom/android/settings/dashboard/ControllerTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v9, v2

    const/16 p1, 0x32

    if-le v9, p1, :cond_0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The updateState took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ms in Controller "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/dashboard/ControllerTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ControllerTask"

    .line 76
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v4, p0, Lcom/android/settings/dashboard/ControllerTask;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    const/16 v6, 0x6c0

    .line 79
    iget v7, p0, Lcom/android/settings/dashboard/ControllerTask;->mMetricsCategory:I

    iget-object p0, p0, Lcom/android/settings/dashboard/ControllerTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 79
    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method getController()Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/dashboard/ControllerTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    return-object p0
.end method

.method public synthetic lambda$run$0$ControllerTask(Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/ControllerTask;->lambda$run$0(Landroidx/preference/Preference;)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/android/settings/dashboard/ControllerTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/ControllerTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-virtual {v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "ControllerTask"

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 60
    iget-object p0, p0, Lcom/android/settings/dashboard/ControllerTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Preference key is %s in Controller %s"

    .line 60
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dashboard/ControllerTask;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_2

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 67
    iget-object p0, p0, Lcom/android/settings/dashboard/ControllerTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Cannot find preference with key %s in Controller %s"

    .line 67
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_2
    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$ControllerTask$HcqHtoXhcqVba8h-8DPiMnC5zwo;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/-$$Lambda$ControllerTask$HcqHtoXhcqVba8h-8DPiMnC5zwo;-><init>(Lcom/android/settings/dashboard/ControllerTask;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
