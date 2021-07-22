.class Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;
.super Ljava/lang/Object;
.source "DefaultPhonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultPhonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultKeyUpdater"
.end annotation


# instance fields
.field private final mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Landroid/telecom/TelecomManager;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method


# virtual methods
.method public getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-static {p1, p2}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemDialerPackage()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultPhonePicker$DefaultKeyUpdater;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    .line 114
    invoke-static {p1, p2, p3}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
