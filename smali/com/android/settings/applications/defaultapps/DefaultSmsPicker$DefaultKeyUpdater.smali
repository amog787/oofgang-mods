.class Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;
.super Ljava/lang/Object;
.source "DefaultSmsPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultKeyUpdater"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultApplication(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    .line 101
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setDefaultApplication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-static {p2, p1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
