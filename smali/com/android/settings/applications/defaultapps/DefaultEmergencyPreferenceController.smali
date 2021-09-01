.class public Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultEmergencyPreferenceController.java"


# static fields
.field public static final QUERY_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;->QUERY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "default_emergency_app"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
