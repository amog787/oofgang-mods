.class public interface abstract Lcom/android/settings/overlay/SurveyFeatureProvider;
.super Ljava/lang/Object;
.source "SurveyFeatureProvider.java"


# direct methods
.method public static unregisterReceiver(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot unregister receiver if activity is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract createAndRegisterReceiver(Landroid/app/Activity;)Landroid/content/BroadcastReceiver;
.end method

.method public abstract downloadSurvey(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getSurveyExpirationDate(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getSurveyId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract showSurveyIfAvailable(Landroid/app/Activity;Ljava/lang/String;)Z
.end method
